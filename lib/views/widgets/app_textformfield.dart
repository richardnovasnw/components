import '../../ui.dart';
import 'gradient_input_border.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {Key? key, this.hintText, this.borderRadius, this.prefix})
      : super(key: key);
  final String? hintText;
  final double? borderRadius;
  final Widget? prefix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          prefix: prefix,
          fillColor: Colors.white10,
          filled: true,
          border: GradientOutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(borderRadius ?? 16.0)),
            focusedGradient: colors.purpleDeepPurple,
            unfocusedGradient: const LinearGradient(
                colors: <Color>[Colors.transparent, Colors.transparent]),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white)),
    );
  }
}
