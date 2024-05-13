import 'package:envia_com/app/utils/decoration.utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final Color? borderColor;

  const CustomCard({super.key, required this.child,this.backgroundColor,this.borderColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * .9,
      height: Get.height * .4,
      child: Card(
        color: backgroundColor??Theme.of(context).scaffoldBackgroundColor,
        shape: DecorationUtils.cardDecorationSimple(context,color: borderColor),
        semanticContainer: false,
        borderOnForeground: true,
        margin: const EdgeInsets.all(10),
        elevation: 5,
        child: child.paddingAll(10),
      ),
    );
  }
}
