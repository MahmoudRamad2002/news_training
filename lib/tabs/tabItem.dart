import 'package:flutter/material.dart';
import 'package:news/api/SourceResponse.dart';
import 'package:news/myThemData.dart';

class tabItem extends StatelessWidget {
  bool isSelected;
  Source source;

  tabItem({required this.isSelected, required this.source});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
          color: isSelected ? myThemData.primarycolor : Colors.transparent,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: myThemData.primarycolor)),
      child: Text(source.name ?? '',
          style: TextStyle(
              color:
                  isSelected ? myThemData.whitcolor : myThemData.primarycolor,
              fontSize: 14,
              fontWeight: FontWeight.w400)),
    );
  }
}
