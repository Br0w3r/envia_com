import 'package:envia_com/app/widgets/text/subtitle.widget.dart';
import 'package:envia_com/app/widgets/text/title.widget.dart';
import 'package:envia_com/core/values/globals.dart';
import 'package:envia_com/data/models/entities/products/product.model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ShoppingCartItem extends StatelessWidget {
  var cantidad = RxInt(0);

  final Product productModel;
  final Function(RxInt cantidad, int operation) onValueChange;

  ShoppingCartItem(this.productModel, this.onValueChange, {Key? key})
      : super(key: key) {
    if (productModel.quantity != null) {
      cantidad.value = int.parse(productModel.quantity!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: InkWell(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: AspectRatio(
                aspectRatio: 3 / 2,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    productModel.imageUrl ?? Globals.imageNotFound,
                    fit: BoxFit.cover,
                  ),
                ),
              ).paddingOnly(bottom: 10),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTitle(
                    title: productModel.name ?? 'S/N',
                    maxLines: 1,
                    size: -7,
                  ).paddingOnly(bottom: 4),
                  CustomSubtitle(
                    title: productModel.description ?? "Sin Descripción",
                    size: -2,
                  ).paddingOnly(bottom: 4),
                  CustomTitle(
                    title: "${productModel.currency} ${productModel.price!}",
                    size: -7,
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          splashRadius: 15,
                          onPressed: () {
                            if (cantidad.value == 0) return;

                            cantidad = cantidad - 1;

                            onValueChange(cantidad, 0);
                          },
                          icon: const Icon(
                            FontAwesomeIcons.minus,
                            size: 13,
                          ),
                        ),
                        Obx(() => CustomSubtitle(
                              title: cantidad.toString(),
                              size: 1,
                              fontWeight: 2,
                            ).paddingOnly(left: 10, right: 10)),
                        IconButton(
                          splashRadius: 15,
                          onPressed: () {
                            cantidad = cantidad + 1;

                            onValueChange(
                              cantidad,
                              1,
                            );
                          },
                          icon: const Icon(
                            FontAwesomeIcons.plus,
                            size: 13,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ).paddingOnly(left: 15, top: 5, right: 15),
            )
          ],
        ),
      ).paddingOnly(left: 3, right: 3),
    );
  }
}
