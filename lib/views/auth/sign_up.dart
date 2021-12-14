import 'package:infinet/ui.dart';
import 'package:infinet/views/widgets/app_logo.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar()
      ,
      backgroundColor: Colors.black,
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
Row(

  children: [
    AppLogoHorizontal(),
    Expanded(child: Text('Select which type of account you would like to set up',style: TextStyle(color: Colors.white),))

  ],
)
            ],
          ),
        ),
      ) ,

    );
  }
}
