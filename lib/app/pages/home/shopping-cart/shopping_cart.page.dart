import 'package:envia_com/app/pages/home/shopping-cart/shopping-cart-item/shopping_cart_item.dart';
import 'package:envia_com/app/pages/home/shopping-cart/shopping_cart.controller.dart';
import 'package:envia_com/app/pages/home/shopping-cart/success/success_page.dart';
import 'package:envia_com/app/pages/mainParent/mainParent.controller.dart';
import 'package:envia_com/app/widgets/appBar/custom_single_appbar.widget.dart';
import 'package:envia_com/app/widgets/button/custom_button_large.widget.dart';
import 'package:envia_com/app/widgets/loading/custom_loading.widget.dart';
import 'package:envia_com/app/widgets/text/subtitle.widget.dart';
import 'package:envia_com/app/widgets/text/title.widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ShoppingCartPage extends GetView<ShoppingCartController> {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomSingleAppBar(
          title: "Carrito",
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.all(5.0),
          child: Obx(
            () => controller.loading.value
                ? const CustomLoading()
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomTitle(
                              title: "Total:",
                              size: -4,
                            ),
                            CustomSubtitle(
                              title:
                                  "\$ ${controller.totalShoppingCart.value.toStringAsFixed(2)}",
                              size: 3,
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTitle(
                              title: "Envío:",
                              size: -4,
                            ),
                            CustomSubtitle(
                              title: "\$ 100",
                              size: 3,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomTitle(
                              title: "Sub Total:",
                              size: -4,
                            ),
                            CustomSubtitle(
                              title:
                                  "\$ ${controller.totalshipment.value.toString()}0",
                              size: 3,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: CustomButtonLarge(
                            text: "Finalizar Compra",
                            textDisabled: "Finalizar Compra",
                            enable: controller.totalShoppingCart.value != 0,
                            onPressed: () =>
                                Get.to(SuccessPage(controller.product)),
                          ).paddingOnly(left: 10, right: 10),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
        body: Obx(
          () => controller.loading.value
              ? const CustomLoading()
              : controller.product.isNotEmpty
                  ? ListView(
                      children: controller.product
                          .map(
                            (element) => ShoppingCartItem(
                              element,
                              (amount, operation) {
                                if (operation != 0) {
                                  element.totalCart = (double.parse(
                                              element.totalCart ?? '0') +
                                          double.parse(element.price ?? '0'))
                                      .toString();
                                } else {
                                  element.totalCart = (double.parse(
                                              element.totalCart ?? '0') -
                                          double.parse(element.price ?? '0'))
                                      .toString();
                                }
                                element.quantity = amount.value.toString();
                                controller.addShopCart(element);
                                Get.find<MainParentController>()
                                    .getTotalQuantity();
                              },
                            ),
                          )
                          .toList(),
                    )
                  : const Center(
                      child: CustomSubtitle(title: "No haz agregado productos"),
                    ),
        ),
      ),
    );
  }
}
