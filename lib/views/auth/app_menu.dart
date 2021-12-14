import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:infinet/views/widgets/app_logo.dart';
import 'package:infinet/views/widgets/rage_primary_button.dart';

import '../../ui.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppLogo(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextGroup(text: 'About',),
                  TextGroup(text: 'Forum',),
                  TextGroup(text: 'Contact',),
                  TextGroup(text: 'Support',),
                ],
              ),
              Column(
                children: [
                  GradientText('Discover / Collect /Drop',
                      gradient: LinearGradient(colors: [Colors.purple,Colors.deepPurple]),
                      style: TextStyle(
                        fontSize: 18
                  )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Geo Located Creative Engagements',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                  ),
                  GradientText('Terms & Conditions',
                      gradient: LinearGradient(colors: [Colors.purple,Colors.deepPurple]),
                      style: TextStyle(
                          fontSize: 14
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RagePrimaryButton(onPressed: (){}, child: Text('Create Account')),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
    Key? key, required this.text,
  }) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 32)),
    );
  }
}
