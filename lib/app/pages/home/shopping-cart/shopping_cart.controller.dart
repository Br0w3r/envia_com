import 'package:envia_com/app/pages/mainParent/mainParent.controller.dart';
import 'package:envia_com/core/app_stores/shoppingCart.store.dart';
import 'package:envia_com/core/routes/routes.dart';
import 'package:envia_com/data/models/entities/products/product.model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ShoppingCartController extends GetxController
    with WidgetsBindingObserver {
  final product = <Product>[].obs;
  final loading = false.obs;
  final totalShoppingCart = 0.0.obs;
  final totalshipment = RxDouble(100);
  var quantity$ = 0.obs;

  @override
  void onInit() async {
    super.onInit();
    loading(true);

    product.value = ShoppingCartStore().shoppingCart;

    getTotalAmountCart();

    loading(false);
  }

  addShopCart(Product productModel) {
    getTotalAmountCart();

    final productIndex = ShoppingCartStore()
        .shoppingCart
        .indexWhere((product) => product.id == productModel.id);

    if (productIndex != -1) {
      if (int.parse(ShoppingCartStore().shoppingCart[productIndex].quantity!) <=
          0) {
        ShoppingCartStore()
            .shoppingCart
            .removeWhere((product) => product.id == productModel.id);
      }
    } else {
      productModel.quantity = '1';
      ShoppingCartStore().shoppingCart.add(productModel);
    }

    Get.find<MainParentController>().getTotalQuantity();
  }

  getTotalAmountCart() {
    totalShoppingCart.value = 0.0;
    quantity$.value = 0;
    totalshipment.value = 100;

    if (product.isNotEmpty) {
      for (var cart in product) {
        cart.totalCart = (double.parse(cart.quantity ?? '0') *
                double.parse(cart.price ?? '0.00'))
            .toString();

        totalShoppingCart.value =
            (totalShoppingCart.value + double.parse(cart.totalCart ?? '0.00'));

        totalshipment.value = totalShoppingCart.value + 100;

        quantity$.value =
            (quantity$.value + double.parse(cart.quantity ?? '0')).toInt();
      }
    }
  }

  cleanShopping() {
    ShoppingCartStore().shoppingCart.clear();
    ShoppingCartStore().totalProducts = RxInt(0);
    getTotalAmountCart();
    Get.offAllNamed(Routes.mainParent);
  }
}
