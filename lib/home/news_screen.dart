import 'package:bicsom_task/helper/page_tansition.dart';
import 'package:bicsom_task/model/news_model.dart';
import 'package:bicsom_task/widgets/news_card_item.dart';
import 'package:flutter/material.dart';

import 'news_web-view.dart';

class NewsScreen extends StatelessWidget {
  final List<NewsModel> newsList;
  const NewsScreen({
    Key key,
    this.newsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          itemBuilder: (context, i) {
            return GestureDetector(
              child: NewsCardWidget(model: newsList[i]),
              onTap: () => Navigator.push(
                context,
                SlideRightRoute(
                  page: NewsWebview(
                    model: newsList[i],
                  ),
                ),
              ),
            );
          },
          itemCount: newsList.length,
        ),
      ),
    );
  }
}
