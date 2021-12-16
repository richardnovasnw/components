import '../../ui.dart';
import '../widgets/app_check_box.dart';
import '../widgets/app_logo.dart';
import '../widgets/app_textformfield.dart';
import '../widgets/rage_primary_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              const AppLogo(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Geo Located Creative Engagements',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: AppTextFormField(
                      hintText: 'Username',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: AppTextFormField(
                      hintText: 'Password',
                    ),
                  ),
                ],
              ),
              Column(
                children:<Widget> [
                  const AppCheckBox(
                      text: Text(
                    'Save verification for esay login',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  )),
                  const Text(
                    'Log-in to your account or sign-up.',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RagePrimaryButton(onPressed: (){
                      context.appViewModel.signIn(email: 'shra131295@gmail.com', password: '12345678');
                    }, child: Text('Log-In')),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RagePrimaryButton(
                        onPressed: () {}, child: const Text('Sign-Up')),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
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
