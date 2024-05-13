import 'package:envia_com/app/utils/decoration.utils.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:envia_com/app/widgets/text/title.widget.dart';


class CustomDynamicAppBar extends StatelessWidget
    implements PreferredSizeWidget {
      final Rx<String> title;
  final List<Widget>? childrenFlexibleSpace;

  const CustomDynamicAppBar({
    super.key,
    required this.title,
    this.childrenFlexibleSpace,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Container(
            decoration: DecorationUtils.boxDecorationAppBar(context),
            child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                shadowColor: Colors.transparent,
                centerTitle: true,
                foregroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                iconTheme: Theme.of(context).iconTheme,
                title: Obx(() => CustomTitle(
                      title: title.value,
                      color: Colors.white,
                      size: -2,
                      textAlign: TextAlign.center,
                    )),
                flexibleSpace: childrenFlexibleSpace != null
                    ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: childrenFlexibleSpace!)
                        .paddingOnly(top: preferredSize.height / 2)
                        .paddingAll(10)
                    : null)));
  }

  @override
  Size get preferredSize => Size.fromHeight(childrenFlexibleSpace == null
      ? Get.size.height * .08
      : Get.size.height * .1);
}
