import 'package:ecommeraceapp/utils/constants/color.dart';
import 'package:ecommeraceapp/utils/constants/sized.dart';
import 'package:flutter/cupertino.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width,
    this.heigth,
    required this.imageurl,
    this.applyimageRadius = false,
    this.backgroundColor = TColors.light,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.border,
    this.fit,
    this.borderRadius = TSized.md,
  });
  final double? width, heigth;
  final String imageurl;
  final bool applyimageRadius;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final BoxBorder? border;
  final BoxFit? fit;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: heigth,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
            borderRadius: applyimageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
                fit: fit,
                image: isNetworkImage
                    ? NetworkImage(imageurl)
                    : AssetImage(imageurl) as ImageProvider)),
      ),
    );
  }
}
