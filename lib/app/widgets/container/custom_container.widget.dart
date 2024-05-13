import 'package:envia_com/app/widgets/text/subtitle.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomContainer extends StatelessWidget {
  final String labelText;
  final List<Widget> children;
  final Color color;
  final IconData? icon;

  const CustomContainer({
    super.key,
    required this.children,
    this.labelText = "",
    this.icon,
    this.color = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height * .85,
      child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
            ),
          ),
          child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                CustomSubtitle(
                  title: labelText,
                  textAlign: TextAlign.center,
                  color: Theme.of(context).colorScheme.onSurface,
                  size: 25,
                  fontWeight: 3,
                  // fontWeight: FontWeight.w500,
                ).paddingOnly(top: 15),
                ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: children)
              ])),
    );
  }
}
