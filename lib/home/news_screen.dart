import 'package:bicsom_task/model/news_model.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  final List<NewsModel> newsList;
  const NewsScreen({
    Key key,
    this.newsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(newsList[i].title),
        );
      },
      itemCount: newsList.length,
    );
  }
}
