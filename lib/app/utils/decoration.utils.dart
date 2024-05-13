import 'package:flutter/material.dart';
import 'package:envia_com/app/utils/colors.utils.dart';
import 'package:get/get.dart';

class DecorationUtils {
  static InputDecoration outLine(
    BuildContext context, {
    String? labelText,
    IconData? suffixIcon,
    bool? isReadlyOnly,
  }) {
    var themeDefault = Theme.of(context).colorScheme.outlineVariant;
    return InputDecoration(
      filled: true,
      fillColor: isReadlyOnly ?? true ? Colors.white12 : Colors.grey[200],
      suffixIcon: Icon(suffixIcon),
      contentPadding: const EdgeInsets.all(15),
      labelStyle: Theme.of(context).textTheme.bodyMedium!.apply(
          fontWeightDelta: 0,
          color: themeDefault.withOpacity(0.55),
          fontSizeDelta: 3),
      labelText: labelText,
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: themeDefault.withOpacity(0.3), width: 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        borderSide: BorderSide(
            color: isReadlyOnly ?? true
                ? themeDefault.withOpacity(0.3)
                : Colors.grey[350]!),
      ),
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        borderSide: BorderSide(color: themeDefault.withOpacity(0.3)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        borderSide: BorderSide(color: themeDefault.withOpacity(0.3)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Theme.of(context)
                .inputDecorationTheme
                .errorBorder!
                .borderSide
                .color,
            width: 2.3),
        borderRadius: BorderRadius.circular(10.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Theme.of(context)
                .inputDecorationTheme
                .errorBorder!
                .borderSide
                .color
                .withOpacity(0.2),
            width: 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }

  static InputDecoration outLineTextWithClose(BuildContext context,
      {bool enableClose = false,
      GestureTapCallback? onClose,
      String labelText = ""}) {
    return InputDecoration(
        filled: true,
        fillColor: ColorsUtils.hexToColor('#0E0E13'),
        contentPadding: const EdgeInsets.all(15),
        suffixIcon: enableClose
            ? IconButton(
                icon: const Icon(Icons.cancel, color: Colors.white54),
                onPressed: onClose)
            : null,
        prefixIconColor: Colors.white70,
        suffixIconColor: Colors.white70,
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white12, width: 2.0),
            borderRadius: BorderRadius.circular(15.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1.5),
            borderRadius: BorderRadius.circular(15.0)),
        labelStyle: Theme.of(context).textTheme.titleSmall,
        labelText: labelText);
  }

  static InputDecoration outLineText(BuildContext context,
      {String labelText = "",
      Widget? trailing,
      Color? labelTextColor,
      double borderRadius = 0.0,
      Color? backgroundColor,
      Color? borderSideColor}) {
    var themeDefault = borderSideColor ?? Colors.black;
    return InputDecoration(
        filled: true,
        fillColor: backgroundColor ?? Colors.white,
        contentPadding: const EdgeInsets.all(10),
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.bodyMedium!.apply(
            color: labelTextColor,
            fontWeightDelta:
                labelTextColor == null ? 0 : FontWeight.bold.value),
        suffixIcon: trailing,
        counterText: "",
        disabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: themeDefault.withOpacity(0.3), width: 1),
            borderRadius: BorderRadius.circular(borderRadius)),
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: themeDefault.withOpacity(0.5), width: 1),
            borderRadius: BorderRadius.circular(borderRadius)),
        border: OutlineInputBorder(
            borderSide:
                BorderSide(color: themeDefault.withOpacity(0.5), width: 1.5),
            borderRadius: BorderRadius.circular(borderRadius)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: themeDefault.withOpacity(0.4), width: 1.5),
            borderRadius: BorderRadius.circular(borderRadius)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context)
                    .inputDecorationTheme
                    .errorBorder!
                    .borderSide
                    .color,
                width: 5),
            borderRadius: BorderRadius.circular(borderRadius)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context)
                    .inputDecorationTheme
                    .errorBorder!
                    .borderSide
                    .color
                    .withOpacity(0.2),
                width: 1),
            borderRadius: BorderRadius.circular(borderRadius)));
  }

  static InputDecoration outlineSearch(BuildContext context) {
    return const InputDecoration(
        prefixIcon: Icon(Icons.search, color: Colors.black38));
  }

  static BoxDecoration drawer(BuildContext context) {
    return BoxDecoration(shape: BoxShape.rectangle, boxShadow: <BoxShadow>[
      BoxShadow(
          color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.65),
          blurRadius: 5.5,
          offset: const Offset(6, 4),
          spreadRadius: 3.8)
    ]);
  }

  static BoxDecoration blurImage(BuildContext context) {
    return const BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          image: ExactAssetImage('assets/images/fh_obreros.jpg'),
          fit: BoxFit.cover,
        ));
  }

  static RoundedRectangleBorder cardDecoration(BuildContext context) {
    return RoundedRectangleBorder(
        side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            style: BorderStyle.solid),
        borderRadius: const BorderRadius.all(Radius.circular(7)));
  }

  static RoundedRectangleBorder cardDecorationSimple(BuildContext context,
      {Color? color}) {
    return RoundedRectangleBorder(
        side: BorderSide(
            color: color ?? Theme.of(context).scaffoldBackgroundColor,
            style: BorderStyle.solid),
        borderRadius: const BorderRadius.all(Radius.circular(8)));
  }

  static RoundedRectangleBorder cardDecorationItems(BuildContext context) {
    return RoundedRectangleBorder(
        side: BorderSide(
            width: Get.width,
            color: Theme.of(context).scaffoldBackgroundColor,
            style: BorderStyle.solid),
        borderRadius: const BorderRadius.all(Radius.circular(20)));
  }

  static BoxDecoration boxDecorationScreenPage({bool isRounded = false}) {
    return BoxDecoration(
      gradient: const LinearGradient(
        colors: [Color(0xFF4C0010), Color.fromARGB(255, 184, 29, 67)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      borderRadius:
          isRounded ? const BorderRadius.all(Radius.circular(10)) : null,
      // ignore: dead_code
    );
  }

  static BoxDecoration customBoxDecoration(List<Color> colors,
      {bool isRounded = false}) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: colors,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      borderRadius:
          isRounded ? const BorderRadius.all(Radius.circular(10)) : null,
      // ignore: dead_code
    );
  }

  static BoxDecoration boxDecorationAppBar(BuildContext context) {
    return BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(25),
        ),
        color: Theme.of(context).colorScheme.background
        // ignore: dead_code
        );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50); // Línea hasta el inicio de la curva

    // Puntos de control para la curva
    var controlPoint1 = Offset(size.width / 4, size.height);
    var controlPoint2 = Offset(3 * size.width / 4, size.height);
    var endPoint = Offset(size.width, size.height - 50);

    // Dibuja la curva Bézier cúbica
    path.cubicTo(
      controlPoint1.dx,
      controlPoint1.dy,
      controlPoint2.dx,
      controlPoint2.dy,
      endPoint.dx,
      endPoint.dy,
    );

    path.lineTo(size.width, 0); // Línea hasta la esquina superior derecha
    path.close(); // Cierra el path conectándolo con el inicio
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
