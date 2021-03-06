import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;

  PopularProductController({required this.popularProductRepo});

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      // _popularProductList.addAll();
      update();
    }
  }
}
