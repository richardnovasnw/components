import '../../ui.dart';

class AppCheckBox extends StatefulWidget {
  const AppCheckBox({Key? key, required this.text, this.onAcceptTerms})
      : super(key: key);
  final Widget text;
  final ValueChanged<bool>? onAcceptTerms;
  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  @override
  Widget build(BuildContext context) {
    bool checkBox = true;
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Checkbox(
              value: checkBox,
              activeColor: Colors.deepPurple,
              onChanged: (bool? value) {
                checkBox = value!;
                widget.onAcceptTerms?.call(checkBox);
                setState(() {});
              },
            ),
          ],
        ),
        widget.text
      ],
    );
  }
}
