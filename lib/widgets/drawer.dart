import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:my_chatapp/consts/images.dart';
import 'package:my_chatapp/consts/strings.dart';
import 'package:my_chatapp/screens/profile_screen.dart';
import 'package:velocity_x/velocity_x.dart';

Widget drawer() {
  return Drawer(
    backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(
        right: Radius.circular(25),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        children: [
          ListTile(
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 45,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Colors.black,
              size: 40,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'My Profile',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.grey,
            height: 1,
          ),
          SizedBox(
            height: 10,
          ),
          ListView(
            shrinkWrap: true,
            children: List.generate(
              drawerIconsList.length,
              (index) => ListTile(
                onTap: () {
                  switch (index) {
                    case 0:
                      Get.to(() => ProfileScreen());
                      break;
                    default:
                  }
                },
                leading: Icon(
                  drawerIconsList[index],
                  color: Colors.white,
                ),
                title: Text(
                  '${drawerListTitles[index]}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                //'${drawerListTitles[index]}'.text.white.make(),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey,
            height: 1,
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.inventory,
              color: Colors.white,
            ),
            title: Text(
              'Invite a friend',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
          Spacer(),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
