import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomLoadingChildren extends StatelessWidget {
  final Rx<bool>? loading;
  final Widget? child;
  final double size;
  final String? text;

  const CustomLoadingChildren(this.loading,
      {Key? key, this.child, this.size = 100, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (loading == null) {
      return child != null ? child! : Container();
    }
    if (loading!.value) {
      return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoadingAnimationWidget.inkDrop(
                color: Theme.of(context).primaryColorLight,
                size: size,
              ),
              text != null
                  ? text!.isNotEmpty
                      ? Text(text!).paddingOnly(top: 50)
                      : Container()
                  : Container()
            ],
          ));
    } else {
      return child != null ? child! : Container();
    }
  }
}
