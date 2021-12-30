import 'package:infinet/ui.dart';
import 'package:infinet/views/widgets/app_check_box.dart';
import 'package:infinet/views/widgets/app_logo.dart';
import 'package:infinet/views/widgets/app_outline_button.dart';
import 'package:infinet/views/widgets/app_textformfield.dart';
import 'package:infinet/views/widgets/form_tile.dart';


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
                  children:  <Widget>  [
                    AppLogoHorizontal(),

                    Expanded(
                        child: Text(
                      context.strings.selectWhichTypeOfAccount,
                      style: TextStyle(color: colors.secondary),
                    ))
                  ],
                ),
                Row(

                  children:   <Widget>[
                    CheckBoxText(
                      text: context.strings.creator,
                    ),
                    CheckBoxText(
                      text: context.strings.collector,
                    ),
                    CheckBoxText(
                      text: context.strings.brand,
                    ),
                  ],
                ),
                Row(
                  children:  <Widget> [
                    Expanded(
                      child: FormTile(
                        title: context.strings.firstName,
                        textField: AppTextFormField(
                          hintText: context.strings.enterFirstName,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: FormTile(
                        title: context.strings.lastName,
                        textField: AppTextFormField(
                          hintText: context.strings.enterLastName,
                        ),
                      ),
                    ),
                  ],
                ),
                 FormTile(
                  title: context.strings.eMail,

                  textField: AppTextFormField(
                    hintText: context.strings.enterYourEMail,
                  ),
                ),
                 FormTile(
                  title: context.strings.password,

                  textField: AppTextFormField(
                    hintText: context.strings.enterYourPassword,
                  ),
                ),
                 FormTile(
                  title: context.strings.confirmPassword,

                  textField: AppTextFormField(
                    hintText: context.strings.enterYourPassword,
                  ),
                ),
                Row(

                  children:  <Widget>[
                    Expanded(
                      child: FormTile(
                        title: context.strings.phoneNumber,
                        textField: AppTextFormField(
                          hintText: context.strings.enterYourPhoneNumber,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: FormTile(
                        title: context.strings.country,
                        textField: AppTextFormField(
                          hintText: context.strings.enterYourCountry,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children:  <Widget>[

                    Expanded(
                      child: FormTile(
                        title: context.strings.promoCode,
                        textField: AppTextFormField(
                          hintText: context.strings.uu545645,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: FormTile(
                        title: context.strings.userID,
                        textField: AppTextFormField(
                          hintText: context.strings.enterYourUserId,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppOutlineButton(
                      onPressed: () {
                        context.appViewModel.signUp(
                            userName: 'xyz',
                            email: 'xyz@gmail.com',
                            password: '12345678');
                        //  showModalBottomSheet<void>(
                        //    context: context,
                        //   enableDrag: true,
                        //   isScrollControlled: true,
                        //   backgroundColor: Colors.black.withOpacity(0.5),
                        //   shape: const RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.vertical(
                        //       top: Radius.circular(24),
                        //     ),
                        //   ),
                        //   builder: (BuildContext context) {
                        //     return BrandVerification();
                        //   },
                        // );
                      },
                      child: Text(
                        context.strings.checkOut,
                        style: const TextStyle(color: Colors.white),
                      )),

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
            color: colors.secondary, fontSize: 18, fontWeight: FontWeight.bold),

      ),
    );
  }
}
