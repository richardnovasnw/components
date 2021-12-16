import '../../ui.dart';

class AppCircleAvatar extends StatelessWidget {
  const AppCircleAvatar({
    Key? key,
    required this.radius,
    this.borderWidth,
    required this.imageUrl,
  }) : super(key: key);
  final double radius;
  final double? borderWidth;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: radius,
      child: Padding(
        padding: EdgeInsets.all(borderWidth ?? 1.0),
        child: CircleAvatar(
          radius: radius,
          backgroundImage: NetworkImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}

class AppCircleIcon extends StatelessWidget {
  const AppCircleIcon({
    Key? key,
    required this.radius,
    this.borderWidth,
    required this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.strokeWidth,
  }) : super(key: key);
  final double radius;
  final double? borderWidth;
  final IconData icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? strokeWidth;
  @override
  Widget build(BuildContext context) {
    return GradientBorderContainer(
      strokeWidth: strokeWidth ?? 1,
      gradient: const LinearGradient(colors: <Color>[Colors.grey, Colors.grey]),
      child: CircleAvatar(
        backgroundColor: backgroundColor ?? Colors.transparent,
        radius: radius,
        child: Icon(
          icon,
          color: foregroundColor ?? Colors.grey,
        ),
      ),
    );
  }
}
