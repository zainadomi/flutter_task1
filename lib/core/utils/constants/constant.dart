import 'package:my_first_task/core/utils/assets/app_assets.dart';

class AppConstant {

  static final detailsData = [
    {
      'title': 'Introduction',
      'time': '15 min',
      'percent': '100%'
    },
    {
      'title': 'Astronaut',
      'time': '20 min',
      'percent': '0%'
    },
    {
      'title': 'Environment',
      'time': '30 min',
      'percent': '0%'
    },
    {
      'title': 'Environment',
      'time': '30 min',
      'percent': '0%'
    },
    {
      'title': 'Environment',
      'time': '30 min',
      'percent': '0%'
    }
  ];

  static final typeData = [
    {
      'type': 'Beginner',
      'id': 1,
      'image': AppAssets.kBeginner,
    },
    {
      'type': 'Intermediate',
      'id': 2,
      'image': AppAssets.kIntermediate,
    },
    {
      'type': 'Advanced',
      'id': 3,
      'image': AppAssets.kAdvanced,
    }
  ];

  static final courseSubject = [
    {'id':1,'courseSubject': 'Design'},
    {'id':2,'courseSubject': 'Technology'},
    {'id':3,'courseSubject': 'Marketing'},
    {'id':4,'courseSubject': 'Content writing'}
  ];

  static final courseDetails = [

    {
      'id': 1,
      'category': 'Data Science',
      'title':'Deep Nural Networks With Pytorch',
      'type':'Beginner',
      'time': '02 h 20 m',
      'image' : AppAssets.kDataScience,
    },
    {
      'id': 2,
      'category': 'Web Development',
      'title':'Front-End Development Using React',
      'type':'Beginner',
      'time': '02 h 20 m',
      'image' : AppAssets.kFrontEnd,

    },
    {
      'id': 3,
      'category': 'Data Science',
      'title':'Deep Nural Networks With Pytorch',
      'type':'Beginner',
      'time': '02 h 20 m',
      'image': AppAssets.kDataScience,

    },
    {
      'id': 4,
      'category': 'Web Development',
      'title':'Front-End Development Using React',
      'type':'Beginner',
      'time': '02 h 20 m',
      'image' : AppAssets.kFrontEnd,

    },

  ];
}