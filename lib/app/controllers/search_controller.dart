import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/utils/constants/constant.dart';

class SearchController extends GetxController {
  RxBool isVisibleClear = false.obs;
  RxBool isFilter = false.obs;
  TextEditingController searchText = TextEditingController();

  changeClearVisibility(String text) {
    if (text.isNotEmpty) {
      isVisibleClear.value = true;
    } else {
      isVisibleClear.value = false;
    }
  }

  clearText() {
    searchText.clear();
    isVisibleClear.value = false;
    if(isFilter.value == true) {
      isFilter.value = false;
    }

      filteredListIds.clear();///////
    update();
  }

  List<String> recentSearch = [
  ];

  insertToRecentlySearchList() {
    if (recentSearch.contains(searchText.text)) {
      recentSearch.remove(searchText.text);
    }
    if(searchText.text.trim().isNotEmpty) {
      recentSearch.insert(0,searchText.text);
    }
    update();
  }

  removeFromRecentlySearch(index) {
    recentSearch.removeAt(index);
    update();
  }

  List<int> filteredListIds = [];

  filterTitle(){
    for(Map<String, dynamic> item in AppConstant.courseDetails){
      if(item['title'].toLowerCase().contains(searchText.text.toString().toLowerCase())){
        if(!filteredListIds.contains(item['id'])) {
          filteredListIds.add(item['id']);
        }
      }


      isFilter.value = true;
      print(item['title'].toLowerCase().contains(searchText.text.toString().toLowerCase()));
      update();
    }
  }

}
