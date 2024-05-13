import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:searchbar_animation/const/dimensions.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

// ignore: must_be_immutable
class CustomSearch extends StatelessWidget {
  const CustomSearch(
      {super.key,
      required this.textEditingController,
      this.labelText="Buscar"});

  final Rx<TextEditingController> textEditingController;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return SearchBarAnimation(
      textEditingController: textEditingController(),
      isOriginalAnimation: true,
      isSearchBoxOnRightSide: true,
      enableKeyboardFocus: true,
      enableBoxShadow: false,
      enableBoxBorder: true,
      inputFormatters: [FilteringTextInputFormatter.singleLineFormatter],
      hintText: labelText,
      buttonColour: Colors.transparent,
      buttonBorderColour: Colors.transparent,
      durationInMilliSeconds: Dimensions.t700,
      enteredTextStyle: Theme.of(context).textTheme.bodyMedium,
      onCollapseComplete: () => textEditingController().text="",
      trailingWidget: const Icon(
        Icons.search,
        size: 24,
        color: Colors.black,
      ).paddingOnly(bottom: 10),
      secondaryButtonWidget: const Icon(
        Icons.close,
        size: 24,
        color: Colors.black,
      ),
      buttonWidget: const Icon(
        Icons.search,
        size: 24,
        color: Colors.black,
      ),
    );
  }
}
