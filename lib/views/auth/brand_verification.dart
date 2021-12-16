import 'package:infinet/views/widgets/app_textformfield.dart';
import 'package:infinet/views/widgets/form_tile.dart';

import '../../ui.dart';

class BrandVerification extends StatelessWidget {
  const BrandVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mediaQuery.size.height,
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: Container(
            height: 412,
            width: 348,
            color: Colors.yellow.withOpacity(0.5),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Brand Sign up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Please enter your brand authorization code to continue!',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: FormTile(
                        title: 'Authorizarion Code',
                        textField: AppTextFormField(
                          hintText: '',
                        ),),
                  ),
                  FormTile(
                      title: 'Brand Name',
                      textField: AppTextFormField(
                        hintText: 'Enter the name linked to this code',
                      ),),
                  FormTile(
                      title: 'Password',
                      textField: AppTextFormField(
                        hintText: 'Enter the brand account password provided',
                      ),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
