import 'package:get/get.dart';
import 'package:envia_com/core/routes/routes.dart';
import 'package:flutter/animation.dart';

class SplashScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final textCargando = "CARGANDO ...".obs;
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    animation = TweenSequence<double>([
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.7, end: 0.5),
        weight: 1,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.5, end: 0.7),
        weight: 1,
      ),
    ]).animate(animationController);
    _loadingSplash();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  _loadingSplash() async {
    await animationController.forward().whenComplete(() {
      Get.offAllNamed(Routes.mainParent);
    });
  }
}
