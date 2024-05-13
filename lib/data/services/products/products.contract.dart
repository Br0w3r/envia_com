import 'package:envia_com/data/models/entities/products/product.model.dart';

abstract class IProductsService {
  Future<List<Product>> getProduts();
  Future<ProductModel> getProdutsById(int productId);
}
