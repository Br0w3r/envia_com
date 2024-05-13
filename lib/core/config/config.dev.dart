import 'package:envia_com/data/models/entities/environment.model.dart';
import 'package:envia_com/data/services/base.config.dart';

class DevConfig implements BaseConfig {
  @override
  EnvironmentModel get apisHost => EnvironmentModel(
        apiUrl: "https://eshop-deve.herokuapp.com/api/v2/",
      );
  @override
  bool get reportErrors => true;
  @override
  bool get trackEvents => true;
  @override
  bool get useHttps => false;
}
