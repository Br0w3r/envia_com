import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  final Rx<bool>? enable;
  final Widget? child;

  const CustomShimmer(this.enable,{ this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return enable!.value
        ? Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            enabled: enable!.value,
            child: child != null
                ? child!
                : const SizedBox(
                    height: 50,
                  ),
          )
        : child!;
  }
}
