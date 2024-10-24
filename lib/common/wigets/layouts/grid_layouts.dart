// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../utils/constants/sized.dart';

class TGridLayouts extends StatelessWidget {
  const TGridLayouts({
    super.key,
    required this.iteamCount,
    this.mainAxisExtent = 288,
    required this.iteamBuilders,
  });
  final int iteamCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) iteamBuilders;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        itemCount: iteamCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: mainAxisExtent,
            crossAxisSpacing: TSized.gridViewSpacing,
            mainAxisSpacing: 288),
        itemBuilder: iteamBuilders);
  }
}
