import 'package:flutter/material.dart';
import 'package:my_chatapp/consts/strings.dart';
import 'package:my_chatapp/screens/verification_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 70),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                          "images/logo.png",
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 55,
                    ),
                    child: Text(
                      'Let\'s chat',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          spacing: 10.0,
                          children:
                              List.generate(listOfFeatures.length, (index) {
                            return Chip(
                              backgroundColor: Colors.transparent,
                              side: const BorderSide(color: Vx.gray400),
                              labelPadding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 4),
                              label: listOfFeatures[index].text.semiBold.make(),
                            );
                          }),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Let's do \n the  Chats \n Now",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: context.screenWidth - 80,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(16),
                              shape: StadiumBorder(),
                            ),
                            onPressed: () {
                              Get.to(() => const VerificationScreen(),
                                  transition: Transition.downToUp);
                            },
                            child: Text(
                              'Start Messaging',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Designed and Developed by Hb Tech',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
