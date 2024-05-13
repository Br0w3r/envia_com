import 'package:envia_com/app/pages/mainParent/mainParent.controller.dart';
import 'package:envia_com/core/app_stores/shoppingCart.store.dart';
import 'package:envia_com/data/models/entities/products/product.model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DetailProductController extends GetxController
    with WidgetsBindingObserver {
  final product = Product().obs;
  final loading = false.obs;
  final totalProducts = 0.obs;

  @override
  void onInit() async {
    super.onInit();
    loading(true);

    product.value = Product.fromJson(Get.parameters);

    totalProducts.value = ShoppingCartStore().totalProducts.value;

    loading(false);
  }

  addShopCart(Product productModel) {
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
}
