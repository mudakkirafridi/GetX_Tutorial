import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/countexample-getx.dart';
import 'package:getx_flutter/screens/screen-one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  final controller = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Tutorial'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('========GetX Utilities========'),
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    titlePadding: const EdgeInsets.all(23),
                    title: 'GetX Dialog',
                    middleText: 'Are You Sure You Want To Exit!',
                    contentPadding: const EdgeInsets.all(20),
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text('Ok')),
                    cancel: TextButton(
                        onPressed: () {}, child: const Text('Cancel')));
              },
              child: const Text('Show Dialog')),
          ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 207, 206, 206),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                        leading: const Icon(Icons.light_mode),
                        title: const Text('Light Mode'),
                      ),
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                        leading: const Icon(Icons.dark_mode),
                        title: const Text('Dark Mode'),
                      ),
                    ],
                  ),
                ));
              },
              child: const Text('BottomSheet')),
          Container(
            height: Get.height * .07,
            width: Get.width * .4,
            color: Colors.black,
            child: const Center(
              child: Text(
                'GetX Media Queries',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                // Get.to(const ScreenOne(
                //   name: 'mudakir',
                // ));
                Get.toNamed('/ScreenOne', arguments: ['mudakir', 'khan']);
              },
              child: const Text('Next Screen')),
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: const Text('English')),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('ur', 'PK'));
                  },
                  child: const Text('Urdu'))
            ],
          ),
          const Text('======GetX State Management======'),
          Obx(
            () => Text(
              controller.count.toString(),
              style: const TextStyle(fontSize: 23),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                controller.incrementCount();
              },
              child: const Text('Count +'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("khan", 'heloo khan');
        },
        child: const Text('SnBar'),
      ),
    );
  }
}
