import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news/myThemData.dart';
import 'package:news/settings/settingTab.dart';
import 'package:news/ui/Categories/catedoriesDetails.dart';
import 'package:news/ui/Categories/categories.dart';
import 'package:news/ui/Categories/categoryModel.dart';
import 'package:news/ui/Home/home_drower.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: myThemData.whitcolor,
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('assets/images/pattern.png')),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.appTitle),
          ),
          drawer: Drawer(
            child: HomeDrawer(
              onDrowerItemclicked: onDrowerItemclicked,
            ),
          ),
          body: selectedItemClicked == 2
              ? SettingsScreen()
              : selectedIndex == null || selectedItemClicked == 1
                  ? CatagoryWidget(
                      onCategoryModelClicked: onCategoryModelClicked)
                  : catagoriesDetails(
                      CategoryMogel: selectedIndex!,
                    )),
    );
  }

  int selectedItemClicked = 0;

  void onDrowerItemclicked(int newSelectedItemClicked) {
    selectedItemClicked = newSelectedItemClicked;
    setState(() {});
  }

  categoryModel? selectedIndex = null;

  void onCategoryModelClicked(categoryModel CategoryModel) {
    selectedIndex = CategoryModel;
    setState(() {});
  }
}