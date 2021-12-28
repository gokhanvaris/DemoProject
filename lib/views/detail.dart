import 'package:flutter/material.dart';
import 'package:fluttergetx_app/controller/api_service_controller.dart';

class HomeDetail extends StatelessWidget {
  HomeDetail({Key? key, required this.controller}) : super(key: key);
  ApiServiceController controller;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text(controller.apiServiceModel.title),
        subtitle: Text(controller.apiServiceModel.body),
      ),
    );
  }
}
