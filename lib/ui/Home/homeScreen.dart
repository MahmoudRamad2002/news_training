import 'package:flutter/material.dart';
import 'package:news/myThemData.dart';
import 'package:news/ui/Categories/catedoriesDetails.dart';
import 'package:news/ui/Categories/categories.dart';
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
            title: Text('News App'),
          ),
          drawer: Drawer(
            child: HomeDrawer(),
          ),
          body: selectedCategory == null
              ? CatagoryWidget(onCategoryModelClicked: onCategoryModelClicked)
              : catagoriesDetails()),
    );
  }

  int? selectedCategory = null;

  void onCategoryModelClicked(int index) {
    selectedCategory = index;
    setState(() {});
  }
}