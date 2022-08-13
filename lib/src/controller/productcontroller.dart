import 'package:aqrabi2/src/model/productmodel.dart';
import 'package:aqrabi2/src/services/Apiservices.dart';
import 'package:get/get.dart';

class productController extends GetxController {
  var isloading = true.obs;
  var productlist = <ProductModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // fetchproducts();
  }

  Future<void> fetchproducts() async {
    try {
      isloading(true);
      var products = await ApiServices.fetchCategories();
      if (products!.length > 0) {
        productlist.clear();
        productlist.addAll(products);
      }
    } finally {
      isloading(false);
    }
  }
}
