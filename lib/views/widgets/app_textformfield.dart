import '../../ui.dart';
import 'gradient_input_border.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({Key? key, required this.hintText}) : super(key: key);
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: Colors.white10,
          filled: true,
          border: GradientOutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            focusedGradient: colors.purpleDeepPurple,
            unfocusedGradient: const LinearGradient(
                colors: <Color>[Colors.transparent, Colors.transparent]),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white)),
    );
  }
}
