import 'package:flutter/cupertino.dart';

import '../../utils/constants/color.dart';

class TShadowStyle {
  static final veriticalProductShadow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 58,
      spreadRadius: 9,
      offset: const Offset(0, 2));
  static final horizantalshadow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 58,
      spreadRadius: 9,
      offset: const Offset(0, 2));
}
