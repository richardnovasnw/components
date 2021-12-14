import '../../ui.dart';

class AppCard extends StatelessWidget {
  const AppCard({Key? key, this.borderRadius, required this.child, this.color})
      : super(key: key);
  final double? borderRadius;
  final Widget child;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0.0)),
      child: child,
    );
  }
}
