import 'package:envia_com/app/pages/home/detail-product/detail_product.controller.dart';
import 'package:envia_com/app/utils/decoration.utils.dart';
import 'package:envia_com/app/utils/snackBar.utils.dart';
import 'package:envia_com/app/widgets/button/custom_button_large.widget.dart';
import 'package:envia_com/app/widgets/loading/custom_loading.widget.dart';
import 'package:envia_com/app/widgets/text/subtitle.widget.dart';
import 'package:envia_com/app/widgets/text/title.widget.dart';
import 'package:envia_com/core/app_stores/shoppingCart.store.dart';
import 'package:envia_com/core/routes/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DetailProductPage extends GetView<DetailProductController> {
  const DetailProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        if (controller.loading.value) {
          return const CustomLoading();
        } else {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0, // Quitar sombra
              iconTheme: IconThemeData(
                  color: Theme.of(context).colorScheme.background),
              title: CustomTitle(
                title: controller.product.value.name!,
                color: Theme.of(context).colorScheme.background,
                size: -6,
              ),
              actions: [
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
                      top: 6,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 14,
                          minHeight: 14,
                        ),
                        child: CustomSubtitle(
                          title: ShoppingCartStore()
                              .totalProducts
                              .value
                              .toString(),
                          size: -5,
                          color: Theme.of(context).colorScheme.background,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: [
                      ClipPath(
                        clipper: BottomClipper(),
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  controller.product.value.imageUrl!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 16,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.background,
                            ),
                            color: Theme.of(context).primaryColorLight,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(28)),
                          ),
                          child: CustomTitle(
                            title:
                                "${controller.product.value.currency} ${controller.product.value.price}",
                            size: -6,
                            color: Theme.of(context).colorScheme.background,
                          ).marginAll(15),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CustomTitle(
                          title: "Descripción del producto",
                          size: -3,
                        ),
                        const SizedBox(height: 10),
                        CustomSubtitle(
                            title: controller.product.value.description!),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomTitle(
                              title: "Opciones",
                              size: -3,
                            ),
                            Row(
                              children: controller
                                  .product.value.options![0].values!
                                  .map((e) => CustomSubtitle(title: "$e,")
                                      .paddingOnly(left: 5))
                                  .toList(),
                            )
                          ],
                        ),
                        CustomButtonLarge(
                          text: "Agregar al carrito",
                          textDisabled: "No Disponible",
                          onPressed: () {
                            controller.addShopCart(controller.product.value);
                            SnackBarUtils.success(
                              "Producto agregado con exito",
                            );
                          },
                          enable: double.tryParse(
                                  controller.product.value.price ?? '0') !=
                              0,
                        ).paddingOnly(top: 35),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}
