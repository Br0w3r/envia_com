import 'package:envia_com/data/services/products/products.contract.dart';
import 'package:get/get.dart';
import 'package:envia_com/app/pages/home/home.controller.dart';

class HomeBinding implements Bindings {
  //Put here Services
  final IProductsService iProductsService;

  HomeBinding(this.iProductsService);

  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(iProductsService),
    );
  }
}
