import 'package:flutter/material.dart';
import 'package:fluttergetx_app/utilities/routes.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetXApp',
      initialRoute: '/',
      getPages: routes,
    );
  }
}
