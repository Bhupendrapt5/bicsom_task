import 'dart:async';

import 'package:bicsom_task/helper/page_tansition.dart';
import 'package:bicsom_task/home/dashboard.dart';
import 'package:bicsom_task/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    _navigateToHome(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'BICSOM',
            style: TextStyle(
              color: Colors.black,
              fontSize: 48.0,
              letterSpacing: 2,
            ),
          ),
          Loading()
        ],
      ),
    );
  }

  _navigateToHome(
    BuildContext context,
  ) async {
    Timer(
      Duration(seconds: 3),
      () async {
        Navigator.pushReplacement(
          context,
          SlideRightRoute(
            page: DashBoardScreen(),
          ),
        );
      },
    );
  }
}
