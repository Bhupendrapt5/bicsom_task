import 'package:bicsom_task/helper/my_textStyle.dart';
import 'package:bicsom_task/helper/utility.dart';
import 'package:bicsom_task/model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class NewsCardWidget extends StatelessWidget {
  final NewsModel model;

  NewsCardWidget({
    Key key,
    @required this.model,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(3),
            bottomRight: Radius.circular(3),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 53, 156, 0.22),
              offset: Offset(0, 0),
              blurRadius: 4.0,
            ),
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Container(
              height: Utility().getSize(context).height * 0.25,
              child: Stack(
                children: [
                  FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: model.urlToImage,
                    width: double.infinity,
                    height: Utility().getSize(context).height * 0.25,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: MyTextStyle(
                    context: context,
                    weight: FontWeight.w600,
                    size: 18,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.visibility,
                            size: 20,
                            color: Colors.grey.shade600,
                          ),
                          Text(
                            '9.4M',
                            style: MyTextStyle(
                              context: context,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 10,
                            color: Colors.black,
                          ),
                          Text(
                            '#Sports',
                            style: MyTextStyle(
                              context: context,
                              weight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      Utility.getTimeOfProgram(model.publishedAt) + ' ago',
                      style: MyTextStyle(
                        context: context,
                        color: Colors.grey.shade600,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
