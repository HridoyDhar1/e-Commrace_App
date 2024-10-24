import 'package:ecommeraceapp/common/wigets/custom_shape/curved_edge.dart';
import 'package:flutter/material.dart';

class TcurvedEdgeWidget extends StatelessWidget {
  const TcurvedEdgeWidget({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCurvedEdges(), child: child);
  }
}
