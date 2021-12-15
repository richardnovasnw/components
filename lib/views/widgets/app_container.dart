import '../../ui.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({
    Key? key,
    required this.height,
    required this.gradient,
    required this.child,
    required this.width,
    this.padding, this.borderRadius,
  }) : super(key: key);
  final double height;
  final double width;
  final LinearGradient gradient;
  final Widget child;
  final double? padding;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding ?? 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius??24), gradient: gradient),
      child: child,
    );
  }
}
