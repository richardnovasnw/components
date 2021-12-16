
import '../../ui.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({Key? key, required this.icon, this.color}) : super(key: key);
  final IconData icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color ?? Colors.white,
    );
  }
}
