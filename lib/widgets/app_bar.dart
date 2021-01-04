import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipOval(
            child: Material(
              color: Colors.teal,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.person_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.filter_list_alt,
                size: 30,
              ),
              Icon(
                Icons.notifications_on_rounded,
                size: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
