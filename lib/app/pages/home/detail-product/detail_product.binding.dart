import 'package:envia_com/app/pages/home/detail-product/detail_product.controller.dart';
import 'package:get/get.dart';

class DetailProductBinding implements Bindings {
  DetailProductBinding();

  @override
  void dependencies() {
    Get.lazyPut<DetailProductController>(
      () => DetailProductController(),
    );
  }
}
