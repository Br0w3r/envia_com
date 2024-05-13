import 'package:envia_com/core/app_stores/shoppingCart.store.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MainParentController extends GetxController with WidgetsBindingObserver {
  final loading = true.obs;
  final titleAppBar = ''.obs;
  late Widget widgetSelected = Container();
  final visibleAppBar = true.obs;

  MainParentController();

  @override
  void onInit() async {
    super.onInit();
    loading.value = true;
  }

  @override
  void onReady() async {
    super.onReady();

    visibleAppBar.value = true;
    titleAppBar.value = "Comprar";
    getTotalQuantity();

    loading.value = false;
  }

  getTotalQuantity() {
    final shoppingCart = ShoppingCartStore().shoppingCart();

    ShoppingCartStore().totalProducts = 0.obs;

    var total = ShoppingCartStore().totalProducts;

    for (var element in shoppingCart) {
      total = (total + int.parse(element.quantity!));
    }
  }
}
