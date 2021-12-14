import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../../ui.dart';

class AppOutlineButton extends StatelessWidget {
  const AppOutlineButton({Key? key,required this.child,required this.onPressed}) : super(key: key);
  final Widget child;
final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      onTap: onPressed,
      child: child,
      gradient: LinearGradient(
        colors: [Colors.purple,Colors.deepPurple]
      ),
      radius: Radius.circular(8),
      padding: EdgeInsets.symmetric(vertical: 24,horizontal: 120),
      strokeWidth: 4,
    );
  }
}
