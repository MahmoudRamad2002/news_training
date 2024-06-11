import 'package:cached_network_image/cached_network_image.dart';
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
            child: CachedNetworkImage(
        imageUrl:news.urlToImage??"" ,
        height: 180,
        fit: BoxFit.fill,
        placeholder: (context, url) => Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
          ),
          Text(news.author ?? ''),
          Text(news.title ?? '',style: Theme.of(context).textTheme.titleSmall!.copyWith(color:Color(0xFF39A552)),),
          Text(news.description ?? ''),
          Text(news.publishedAt?.substring(0,10)?? '', textAlign: TextAlign.right),
        ],
      ),
    );
  }
}
