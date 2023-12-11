import 'package:flutter/material.dart';
import 'package:news/api/apiManger.dart';
import 'package:news/tabs/tabContainer.dart';

class catagoriesDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: apiManger.getSources(),
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
