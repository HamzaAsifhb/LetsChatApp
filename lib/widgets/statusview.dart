import 'package:flutter/material.dart';
import 'package:my_chatapp/main.dart';
import 'package:velocity_x/velocity_x.dart';

Widget StatusView() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          title: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: 'My Status\n',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            TextSpan(
              text: 'Tap to add status updates',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600),
            ),
          ])),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Recent Updates',
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20,
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 3),
                ),
                child: CircleAvatar(
                  backgroundColor: Vx.randomPrimaryColor,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(
                'Username',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
              subtitle: Text('Today at 11:00 AM'),
            );
          },
        )
      ],
    ),
  );
}
