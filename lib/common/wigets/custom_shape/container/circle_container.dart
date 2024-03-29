import 'package:ecommeraceapp/utils/constants/color.dart';
import 'package:flutter/cupertino.dart';

class TCircleContainer extends StatelessWidget {
  const TCircleContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = TColors.white,
    this.margin,
  });
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final EdgeInsets? margin;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: width,
        height: height,
        margin: margin,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: TColors.textWhite.withOpacity(0.2),
        ),
      )
    ]);
  }
}
