import 'package:flutter/material.dart';
import 'package:news/myThemData.dart';
import 'package:news/ui/Categories/categoryModel.dart';

class categoryItemWedgit extends StatelessWidget {
  int index;
  categoryModel categorymodel;

  categoryItemWedgit({required this.categorymodel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: categorymodel.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
            bottomLeft: Radius.circular(index % 2 == 0 ? 18 : 0),
            bottomRight: Radius.circular(index % 2 == 0 ? 0 : 18),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            categorymodel.imagesPath,
            height: 100,
          ),
          Text(
            categorymodel.imagesTitle,
            style: TextStyle(
                color: myThemData.whitcolor,
                fontSize: 22,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
