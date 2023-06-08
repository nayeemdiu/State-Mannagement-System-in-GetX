import 'package:flutter/material.dart';
import 'package:state_management_system/home_page.dart';
import 'package:get/get.dart';
import 'package:state_management_system/languages.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: Locale('en','us') ,
      translations: Languages(),
     fallbackLocale: Locale('en','us'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
