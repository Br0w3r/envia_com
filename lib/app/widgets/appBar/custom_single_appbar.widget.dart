import 'package:envia_com/app/widgets/text/title.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSingleAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? childrenFlexibleSpace;

  const CustomSingleAppBar({
    super.key,
    this.title,
    this.childrenFlexibleSpace,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        centerTitle: true,
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        iconTheme: Theme.of(context).iconTheme,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomTitle(
              title: title!,
              color: Theme.of(context).colorScheme.onBackground,
              size: -5,
            )
          ],
        ),
        flexibleSpace: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: constraints.maxWidth,
              child: (childrenFlexibleSpace != null &&
                      childrenFlexibleSpace!.isNotEmpty)
                  ? Padding(
                      padding: EdgeInsets.only(
                        top: constraints.maxHeight * 0.2,
                        left: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize:
                            MainAxisSize.min, // Solo expandirse lo necesario
                        children: childrenFlexibleSpace!,
                      ),
                    )
                  : const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize {
    // Estimación de la altura del AppBar
    double baseHeight = kToolbarHeight; // Altura estándar del AppBar
    double iconHeight = 20.0; // Altura estimada de los iconos
    double paddingVertical = 16.0; // Padding vertical total

    // Calcular la altura basada en si hay iconos
    double estimatedHeight =
        (childrenFlexibleSpace == null || childrenFlexibleSpace!.isEmpty)
            ? baseHeight
            : iconHeight + paddingVertical;

    // Ajustar la altura a un mínimo y máximo razonable
    double minHeight = kToolbarHeight;
    double maxHeight = Get.size.height * 0.1;

    // Asegurar que la altura esté dentro de los límites
    return Size.fromHeight((estimatedHeight > maxHeight)
        ? maxHeight
        : (estimatedHeight < minHeight ? minHeight : estimatedHeight));
  }
}
