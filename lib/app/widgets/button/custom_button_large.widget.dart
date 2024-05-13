import 'package:envia_com/app/widgets/text/subtitle.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonLarge extends StatelessWidget {
  const CustomButtonLarge({
    Key? key,
    required this.text,
    required this.textDisabled,
    this.onPressed,
    this.color,
    this.borderRadius,
    this.enable = false,
    this.height,
    this.sizeText = 2.5,
    this.width,
    this.textColor,
  }) : super(key: key);

  final void Function()? onPressed;
  final String text;
  final String textDisabled;
  final Color? color;
  final double sizeText;
  final double? width;
  final Color? textColor;
  final bool enable;
  final double? borderRadius;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final buttonWidth = width ?? Get.width;
    final buttonHeight = height ?? Get.height * .055;

    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: enable ? onPressed : null,
        style: _generateStyle(context, buttonHeight),
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          child: CustomSubtitle(
            title: enable ? text : textDisabled,
            color: textColor ?? Colors.white,
            fontWeight: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  ButtonStyle _generateStyle(BuildContext context, double? buttonHeight) {
    return ElevatedButton.styleFrom(
      backgroundColor:
          enable ? (color ?? Theme.of(context).primaryColorLight) : Colors.grey,
      disabledBackgroundColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
      ),
      fixedSize: Size.fromHeight(buttonHeight ?? 0),
      maximumSize: Size.fromHeight((buttonHeight ?? 0) * 2),
      minimumSize: Size.fromHeight((buttonHeight ?? 0) / 2),
    );
  }
}
