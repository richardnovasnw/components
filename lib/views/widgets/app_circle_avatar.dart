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
