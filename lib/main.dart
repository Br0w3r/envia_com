import 'package:envia_com/app/pages/splashScreen/splash.screen.binding.dart';
import 'package:envia_com/app/pages/splashScreen/splash.screen.page.dart';
import 'package:envia_com/core/routes/pages.dart';
import 'package:envia_com/core/routes/routes.dart';
import 'package:envia_com/core/theme/app_theme.dart';
import 'package:envia_com/core/values/keys.dart';
import 'package:envia_com/data/providers/api.enviroments.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const String environment = String.fromEnvironment(Keys.environment);
  ApiEnvironment().initConfig(environment);
  await initializeDateFormatting('ES');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: appTheme,
      initialRoute: Routes.splashScreen,
      defaultTransition: Transition.cupertino,
      initialBinding: SplashScreenBinding(),
      getPages: Pages.pages,
      home: const SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
