import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 60,
            child: Stack(
              children: [
                Icon(
                  Icons.person,
                  size: 120,
                  color: Colors.black,
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: TextFormField(
              style: TextStyle(fontSize: 14, color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                label: Text('Name'),
                isDense: true,
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            subtitle: Text(
              'This is not your username or pin. This name will be visible to your What\'s Chat Friends',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.white,
            ),
            title: TextFormField(
              style: TextStyle(fontSize: 14, color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                label: Text('About'),
                isDense: true,
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.call,
              color: Colors.white,
            ),
            title: TextFormField(
              style: TextStyle(fontSize: 14, color: Colors.white),
              readOnly: true,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                label: Text('Phone'),
                isDense: true,
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
