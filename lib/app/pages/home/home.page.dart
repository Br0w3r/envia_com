import 'package:envia_com/app/pages/home/widgets/product-item/product_item.dart';
import 'package:envia_com/app/widgets/loading/custom_loading.widget.dart';
import 'package:envia_com/core/routes/routes.dart';
import 'package:envia_com/data/models/entities/products/product.model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:envia_com/app/pages/home/home.controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => controller.loading.value
            ? const CustomLoading()
            : PopScope(
                canPop: false,
                onPopInvoked: (didPop) async =>
                    await controller.onBack(context),
                child: Scaffold(
                  extendBodyBehindAppBar: true,
                  body: controller.products.isNotEmpty
                      ? GridView.builder(
                          scrollDirection: Axis.vertical,
                          physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: GetPlatform.isWindows ? 4 : 2,
                            crossAxisSpacing: 0.0,
                            mainAxisSpacing: 0.0,
                            childAspectRatio: 3 / 3.52,
                          ),
                          itemCount: controller.products.length,
                          itemBuilder: (context, index) {
                            return ProductComponent(
                              controller.products[index],
                              () => Get.toNamed(
                                Routes.detailProduct,
                                parameters: productModelToMap(
                                  controller.products[index],
                                ),
                              ),
                            );
                          },
                        )
                      : const Center(
                          child: Text(
                            'No se han encontrado resultados',
                            textAlign: TextAlign.center,
                          ),
                        ),
                ),
              ),
      ),
    );
  }
}
