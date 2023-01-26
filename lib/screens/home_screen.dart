import 'package:flutter/material.dart';
import 'package:my_chatapp/widgets/appbarhomescreen.dart';
import 'package:my_chatapp/widgets/drawer.dart';
import 'package:my_chatapp/widgets/tabbarhomescreen.dart';
import 'package:my_chatapp/widgets/tabbarview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          key: scaffoldKey,
          drawer: drawer(),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {},
            child: Icon(Icons.add, color: Colors.white),
          ),
          backgroundColor: Colors.black,
          body: Column(
            children: [
              appbar(scaffoldKey),
              Expanded(
                child: Row(
                  children: [
                    tabbar(),
                    tabbarview(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
