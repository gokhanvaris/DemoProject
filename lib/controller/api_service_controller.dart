import 'package:fluttergetx_app/models/api_service_model.dart';
import 'package:fluttergetx_app/service/api_service.dart';
import 'package:get/get.dart';

class ApiServiceController extends GetxController {
  ApiServiceController() {
    apiService = Get.find<ApiService>();
    getResponse();
  }

  late ApiService apiService;
  late ApiServiceModel apiServiceModel;

  RxBool isLoading = false.obs;

  void getResponse() async {
    showLoading();
    apiServiceModel = await apiService.generateDetail();
    hideLoading();
  }

  void showLoading() => isLoading.toggle();
  void hideLoading() => isLoading.toggle();
}
