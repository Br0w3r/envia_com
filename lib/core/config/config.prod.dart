import 'package:envia_com/data/models/entities/environment.model.dart';
import 'package:envia_com/data/services/base.config.dart';

class ProdConfig implements BaseConfig {
  @override
  EnvironmentModel get apisHost => EnvironmentModel(
        apiUrl: "https://eshop-deve.herokuapp.com/api/v2/",
      );
  @override
  bool get reportErrors => false;
  @override
  bool get trackEvents => false;
  @override
  bool get useHttps => true;
}
