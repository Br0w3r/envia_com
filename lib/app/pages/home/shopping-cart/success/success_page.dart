import 'package:envia_com/app/pages/home/shopping-cart/shopping_cart.controller.dart';
import 'package:envia_com/app/widgets/button/custom_button_large.widget.dart';
import 'package:envia_com/app/widgets/text/title.widget.dart';
import 'package:envia_com/data/models/entities/products/product.model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SuccessPage extends GetView<ShoppingCartController> {
  final List<Product> productModel;

  const SuccessPage(this.productModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 250,
                width: 250,
                child: AspectRatio(
                  aspectRatio: 3 / 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      "assets/images/success.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ).paddingOnly(bottom: 10),
              ).paddingOnly(top: 5),
            ),
            const CustomTitle(title: "Gracias por tu compra..."),
            Container(
              width: 300, // Ancho aproximado de un ticket de impresora térmica
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Ticket de Venta",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                      "Fecha: ${DateFormat('dd/MM/yyyy HH:mm').format(DateTime.now())}"),
                  const Divider(
                    color: Colors.black,
                  ),
                  ...productModel.map((item) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${item.id}x ",
                              style: const TextStyle(fontSize: 14)),
                        ],
                      )),
                  const Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total: \$ ${controller.totalshipment.value}",
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  CustomButtonLarge(
                    text: "Regresar",
                    textDisabled: "",
                    enable: true,
                    onPressed: () => controller.cleanShopping(),
                  ).paddingOnly(top: 25),
                  const SizedBox(height: 20),
                  const Center(child: Text("¡Hasta Pronto!")),
                  const SizedBox(height: 20),
                  const Center(child: Text("www.envios.com")),
                ],
              ),
            ).paddingOnly(top: 15),
          ],
        )),
      ),
    );
  }
}
