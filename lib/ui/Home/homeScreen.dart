import 'package:flutter/material.dart';
import 'package:news/ui/Categories/categories.dart';
import 'package:news/ui/Home/home_drower.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      drawer: Drawer(
        child: HomeDrawer(),
      ),
      body: Column(children: [
        CatagoryWidget(),
      ]),
    );
  }
}
