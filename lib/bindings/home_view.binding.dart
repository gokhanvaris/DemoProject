import 'package:fluttergetx_app/controller/api_service_controller.dart';
import 'package:fluttergetx_app/service/api_service.dart';
import 'package:get/instance_manager.dart';

class HomeViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ApiService>(ApiService());
    Get.lazyPut<ApiServiceController>(() => ApiServiceController());
  }
}
