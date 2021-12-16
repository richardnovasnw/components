import 'package:gradient_widgets/gradient_widgets.dart';

import '../../ui.dart';

class RagePrimaryButton extends StatelessWidget {
  const RagePrimaryButton(

      {Key? key,
      required this.onPressed,
      required this.child,
      this.height,
      this.width,
      this.gradient})
      : super(key: key);
  final Function() onPressed;
  final Widget child;
  final double? height;
  final double? width;
  final LinearGradient? gradient;
  @override
  Widget build(BuildContext context) {
    return GradientButton(
        shapeRadius: BorderRadius.circular(8),
        increaseWidthBy: width ?? context.mediaSize.width,
        increaseHeightBy: height ?? 20,
        gradient: gradient ?? colors.purpleDeepPurple,
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
    this.height,
    this.width,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget child;
  final ButtonStyle? style;
  final bool? changed;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GradientButton(
        callback: onPressed ?? () {},
        increaseHeightBy: height ?? 20,
        increaseWidthBy: width ?? 128,
        shapeRadius: BorderRadius.circular(8.0),
        gradient: onPressed == null
            ? const LinearGradient(
                colors: <Color>[Colors.grey, Colors.black],
              )
            : colors.purpleDeepPurple,
        child: child);
  }
}

class RageOutlinedButton extends StatelessWidget {
  const RageOutlinedButton({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GradientBorderContainer(
      borderRadius: 8,
      gradient: LinearGradient(colors: <Color>[
        Colors.blueGrey.withOpacity(.5),
        Colors.blueGrey.withOpacity(.3)
      ]),
      child: RagePrimaryButton(
        gradient:
            const LinearGradient(colors: <Color>[Colors.black12, Colors.black]),
        width: context.mediaSize.width,
        onPressed: () {},
        child: child,
      ),
    );
  }
}
