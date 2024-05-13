import 'package:envia_com/app/utils/decoration.utils.dart';
import 'package:envia_com/core/values/validation_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CustomReactiveTextField extends StatelessWidget {
  final String controlName;
  late final String labelText;
  final TextInputType? keyboard;
  final int? maxLength;
  final int? minLength;
  final int? maxLines;
  final bool isPass;
  final bool? isActive;
  final IconData? iconSuffix;
  final void Function(FormControl<dynamic>)? onSubmitted;
  final void Function(FormControl<dynamic>)? onChanged;
  final TextEditingController textEditing = TextEditingController(text: "");
  final InputDecoration? decoration;
  final String? isNotMatch;
  final double? customPadding;
  final List<TextInputFormatter>? inputFormatters;

  CustomReactiveTextField(
    this.controlName, {
    super.key,
    this.labelText = "",
    this.isActive,
    this.maxLength,
    this.minLength,
    this.onSubmitted,
    this.iconSuffix,
    this.maxLines,
    this.isPass = false,
    this.decoration,
    this.isNotMatch,
    this.keyboard,
    this.customPadding = 8.0,
    this.inputFormatters,
    this.onChanged,
  }) {
    if (labelText.isEmpty) labelText = controlName;
    /* textEditing.addListener(() {
      if(maxLength!=null)
        if (textEditing.text.length > maxLength!) {
          textEditing.text = textEditing.text.substring(0,maxLength);
        }});*/
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(customPadding!),
      child: ReactiveTextField(
        formControlName: controlName,
        controller: textEditing,
        autofocus: false,
        autocorrect: false,
        onSubmitted: onSubmitted,
        onChanged: onChanged,
        scribbleEnabled: isActive ?? true,
        // onTap: () { AlwaysDisabledFocusNode().hasFocus },
        enableInteractiveSelection: isActive ?? true,
        readOnly: !(isActive ?? true),
        inputFormatters: inputFormatters,
        textCapitalization: inputFormatters!=null?TextCapitalization.characters:TextCapitalization.none,
        enableIMEPersonalizedLearning: false,
        enableSuggestions: false,
        focusNode: isActive != null ? AlwaysDisabledFocusNode() : null,
        maxLines: maxLines ?? 1,
        maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
        maxLength: maxLength,
        buildCounter: (context, {required currentLength, required isFocused, maxLength}) {
          return null;
        },
        validationMessages:
            validationMessages(minLength, maxLength, equals: isNotMatch ?? ""),
        keyboardType: keyboard,
        style: Theme.of(context).textTheme.bodyMedium,
        decoration: decoration ??
            DecorationUtils.outLine(context,
                labelText: labelText,
                suffixIcon: iconSuffix,
                isReadlyOnly: isActive ?? true),
        obscureText: isPass,
        clipBehavior: Clip.none,
        scrollPhysics: const NeverScrollableScrollPhysics(),
        showCursor: true,
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  bool onlyUpperCase;
  UpperCaseTextFormatter({this.onlyUpperCase=false});
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(text: onlyUpperCase?newValue.text.toUpperCase():newValue.text, selection: newValue.selection);
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
  @override
  bool get skipTraversal => true;
  @override
  bool get canRequestFocus => true;
}
