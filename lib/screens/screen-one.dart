import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  final String name;
  const ScreenOne({super.key, this.name = ''});

  @override
  State<ScreenOne> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome ' + Get.arguments[1]),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Go Back'))
        ],
      ),
    );
  }
}
