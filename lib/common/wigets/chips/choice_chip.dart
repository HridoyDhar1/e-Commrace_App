// ignore_for_file: dead_code

import 'package:ecommeraceapp/common/wigets/custom_shape/container/circle_container.dart';
import 'package:ecommeraceapp/utils/helpers/helper_funcation.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';

class TChip extends StatelessWidget {
  const TChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
          label: THelperFunctions.getColor(text) != null
              ? const SizedBox()
              : Text(text),
          selected: selected,
          labelStyle: const TextStyle(color: true ? TColors.white : null),
          onSelected: onSelected,
          avatar: isColor
              ? TCircleContainer(
                  width: 50,
                  height: 50,
                  backgroundColor: THelperFunctions.getColor(text)!,
                )
              : null,
          shape: isColor ? const CircleBorder() : null,
          labelPadding: isColor ? const EdgeInsets.all(0) : null,
          padding: isColor ? const EdgeInsets.all(0) : null,
          selectedColor: Colors.green,
          backgroundColor: isColor ? THelperFunctions.getColor(text)! : null),
    );
  }
}
