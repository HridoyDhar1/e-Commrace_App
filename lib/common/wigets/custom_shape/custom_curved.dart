import 'package:ecommeraceapp/common/wigets/custom_shape/curved_edge_widget.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';
import 'container/circle_container.dart';

class TprimaryHeaderCurved extends StatelessWidget {
  const TprimaryHeaderCurved({super.key, required this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return TcurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCircleContainer(
                  backgroundColor: TColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircleContainer(
                  backgroundColor: TColors.white.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
