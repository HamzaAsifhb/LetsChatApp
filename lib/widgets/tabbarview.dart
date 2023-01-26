import 'package:flutter/material.dart';
import 'package:my_chatapp/widgets/chatview.dart';
import 'package:my_chatapp/widgets/statusview.dart';

Widget tabbarview() {
  return Expanded(
    child: Container(
      margin: EdgeInsets.only(
        bottom: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
        ),
      ),
      child: TabBarView(children: [
        Container(
          child: chatWidget(),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Container(
          child: StatusView(),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
      ]),
    ),
  );
}
