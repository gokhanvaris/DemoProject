import 'package:fluttergetx_app/bindings/home_view.binding.dart';
import 'package:fluttergetx_app/views/home_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: '/', page: () => HomeView(), binding: HomeViewBinding()),
];
