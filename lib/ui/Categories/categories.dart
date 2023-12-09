import 'package:flutter/material.dart';
import 'package:news/myThemData.dart';
import 'package:news/ui/Categories/categoryItemWidged.dart';
import 'package:news/ui/Categories/categoryModel.dart';

class CatagoryWidget extends StatelessWidget {
  List<categoryModel> catagoryList = categoryModel.getCategoryList();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'pick your category \n of interest',
            style: TextStyle(
              color: myThemData.graycolor,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 18, crossAxisSpacing: 18),
              itemBuilder: (_, index) => categoryItemWedgit(
                  categorymodel: catagoryList[index], index: index),
              itemCount: catagoryList.length,
            ),
          )
        ],
      ),
    );
  }
}
