import 'package:envia_com/data/models/entities/environment.model.dart';
import 'package:envia_com/data/providers/api.enviroments.dart';
import 'package:envia_com/data/providers/api.provider.dart';

abstract class BaseService {
  final provider = ApiProvider.instance;
  final EnvironmentModel apiHost = ApiEnvironment().config.apisHost;
  final bool useHttps = ApiEnvironment().config.useHttps;
}
