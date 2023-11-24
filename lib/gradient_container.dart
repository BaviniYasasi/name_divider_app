import 'package:flutter/material.dart';

const beginAligement = Alignment.topLeft;
const endAligement = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAligement,
          end: endAligement,
        )
      ),
    );
  }
}