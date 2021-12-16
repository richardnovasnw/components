import '../../ui.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      height: 310,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      RageTextButton(text: 'Instagram'),
                      RageTextButton(text: 'Twitter'),
                      RageTextButton(text: 'Discord'),
                      RageTextButton(text: 'Blog'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      RageTextButton(text: 'About'),
                      RageTextButton(text: 'Community Guildlines'),
                      RageTextButton(text: 'Terms of Service'),
                      RageTextButton(text: 'Privacy'),
                      RageTextButton(text: 'Carrers'),
                      RageTextButton(text: 'Help'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '@ 2021 Openart',
              style: context.primaryTextTheme.bodyText1,
            ),
          )
        ],
      ),
    );
  }
}

class RageTextButton extends StatelessWidget {
  const RageTextButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Text(
          text,
          style: context.primaryTextTheme.bodyText1,
        ),
      ),
    );
  }
}
