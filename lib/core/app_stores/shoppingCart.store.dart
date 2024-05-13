import 'package:envia_com/data/models/entities/products/product.model.dart';
import 'package:get/get.dart';

class ShoppingCartStore {
  static final ShoppingCartStore _instance = ShoppingCartStore._();

  factory ShoppingCartStore() => _instance;

  ShoppingCartStore._();

  // Getter y setter of products
  final _shoppingCart = <Product>[].obs;
  RxList<Product> get shoppingCart => _shoppingCart;
  set shoppingCart(List<Product> value) => _shoppingCart.value = value;

  // Getter y setter of products
  final RxInt _totalProducts = 0.obs;
  RxInt get totalProducts => _totalProducts;
  void updateTotalProducts(int value) {
    _totalProducts.value = value;
  }

  set totalProducts(RxInt value) {
    _totalProducts.value = value.value;
  }
}
