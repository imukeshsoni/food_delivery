import 'package:food_delivery/controller/popular_product_controller.dart';
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:food_delivery/data/service/api_service.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api service
  Get.lazyPut(() => ApiService(appBaseUrl: "https://www.test.com"));

  // repos
  Get.lazyPut(() => PopularProductRepo(apiService: Get.find()));

  // controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
