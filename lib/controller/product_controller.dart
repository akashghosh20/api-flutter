import 'package:ecommecre_test/services/product_service.dart';
import 'package:get/get.dart';

import '../model/product_model.dart';

class ProductController extends GetxController {
  var loader = false.obs;
  var productList = ProductModel().obs;

  final APiServices aPiServices = APiServices();

  @override
  void onInit() {
    getDataCalling();
    super.onInit();
  }

  void getDataCalling() async {
    loader.value = true;
    var networkData = await aPiServices.getProduct();
    if (networkData != null) {
      productList.value = networkData;
      loader.value = false;
    }
  }
}
