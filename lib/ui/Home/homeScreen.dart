import 'package:flutter/material.dart';
import 'package:news/myThemData.dart';
import 'package:news/ui/Categories/categories.dart';
import 'package:news/ui/Home/home_drower.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';

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
        body: CatagoryWidget(),
      ),
    );
  }
}
