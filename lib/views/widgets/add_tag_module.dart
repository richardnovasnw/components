import '../../ui.dart';
import 'app_textformfield.dart';

class AddTagModule extends StatelessWidget {
  const AddTagModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Create Tags',
            style: context.primaryTextTheme.headline6,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppTextFormField(
            borderRadius: 8,
            prefix: GradientText(
              'Tag  ',
              gradient: colors.purpleDeepPurple,
              style: const TextStyle(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: const <Widget>[
              TagButton(
                text: '#Fashion',
              ),
              TagButton(
                text: '#Storts',
              ),
              TagButton(
                text: '#AR',
              ),
              TagButton(
                text: '#VR',
              ),
              TagButton(
                text: '#Video',
              ),
            ],
          ),
        )
      ],
    );
  }
}

class TagButton extends StatelessWidget {
  const TagButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
            side: MaterialStateProperty.all(
                const BorderSide(color: Colors.white)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27)))),
        child: Text(
          text,
          style: context.primaryTextTheme.button?.copyWith(fontSize: 13),
        ),
      ),
    );
  }
}
