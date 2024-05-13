import 'package:envia_com/app/widgets/text/subtitle.widget.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.enable = false,
      this.color,
      this.borderRadius,
      this.height,
      this.textColor})
      : super(key: key);

  final GestureTapCallback onPressed;
  final String text;
  final bool enable;
  final Color? color;
  final Color? textColor;
  final double? borderRadius;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return enable
        ? _disableButton(context)
        : ElevatedButton(
            onPressed: onPressed,
            style: _generateStyle(context),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: CustomSubtitle(
                title: text,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          );
  }

  _disableButton(BuildContext context) {
    return ElevatedButton(
        style: _generateStyle(context),
        onPressed: null,
        child: Container(
            padding: const EdgeInsets.all(10),
            child: Text(text, style: const TextStyle(color: Colors.white))));
  }

  ButtonStyle _generateStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
        backgroundColor: color ?? Theme.of(context).primaryColorLight,
        disabledBackgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 5)),
        fixedSize: Size.fromHeight(height ?? 0),
        maximumSize: Size.fromHeight((height ?? 0) * 2),
        minimumSize: Size.fromHeight((height ?? 0) / 2));
  }
}
