import 'package:flutter/material.dart';
import 'package:news/api/newsResponse.dart';

class newsItem extends StatelessWidget {
  News news;

  newsItem({required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Image.network(news.urlToImage ?? ''),
          ),
          Text(news.author ?? ''),
          Text(news.title ?? ''),
          Text(news.publishedAt ?? '', textAlign: TextAlign.right),
        ],
      ),
    );
  }
}
