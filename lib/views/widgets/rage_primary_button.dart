import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class RagePrimaryButton extends StatelessWidget {
  const RagePrimaryButton(
      {Key? key, required this.onPressed, required this.child, this.height=20, this.width=260})
      : super(key: key);
  final Function() onPressed;
  final Widget child;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GradientButton(
        shapeRadius: BorderRadius.circular(8),
        increaseWidthBy: width,
        increaseHeightBy: height,
        gradient: const LinearGradient(
            colors: <Color>[Colors.purple, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        callback: onPressed,
        child: child);
  }
}

class RageSecondaryButton extends StatelessWidget {
  const RageSecondaryButton({
    Key? key,
    this.style,
    this.onPressed,
    required this.child,
    this.changed,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget child;
  final ButtonStyle? style;
  final bool? changed;

  @override
  Widget build(BuildContext context) {
    return GradientButton(
        callback: onPressed ?? () {},
        increaseHeightBy: 20,
        increaseWidthBy: 128,
        shapeRadius: BorderRadius.circular(8.0),
        gradient: onPressed == null
            ? const LinearGradient(
                colors: <Color>[Colors.grey, Colors.black],
              )
            : const LinearGradient(
                colors: <Color>[Colors.purple, Colors.deepPurple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
        child: child);
  }
}
