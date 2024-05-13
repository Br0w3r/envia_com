import 'dart:async';
import 'package:envia_com/app/utils/msg.utils.dart';
import 'package:envia_com/core/common/extensors.dart';
import 'package:envia_com/data/models/entities/products/product.model.dart';
import 'package:envia_com/data/services/products/products.contract.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController with WidgetsBindingObserver {
  late IProductsService iProductsService;

  final products = <Product>[].obs;
  final loading = false.obs;
  final consumerToday = DateTime.now().formatDate().obs;
  final initialIndex = 0.obs;
  final isMsisdn = false.obs;

  HomeController(
    IProductsService productsService,
  ) {
    iProductsService = productsService;
  }

  @override
  void onInit() async {
    super.onInit();
    loading(true);

    products.value = await iProductsService.getProduts();

    loading(false);
  }

  Future<bool> onBack(BuildContext context) async {
    return await MsgUtils.exit(context,
        message: "¿Estás seguro que deseas abandonar la aplicación?",
        onConfirm: () {
      Get.back();
    });
  }
}
