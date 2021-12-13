import '../../ui.dart';

class FormTile extends StatelessWidget {
  const FormTile({Key? key, required this.title, required this.textField})
      : super(key: key);
  final String title;
  final Widget textField;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              )),
        ),
        textField
      ],
    );
  }
}
