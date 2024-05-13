import 'package:envia_com/app/pages/mainParent/mainParent.controller.dart';
import 'package:envia_com/data/services/products/products.contract.dart';
import 'package:get/get.dart';
import 'package:envia_com/app/pages/home/home.controller.dart';

class MainParentBinding implements Bindings {
  //Put here Services
  final IProductsService iProductsService;

  MainParentBinding(this.iProductsService);

  @override
  void dependencies() {
    Get.lazyPut<MainParentController>(() => MainParentController());
    Get.lazyPut<HomeController>(() => HomeController(iProductsService));
  }
}
