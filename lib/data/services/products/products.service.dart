import 'package:envia_com/data/models/entities/products/product.model.dart';
import 'package:envia_com/data/models/enums/request_method.enum.dart';
import 'package:envia_com/data/services/base.service.dart';
import 'package:envia_com/data/services/products/products.contract.dart';

class ProductsApiService extends BaseService implements IProductsService {
  @override
  Future<List<Product>> getProduts() async {
    // Send Token
    var jsonTokenResponse = await provider.request<ProductModel>(
      RequestMethod.get,
      '${apiHost.apiUrl}products',
    );

    var contentResponse = productModelFromJson(jsonTokenResponse);

    return contentResponse.products!;
  }

  @override
  Future<ProductModel> getProdutsById(int productId) async {
    // Send Token
    var jsonTokenResponse = await provider.request<ProductModel>(
      RequestMethod.get,
      '${apiHost.apiUrl}products/$productId',
    );

    return productModelFromJson(jsonTokenResponse);
  }
}
