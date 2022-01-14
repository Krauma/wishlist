import 'package:get/state_manager.dart';
import 'package:wishlist/Events/Models/product.dart';
import 'package:wishlist/Services/api_service.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<Product>.empty().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}