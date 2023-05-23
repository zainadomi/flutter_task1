import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_first_task/app/controllers/search_controller.dart';
import 'package:my_first_task/core/utils/constants/constant.dart';
import 'package:my_first_task/core/utils/sizes/sizes.dart';
import 'package:my_first_task/core/utils/theme/colors.dart';
import 'package:my_first_task/widgets/material_widgets/main_text.dart';
import '../../widgets/search_screen/search_field.dart';
import '../../widgets/search_screen/search_result_container.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.kPadding1 * 0.7),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kBlack,
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.kWhite,
            size: AppSizes.kIconSize1 * 0.9,
          ),
          leadingWidth: AppSizes.kIconSize1 * 1.2,
          titleSpacing: 0,
          title: Obx(
            () => SearchField(
              controller: controller.searchText,
              isVisibleClear: controller.isVisibleClear.value,
              onChanged: (value) {
                controller.changeClearVisibility(value);
                controller.filteredListIds.clear();
              },
              onTapSuffix: () {
                controller.clearText();
                controller.filteredListIds.clear();
              },
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                controller.insertToRecentlySearchList();
                controller.filterTitle();
              },
              child: Icon(
                Icons.filter_alt,
                color: AppColors.kWhite,
                size: AppSizes.kIconSize1,
              ),
            ),
            SizedBox(
              width: AppSizes.kSizesBox / 2,
            ),
          ],
        ),
        backgroundColor: AppColors.kBlack,
        body: GetBuilder<SearchController>(builder: (context) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (controller.recentSearch.isNotEmpty)...[

                  Padding(
                    padding: EdgeInsets.only(
                        top: AppSizes.kSizesBox1, bottom: AppSizes.kSizesBox1/2),
                    child: MainText(
                      text: 'Recently search',
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.w700,
                      fontSize: AppSizes.kLabel,
                    ),
                  ),

                  SizedBox(
                    height: AppSizes.kSizesBox3,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemCount: controller.recentSearch.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Chip(
                          backgroundColor: AppColors.kDarkGrey,
                          label: MainText(
                            text: controller.recentSearch[index],
                            color: AppColors.kWhite,
                          ),
                          deleteIcon: Icon(Icons.clear,size: AppSizes.kIconSize1*.8,color: AppColors.kGrey,),
                          onDeleted: (){
                            controller.removeFromRecentlySearch(index);
                          },

                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: AppSizes.kSizesBox,
                        );
                      },
                    ),
                  ),
                ],
                Padding(
                  padding: EdgeInsets.only(
                      top: AppSizes.kSizesBox1, bottom: AppSizes.kSizesBox1),
                  child: MainText(
                    text: 'Search result',
                    color: AppColors.kWhite,
                    fontWeight: FontWeight.w700,
                    fontSize: AppSizes.kLabel,
                  ),
                ),
                SizedBox(
                  child: GridView.builder(
                      itemCount: controller.filteredListIds.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: .95,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15, //vertical affect
                      ),
                      itemBuilder: (BuildContext ctx, index) {
                        Map<String, dynamic> courseDetails = controller.isFilter.value?
                        AppConstant.courseDetails.where((element) => element['id'].toString() == controller.filteredListIds[index].toString()).toList()[0]:
                        AppConstant.courseDetails[index];
                        return SearchResultContainer(
                          courseCategory: courseDetails['category'].toString(),
                          courseName: courseDetails['title'].toString(),
                          userType: courseDetails['type'].toString(),
                          time: courseDetails['time'].toString(),
                          image: courseDetails['image'].toString(),
                        );
                      }),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
