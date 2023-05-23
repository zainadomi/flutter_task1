import 'package:flutter/material.dart';
import 'package:my_first_task/core/utils/sizes/sizes.dart';
import 'package:my_first_task/core/utils/theme/colors.dart';
import 'package:my_first_task/widgets/material_widgets/main_text.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final bool isVisibleClear;
  final void Function(dynamic) onChanged;
  final VoidCallback? onTapSuffix;
  const SearchField({Key? key, required this.isVisibleClear, required this.onChanged, this.onTapSuffix, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.kContainerHeight * 1.2,
      width: AppSizes.kContainerWidth,
      decoration: BoxDecoration(
          color: AppColors.kDarkGrey,
          borderRadius: BorderRadius.circular(AppSizes.kBoarderRadius1)),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(color: AppColors.kWhite,),
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: isVisibleClear == true?TextButton(
            onPressed: onTapSuffix??(){},
            child: MainText(
              text: 'Clear',
              color: AppColors.kWhite,
              fontSize: AppSizes.kSubTitle * 0.6,
              fontWeight: FontWeight.w400,
            ),
          ):null,
          prefixIcon:Padding(
            padding:  EdgeInsets.all(AppSizes.kPadding * 0.6),
            child: Container(
                decoration: const BoxDecoration(
                    color: AppColors.kOrange, shape: BoxShape.circle),
                child:  Icon(
                  Icons.search,
                  color: AppColors.kWhite,
                  size: AppSizes.kIconSize1 * 0.9,
                ),
            ),
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(color: AppColors.kGrey,),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
