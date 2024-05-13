import 'package:envia_com/app/utils/decoration.utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliverAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final Color? color;
  final PreferredSizeWidget? bottomWidget;
  final bool? forceElevated;
  final double height;

  const CustomSliverAppBar(
      {Key? key,
      required this.title,
      this.color,
      this.bottomWidget,
      this.forceElevated,
      this.height = .2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var haveBottomWidget = bottomWidget == null;
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: preferredSize.height,
      forceElevated: forceElevated ?? false,
      elevation: 1,
      pinned: true,
      floating: true,
      bottom: bottomWidget,
      surfaceTintColor: color ?? Theme.of(context).splashColor,
      backgroundColor: color ?? Theme.of(context).splashColor,
      title: !haveBottomWidget
          ? Text(title, style: const TextStyle(color: Colors.white))
          : null,
      flexibleSpace: haveBottomWidget
          ? FlexibleSpaceBar(
              centerTitle: false,
              background: Container(
                  decoration: DecorationUtils.boxDecorationScreenPage()),
              title: Text(title, style: const TextStyle(color: Colors.white)),
              titlePadding:
                  const EdgeInsets.only(left: 20, bottom: 20, right: 20),
            )
          : FlexibleSpaceBar(
              centerTitle: false,
              background: Container(
                  decoration: DecorationUtils.boxDecorationScreenPage()),
              titlePadding:
                  const EdgeInsets.only(left: 20, bottom: 20, right: 20),
            ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Get.size.height * height);
}
