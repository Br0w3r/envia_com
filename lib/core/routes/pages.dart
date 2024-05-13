import 'package:envia_com/app/pages/home/detail-product/detail_product.binding.dart';
import 'package:envia_com/app/pages/home/detail-product/detail_product.page.dart';
import 'package:envia_com/app/pages/home/shopping-cart/shopping_cart.binding.dart';
import 'package:envia_com/app/pages/home/shopping-cart/shopping_cart.page.dart';
import 'package:envia_com/app/pages/mainParent/mainParent.binding.dart';
import 'package:envia_com/app/pages/mainParent/mainParent.page.dart';
import 'package:envia_com/data/services/products/products.service.dart';
import 'package:get/get.dart';
import 'package:envia_com/core/routes/routes.dart';
import 'package:envia_com/app/pages/home/home.page.dart';
import 'package:envia_com/app/pages/home/home.binding.dart';
import 'package:envia_com/app/pages/splashScreen/splash.screen.page.dart';
import 'package:envia_com/app/pages/splashScreen/splash.screen.binding.dart';

abstract class Pages {
  static final productApiService = ProductsApiService();

  static final pages = [
    GetPage(
        name: Routes.splashScreen,
        page: () => const SplashScreenPage(),
        binding: SplashScreenBinding()),
    GetPage(
        name: Routes.mainParent,
        page: () => const MainParentPage(),
        binding: MainParentBinding(productApiService)),
    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomeBinding(productApiService)),
    GetPage(
        name: Routes.detailProduct,
        page: () => const DetailProductPage(),
        binding: DetailProductBinding()),
    GetPage(
        name: Routes.shoppingCart,
        page: () => const ShoppingCartPage(),
        binding: ShoppingCartBinding()),
  ];
}
