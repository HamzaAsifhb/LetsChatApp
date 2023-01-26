import 'package:flutter/material.dart';

Widget tabbar() {
  return Container(
    child: RotatedBox(
      quarterTurns: 3,
      child: TabBar(
        unselectedLabelColor: Colors.grey.shade500,
        labelColor: Colors.white,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        indicator: BoxDecoration(),
        tabs: [
          Tab(
            text: 'Chats',
          ),
          Tab(
            text: 'Status',
          ),
          Tab(
            text: 'Camera',
          ),
        ],
      ),
    ),
  );
}
