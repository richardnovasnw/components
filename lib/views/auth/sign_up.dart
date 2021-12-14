import 'package:infinet/ui.dart';
import 'package:infinet/views/auth/brand_verification.dart';
import 'package:infinet/views/widgets/app_check_box.dart';
import 'package:infinet/views/widgets/app_logo.dart';
import 'package:infinet/views/widgets/app_outline_button.dart';
import 'package:infinet/views/widgets/app_textformfield.dart';
import 'package:infinet/views/widgets/form_tile.dart';
import 'package:infinet/views/widgets/rage_primary_button.dart';

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
              children: [
                Row(
                  children: [
                    AppLogoHorizontal(),
                    Expanded(
                        child: Text(
                      'Select which type of account you would like to set up',
                      style: TextStyle(color: Colors.white),
                    ))
                  ],
                ),
                Row(
                  children: [
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
                  children: [
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
                FormTile(
                  title: 'E-Mail',
                  textField: AppTextFormField(
                    hintText: 'Enter your E-Mail',
                  ),
                ),
                FormTile(
                  title: 'Password',
                  textField: AppTextFormField(
                    hintText: 'Enter your Password',
                  ),
                ),
                FormTile(
                  title: 'Confirm Password',
                  textField: AppTextFormField(
                    hintText: 'Enter your password',
                  ),
                ),
                Row(
                  children: [
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
                  children: [
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
                  child: AppOutlineButton(onPressed: (){
                     showModalBottomSheet<void>(
                       context: context,
                      enableDrag: true,
                      isScrollControlled: true,
                      backgroundColor: Colors.black.withOpacity(0.5),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return BrandVerification();
                      },
                    );
                  }, child: Text('Create Account',style: TextStyle(color: Colors.white
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
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
