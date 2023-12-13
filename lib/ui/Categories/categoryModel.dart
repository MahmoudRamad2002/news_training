import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
          'sports', AppLocalizations.of(context)!.sports),
      categoryModel('assets/images/icons/Politics.png',
          myThemData.darkbluucolor, 'general', ''),
      categoryModel(
          'assets/images/icons/health.png', myThemData.pinkcolor, 'health', ''),
      categoryModel('assets/images/icons/bussines.png', myThemData.browncolor,
          'bussines', ''),
      categoryModel('assets/images/icons/environment.png', myThemData.bluecolor,
          'environment', ''),
      categoryModel('assets/images/icons/science.png', myThemData.yallowcolor,
          'science', ''),
      categoryModel('assets/images/icons/sports.png', myThemData.redcolor,
          'technology', ''),
    ];
  }
}
