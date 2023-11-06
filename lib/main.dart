import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/languages.dart';
import 'package:getx_flutter/screens/home-screen.dart';
import 'package:getx_flutter/screens/screen-one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      fallbackLocale: Locale('en', 'US'),
      locale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/", page: () => const HomeScreen()),
        GetPage(name: "/ScreenOne", page: () => const ScreenOne())
      ],
    );
  }
}
