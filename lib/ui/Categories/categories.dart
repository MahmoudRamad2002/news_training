import 'package:flutter/material.dart';
import 'package:news/myThemData.dart';

class CatagoryWidget extends StatelessWidget {
  const CatagoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'pick your category \n of interest',
            style: TextStyle(
              color: myThemData.graycolor,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 18, crossAxisSpacing: 18),
              itemBuilder: (_, index) => Container(
                    child: Image.asset('assets/images/health.png'),
                  ))
        ],
      ),
    );
  }
}
