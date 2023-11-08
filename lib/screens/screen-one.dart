import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/countexample-getx.dart';

class ScreenOne extends StatefulWidget {
  final String name;
  const ScreenOne({super.key, this.name = ''});

  @override
  State<ScreenOne> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ScreenOne> {
  final controller = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome ' + Get.arguments[1]),
        ),
        body: Card(
          child: ListView.builder(
              itemCount: controller.fruitList.length,
              itemBuilder: (context, index) {
                return Obx(() => ListTile(
                      onTap: () {
                        if (controller.temFruitList
                            .contains(controller.fruitList[index].toString())) {
                          controller.removeFromFavourite(
                              controller.fruitList[index].toString());
                        } else {
                          controller.addToFavourite(
                              controller.fruitList[index].toString());
                        }
                      },
                      leading: Text(controller.fruitList[index].toString()),
                      trailing: Icon(Icons.favorite,
                          color: controller.temFruitList.contains(
                                  controller.fruitList[index].toString())
                              ? Colors.red
                              : Colors.white),
                    ));
              }),
        ));
  }
}
