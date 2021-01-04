import 'package:bicsom_task/bloc/news_bloc.dart';
import 'package:bicsom_task/home/news_screen.dart';
import 'package:bicsom_task/model/response_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NewsBloc newsBloc;
  @override
  void initState() {
    newsBloc = NewsBloc();
    super.initState();
  }

  @override
  void dispose() {
    newsBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    newsBloc.fetchSportsNews();
    return Scaffold(
      appBar: AppBar(
        title: Text('Your News'),
      ),
      body: StreamBuilder<ResponseModel>(
        stream: newsBloc.news,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.data.statusCode != 200) {
            return Center(
              child: Text(snapshot.data.errorMsg),
            );
          }
          return NewsScreen(
            newsList: snapshot.data.articles,
          );
        },
      ),
    );
  }
}
