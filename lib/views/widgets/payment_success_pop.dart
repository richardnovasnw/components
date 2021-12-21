import 'package:gradient_widgets/gradient_widgets.dart';

import '../../ui.dart';

class PaymentSuccessPop extends StatelessWidget {
  const PaymentSuccessPop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: 433,
      width: 343,
      gradient: const LinearGradient(
          colors: <Color>[Colors.white12, Colors.white10],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                context.strings.paymentSuccessful,
                style: context.primaryTextTheme.headline5,
              ),
              const Icon(
                Icons.close,
                color: Colors.white,
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                color: Colors.purple,
                height: 100,
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: GradientText(
                  context.strings.yourPaymentWasSuccess,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  gradient: colors.purpleDeepPurple,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GradientText(
                    context.strings.paymentID,
                    style: context.primaryTextTheme.bodyText1!,
                    gradient: colors.purpleDeepPurple,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  const Text(
                    '121332',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          RagePrimaryButton(
              gradient: const LinearGradient(
                  colors: <Color>[Colors.blueGrey, Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              width: context.mediaSize.width,
              onPressed: () {},
              child: Text(
                context.strings.backToHome,
                style: context.primaryTextTheme.headline6,
              )),
        ],
      ),
    );
  }
}
