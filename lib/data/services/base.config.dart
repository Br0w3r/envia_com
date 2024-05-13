import 'package:envia_com/data/models/entities/environment.model.dart';

abstract class BaseConfig {
  EnvironmentModel get apisHost;
  bool get useHttps;
  bool get trackEvents;
  bool get reportErrors;
}
