import '../../ui.dart';
import 'gradient_input_border.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({Key? key,required this.hintText}) : super(key: key);
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration:  InputDecoration(
            fillColor: Colors.black38,
            filled: true,
            border: GradientOutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
              focusedGradient: LinearGradient(
                  colors: <Color>[Colors.purple, Colors.deepPurple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              unfocusedGradient: LinearGradient(
                  colors: <Color>[Colors.purple, Colors.deepPurple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
hintText:hintText,
          hintStyle: TextStyle(color: Colors.white)
        ),
    );
  }
}
