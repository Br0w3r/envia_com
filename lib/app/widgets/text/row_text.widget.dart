import 'package:envia_com/app/widgets/text/subtitle.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowText extends StatelessWidget {
  final String title;
  final String? text;

  const RowText(this.title, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(title, style: Theme.of(Get.context!).textTheme.labelMedium),
      CustomSubtitle(title: text??"", size: -2)
    ]).paddingOnly(top: 10);
  }
}
