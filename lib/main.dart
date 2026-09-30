import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning App",
      initialRoute: Routes.registration,
      getPages: Routes.myPages, 
    );
  }
}