import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/custom_shapes/curved_shape/curved_shape.dart';

class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurveEdges(),
      child: child,
    );
  }
}

