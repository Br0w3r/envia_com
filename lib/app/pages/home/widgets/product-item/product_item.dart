import 'package:envia_com/app/widgets/text/subtitle.widget.dart';
import 'package:envia_com/app/widgets/text/title.widget.dart';
import 'package:envia_com/core/values/globals.dart';
import 'package:envia_com/data/models/entities/products/product.model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductComponent extends StatelessWidget {
  final Product productModel;
  final Function onCLick;

  const ProductComponent(this.productModel, this.onCLick, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onCLick(),
      child: Container(
        margin: const EdgeInsets.all(5),
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 3 / 2,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    productModel.imageUrl ?? Globals.imageNotFound,
                    fit: BoxFit.cover,
                  ),
                ),
              ).paddingOnly(bottom: 10),
              Column(
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
                  )
                ],
              ).marginOnly(left: 5)
            ],
          ),
        ).paddingOnly(left: 3, right: 3),
      ),
    );
  }
}
