import 'package:flutter/material.dart';
import 'package:news/myThemData.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              color: myThemData.primarycolor,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Text(
                'News App!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: myThemData.whitcolor),
              )),
          Row(
            children: [
              Icon(Icons.list, size: 24, color: myThemData.blackcolor),
              SizedBox(
                width: 12,
              ),
              Text(
                'Categories',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: myThemData.blackcolor),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Icon(Icons.settings, size: 24, color: myThemData.blackcolor),
              SizedBox(
                width: 12,
              ),
              Text(
                'Settings',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: myThemData.blackcolor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
