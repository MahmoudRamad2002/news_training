import 'package:flutter/material.dart';
import 'package:news/myThemData.dart';

class categoryModel {
  String categoryId;
  String imagesPath;
  String imagesTitle;
  Color backgroundColor;

  categoryModel(
      this.imagesPath, this.backgroundColor, this.categoryId, this.imagesTitle);

  static List<categoryModel> getCategoryList() {
    return [
      categoryModel('assets/images/icons/sports.png', myThemData.redcolor,
          'sports', 'sports'),
      categoryModel('assets/images/icons/Politics.png',
          myThemData.darkbluucolor, 'general', 'General'),
      categoryModel('assets/images/icons/health.png', myThemData.pinkcolor,
          'health', 'health'),
      categoryModel('assets/images/icons/bussines.png', myThemData.browncolor,
          'bussines', 'bussines'),
      categoryModel('assets/images/icons/environment.png', myThemData.bluecolor,
          'environment', 'environment'),
      categoryModel('assets/images/icons/science.png', myThemData.yallowcolor,
          'science', 'science'),
      categoryModel('assets/images/icons/sports.png', myThemData.redcolor,
          'technology', 'Technology'),
    ];
  }
}
