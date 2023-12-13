import 'package:flutter/material.dart';
import 'package:news/api/SourceResponse.dart';
import 'package:news/api/apiManger.dart';
import 'package:news/tabs/tabContainer.dart';
import 'package:news/ui/Categories/categoryModel.dart';

class catagoriesDetails extends StatelessWidget {
  categoryModel CategoryMogel;

  catagoriesDetails({required this.CategoryMogel});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
        future: apiManger.getSources(CategoryMogel.categoryId ?? ''),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text('something was wrong');
          }
          if (snapshot.data?.status != 'ok') {
            return Text(snapshot.data?.message ?? '');
          }
          var sourceList = snapshot.data?.sources ?? [];
          return tabContainer(sourcesList: sourceList);
        });
  }
}
