import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import 'home_screen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            'Let\s Connect',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    labelText: 'Phone Number',
                    prefixText: '+92',
                    prefixIcon: Icon(
                      Icons.phone_android_rounded,
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We will send you an SMS with a confirmation code to your phone number',
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: context.screenWidth - 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(16),
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      Get.to(() => const HomeScreen(),
                          transition: Transition.downToUp);
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
