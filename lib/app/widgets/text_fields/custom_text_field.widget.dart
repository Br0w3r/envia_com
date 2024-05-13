import 'package:envia_com/app/utils/decoration.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController editingController;
  final int? maxLines;
  final TextInputType? textInputType;
  final bool? isEnable;
  final Widget? trailing;
  final int? maxCharts;
  final Color? backgroundColor;
  final String? messageError;
  final Color? labelTextColor;
  final Color? borderSideColor;
  final double? borderRadius;
  final GestureTapCallback? onComplete;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField(
    this.labelText,
    this.editingController, {
    super.key,
    this.maxLines,
    this.textInputType,
    this.trailing,
    this.maxCharts,
    this.labelTextColor,
    this.backgroundColor,
    this.borderSideColor,
    this.isEnable,
    this.borderRadius,
    this.messageError,
    this.onComplete,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      enabled: isEnable,
      maxLength: maxCharts,
      onEditingComplete: onComplete,
      enableIMEPersonalizedLearning: false,
      enableSuggestions: false,
      controller: editingController,
      keyboardType: textInputType,
      decoration: DecorationUtils.outLineText(context,
          backgroundColor: backgroundColor,
          borderSideColor: borderSideColor,
          labelText: labelText,
          trailing: trailing,
          borderRadius: borderRadius ?? 0.0,
          labelTextColor: labelTextColor),
      style: Theme.of(context).textTheme.bodyMedium,
      inputFormatters: inputFormatters,
    );
  }
}
