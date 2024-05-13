import 'package:envia_com/core/config/config.dart';
import 'package:envia_com/core/config/config.dev.dart';
import 'package:envia_com/core/config/config.prod.dart';
import 'package:envia_com/core/values/keys.dart';
import 'package:envia_com/data/services/base.config.dart';

class ApiEnvironment {
  factory ApiEnvironment() {
    return _singleton;
  }

  ApiEnvironment._internal();

  static final ApiEnvironment _singleton = ApiEnvironment._internal();
  BaseConfig config = Config();

  initConfig(String environment) {
    config = _getConfig(environment);
  }

  BaseConfig _getConfig(String environment) {
    switch (environment) {
      case Keys.prod:
        return ProdConfig();
      case Keys.dev:
        return DevConfig();
      default:
        return Config();
    }
  }
}
