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

class RageGradientOutlinedButton extends StatelessWidget {
  const RageGradientOutlinedButton({
    Key? key,
    required this.child,
    this.width,
  }) : super(key: key);
  final Widget child;
  final double? width;
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
        width: width ?? context.mediaSize.width,
        onPressed: () {},
        child: child,
      ),
    );
  }
}

class RageOutlinedButton extends StatelessWidget {
  const RageOutlinedButton(
      {Key? key,
      this.height,
      this.width,
      this.borderRadius,
      required this.child,
      this.padding,
      required this.onPressed, this.borderColor})
      : super(key: key);
  final double? height;
  final double? width;
  final double? borderRadius;
  final double? padding;
  final Function() onPressed;
  final Widget child;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(padding ?? 8.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8)),
          minimumSize: Size(width ?? 108, height ?? 40),
          primary: Colors.transparent,
          side:  BorderSide(color:borderColor?? Colors.white),
        ),
        onPressed: onPressed,
        child: child);
  }
}
