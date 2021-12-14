import '../../ui.dart';
import 'gradient_input_border.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.black38,
            filled: true,
            border: GradientOutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              focusedGradient: colors.purpleDeepPurple,
              unfocusedGradient: colors.purpleDeepPurple,
            )));
  }
}
