import 'package:get/get.dart';

class FilterController extends GetxController{
  int selectedType = 0;
  List<int> selectedCourseSubject = [];
  bool toggle = false;

  toggleMethod(value){
    toggle = value;
    update();
  }
  setType(id){
    selectedType = id;
    update();
  }
  setCourseSubject(id){
    if(id == null){
      return;
    }
    if(selectedCourseSubject.contains(id)){
      selectedCourseSubject.remove(id);
    }else{
      selectedCourseSubject.add(id);
    }
    update();
  }

  bool isSelectedType(id){
    if(id == selectedType){
      return true;
    }else{
      return false;
    }
  }

  bool isSelectedCourse(id){
    if(selectedCourseSubject.contains(id)){
      return true;
    }else{
      return false;
    }
  }

}