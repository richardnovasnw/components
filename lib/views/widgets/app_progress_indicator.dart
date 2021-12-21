import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class AppProgressIndicator extends StatelessWidget {
  const AppProgressIndicator({Key? key, this.alignment=Alignment.center}) : super(key: key);

  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: const GradientCircularProgressIndicator(
        gradient: LinearGradient(colors: [Colors.purple,Colors.deepPurple]),
      ),
    );
  }
}
