import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn_continue/controller/home_controller.dart';
import 'package:getx_learn_continue/view/screens/first_screen.dart';
import 'package:getx_learn_continue/view/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // final SecondController controller1 = Get.find();
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.red,
              onPressed: () {
                Get.to(() => FirstScreen());
              },
              child: const Text('First Screen'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: MaterialButton(
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.red,
              onPressed: () {
                Get.to(() => SecondScreen());
              },
              child: const Text('Second Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
