import 'package:flutter/material.dart';
import 'package:news/api/SourceResponse.dart';
import 'package:news/tabs/tabItem.dart';

class tabContainer extends StatefulWidget {
  List<Source> sourcesList = [];

  tabContainer({required this.sourcesList});

  @override
  State<tabContainer> createState() => _tabContainerState();
}

class _tabContainerState extends State<tabContainer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: DefaultTabController(
              length: widget.sourcesList.length,
              child: TabBar(
                onTap: (index) {
                  selectedIndex = index;

                  setState(() {});
                },
                indicatorColor: Colors.transparent,
                isScrollable: true,
                tabs: widget.sourcesList
                    .map((source) => tabItem(
                        isSelected:
                            selectedIndex == widget.sourcesList.indexOf(source),
                        source: source))
                    .toList(),
              )),
        ),
      ],
    );
  }
}
