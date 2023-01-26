import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:my_chatapp/screens/chat_screen.dart';

Widget chatWidget() {
  return Container(
    child: ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: () {
            Get.to(() => ChatScreen(), transition: Transition.downToUp);
          },
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Hamza Asif',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          subtitle: Text('Get back to work'),
          trailing: Text('Last Seen at 2:00 AM'),
        );
      },
    ),
  );
}
