import 'package:envia_com/app/pages/home/home.page.dart';
import 'package:envia_com/app/pages/mainParent/mainParent.controller.dart';
import 'package:envia_com/app/widgets/text/subtitle.widget.dart';
import 'package:envia_com/core/app_stores/shoppingCart.store.dart';
import 'package:envia_com/core/routes/routes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:envia_com/app/widgets/loading/custom_loading.widget.dart';
import 'package:envia_com/app/widgets/appBar/custom_single_appbar.widget.dart';

class MainParentPage extends GetView<MainParentController> {
  const MainParentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          extendBodyBehindAppBar: true,
          appBar: controller.visibleAppBar.value
              ? CustomSingleAppBar(
                  title: controller.titleAppBar.value,
                  childrenFlexibleSpace: [
                    IconButton(
                      onPressed: () => {},
                      icon: const FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                    Stack(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.shopping_cart),
                          onPressed: () {
                            Get.toNamed(Routes.shoppingCart);
                          },
                        ),
                        Positioned(
                          right: 8,
                          top: 2,
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Colors.red, // Fondo rojo para el contador
                              borderRadius: BorderRadius.circular(
                                  6), // Bordes redondeados
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 14,
                              minHeight: 14,
                            ),
                            child: CustomSubtitle(
                              title:
                                  ShoppingCartStore().totalProducts.toString(),
                              size: -5,
                              color: Theme.of(context).colorScheme.background,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : null,
          body: Obx(() => controller.loading.value
              ? const CustomLoading()
              : const HomePage()),
        ),
      ),
    );
  }
}
