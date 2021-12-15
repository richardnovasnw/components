import '../../ui.dart';
import '../widgets/app_check_box.dart';
import '../widgets/app_logo.dart';
import '../widgets/app_outline_button.dart';
import '../widgets/app_textformfield.dart';
import '../widgets/form_tile.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  <Widget> [
                Row(
                  children: const <Widget>  [
                    AppLogoHorizontal(),
                    Expanded(
                        child: Text(
                      'Select which type of account you would like to set up',
                      style: TextStyle(color: Colors.white),
                    ))
                  ],
                ),
                Row(
                  children:  const <Widget>[
                    CheckBoxText(
                      text: 'Creator',
                    ),
                    CheckBoxText(
                      text: 'Collector',
                    ),
                    CheckBoxText(
                      text: 'Brand',
                    ),
                  ],
                ),
                Row(
                  children: const <Widget> [
                    Expanded(
                      child: FormTile(
                        title: 'FirstName',
                        textField: AppTextFormField(
                          hintText: 'Enter First Name',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: FormTile(
                        title: 'LastName',
                        textField: AppTextFormField(
                          hintText: 'Enter Last Name',
                        ),
                      ),
                    ),
                  ],
                ),
                const FormTile(
                  title: 'E-Mail',
                  textField: AppTextFormField(
                    hintText: 'Enter your E-Mail',
                  ),
                ),
                const FormTile(
                  title: 'Password',
                  textField: AppTextFormField(
                    hintText: 'Enter your Password',
                  ),
                ),
                const FormTile(
                  title: 'Confirm Password',
                  textField: AppTextFormField(
                    hintText: 'Enter your password',
                  ),
                ),
                Row(
                  children: const <Widget>[
                    Expanded(
                      child: FormTile(
                        title: 'Phone Number',
                        textField: AppTextFormField(
                          hintText: 'Enter your Phone Number',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: FormTile(
                        title: 'Country',
                        textField: AppTextFormField(
                          hintText: 'Enter your Country',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Expanded(
                      child: FormTile(
                        title: 'Promo Code',
                        textField: AppTextFormField(
                          hintText: 'Enter your Promo Code',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: FormTile(
                        title: 'USER ID',
                        textField: AppTextFormField(
                          hintText: 'Enter your User id',
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppOutlineButton(onPressed: (){}, child: const Text('Create Account',style: TextStyle(color: Colors.white
                  ),)),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CheckBoxText extends StatelessWidget {
  const CheckBoxText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppCheckBox(
      text: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
