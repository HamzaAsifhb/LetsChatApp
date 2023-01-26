import 'package:flutter/material.dart';

Widget appbar(GlobalKey<ScaffoldState> key) {
  return Container(
    padding: EdgeInsets.only(right: 12),
    height: 80,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            key.currentState!.openDrawer();
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
            height: 80,
            width: 90,
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ),
        RichText(
            text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: 'What\'s Chat\n',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black)),
          TextSpan(
              text: '                     Connecting lives...',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w600)),
        ])),
        CircleAvatar(
          backgroundColor: Colors.black,
          child: Icon(
            Icons.person,
            size: 24,
          ),
          foregroundColor: Colors.white,
          radius: 28,
        ),
      ],
    ),
  );
}
