import 'package:gradient_widgets/gradient_widgets.dart';

import '../../ui.dart';
import '../widgets/app_logo.dart';
import '../widgets/rage_primary_button.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const AppLogo(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  TextGroup(
                    text: 'About',
                  ),
                  TextGroup(
                    text: 'Forum',
                  ),
                  TextGroup(
                    text: 'Contact',
                  ),
                  TextGroup(
                    text: 'Support',
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  GradientText('Discover / Collect / Drop',
                      gradient: colors.purpleDeepPurple,
                      style: const TextStyle(fontSize: 18)),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Geo Located Creative Engagements',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GradientText('Terms & Conditions',
                      gradient: colors.purpleDeepPurple,
                      style: const TextStyle(fontSize: 14)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RagePrimaryButton(
                        onPressed: () {}, child: const Text('Create Account')),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 7.5,
                    backgroundColor: Colors.purple,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextGroup extends StatelessWidget {
  const TextGroup({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 32)),
    );
  }
}
