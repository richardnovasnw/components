import '../../ui.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({
    Key? key,
    required this.height,
    this.gradient,
    this.child,
    required this.width,
    this.padding,
    this.borderRadius,
    this.image,
  }) : super(key: key);
  final double height;
  final double width;
  final LinearGradient? gradient;
  final Widget? child;
  final double? padding;
  final double? borderRadius;
  final DecorationImage? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding ?? 16),
      decoration: BoxDecoration(
          image: image,
          borderRadius: BorderRadius.circular(borderRadius ?? 24),
          gradient: gradient),
      child: child,
    );
  }
}
