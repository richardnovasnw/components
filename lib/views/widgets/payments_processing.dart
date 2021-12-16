import '../../ui.dart';

class PaymentProcessing extends StatelessWidget {
  const PaymentProcessing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      gradient: LinearGradient(colors: <Color>[
        Colors.blueGrey.withOpacity(.5),
        Colors.blueGrey.withOpacity(.3)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      height: 528,
      width: 343,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                context.strings.processing,
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
                  context.strings.purchasing,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  gradient: colors.purpleDeepPurple,
                ),
              ),
              GradientText(
                context.strings.yourPaymentIsProcessing,
                style: context.primaryTextTheme.bodyText1!,
                gradient: colors.purpleDeepPurple,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              RagePrimaryButton(
                onPressed: () {},
                width: context.mediaSize.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(context.strings.processing),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: RageOutlinedButton(
                  child: Text(context.strings.cancel),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CheckoutTextRow extends StatelessWidget {
  const CheckoutTextRow({
    Key? key,
    required this.text,
    required this.eth,
  }) : super(key: key);
  final String text;
  final String eth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text,
            style: context.primaryTextTheme.bodyText1
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            '$eth ETH',
            style: context.primaryTextTheme.bodyText1
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
