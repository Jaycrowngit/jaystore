import 'package:flutter/material.dart';
import 'package:jaystore/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:jaystore/common/widgets/custom_shapes/curved_shape/curved_shape_widget.dart';
import 'package:jaystore/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const  TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        child: SizedBox(
          height: 360,
          child: Stack(
            children: [
              // -- Background Custom Shapes
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: const Color.fromARGB(87, 255, 255, 255),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: const Color.fromARGB(87, 255, 255, 255),
                ),
              ),

              // -- Foreground Child (AppBar, texts, etc.)
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
