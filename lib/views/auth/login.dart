import 'package:infinet/views/widgets/app_check_box.dart';
import 'package:infinet/views/widgets/app_logo.dart';
import 'package:infinet/views/widgets/app_textformfield.dart';
import 'package:infinet/views/widgets/form_tile.dart';
import 'package:infinet/views/widgets/rage_primary_button.dart';

import '../../ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              AppLogo(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Geo Located Creative Engagements',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: AppTextFormField(hintText: 'Username',),
            ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: AppTextFormField(hintText: 'Password',),
                  ),

                ],
              ),
              Column(
                children: [
                  AppCheckBox(text: Text('Save verification for esay login' ,textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontSize: 16),)),
                  Text('Log-in to your account or sign-up.',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RagePrimaryButton(onPressed: (){}, child: Text('Log-In')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RagePrimaryButton(onPressed: (){}, child: Text('Sign-Up')),
                  )

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  CircleAvatar(
                    radius: 7.5,
                    backgroundColor: Colors.purple,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.grey,
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
