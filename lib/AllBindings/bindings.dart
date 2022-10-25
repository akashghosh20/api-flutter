import 'package:ecommecre_test/controller/product_controller.dart';
import 'package:get/get.dart';

class AllControllerBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
