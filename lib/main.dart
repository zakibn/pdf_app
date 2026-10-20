import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/Constant/app_routes.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PDF App',
      initialRoute: AppRoutes.pdfList,
      getPages: AppPages.routes,
    );
  }
}
