import '../../ui.dart';

class AppCheckBox extends StatefulWidget {
  const AppCheckBox({
    Key? key,
    required this.text,
  }) : super(key: key);
  final Widget text;
  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Checkbox(
              fillColor: checkBox == false
                  ? MaterialStateProperty.all(Colors.white)
                  : null,
              value: checkBox,
              activeColor: Colors.deepPurple,
              onChanged: (bool? value) {
                checkBox = value!;
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
