import 'package:food_delivery/data/service/api_service.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PopularProductRepo extends GetxService {
  final ApiService apiService;

  PopularProductRepo({required this.apiService});

  Future<Response> getPopularProductList() async {
    return await apiService.getData(AppConstants.popularProductURI);
  }
}
