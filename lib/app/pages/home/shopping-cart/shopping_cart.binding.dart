import 'package:envia_com/app/pages/home/shopping-cart/shopping_cart.controller.dart';
import 'package:get/get.dart';

class ShoppingCartBinding implements Bindings {
  ShoppingCartBinding();

  @override
  void dependencies() {
    Get.lazyPut<ShoppingCartController>(
      () => ShoppingCartController(),
    );
  }
}
