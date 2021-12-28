import 'package:flutter/material.dart';
import 'package:fluttergetx_app/controller/api_service_controller.dart';
import 'package:fluttergetx_app/views/detail.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<ApiServiceController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetXAPP'),
        centerTitle: true,
      ),
      body: Obx(() => _controller.isLoading.isFalse
          ? HomeDetail(controller: _controller)
          : const CircularProgressIndicator()),
    );
  }
}
