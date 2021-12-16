import '../../ui.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                context.strings.checkout,
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
              Row(
                children: <Widget>[
                  Container(
                    height: 69,
                    width: 69,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://i.pinimg.com/564x/e6/f8/a3/e6f8a3a92aecb36a362521332f0bcf1d.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    height: 69,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'NFT Name',
                          style: context.primaryTextTheme.bodyText1
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '1.05 ${context.strings.maticSent}',
                          style: context.primaryTextTheme.bodyText1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'June 04 at 3:00pm',
                            style: context.primaryTextTheme.subtitle2
                                ?.copyWith(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  '5rcg68vcgcy88yg7g7',
                  style: context.primaryTextTheme.subtitle2
                      ?.copyWith(fontSize: 13),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 279,
            child: Column(
              children: <Widget>[
                const CheckoutTextRow(
                  text: '1.005',
                  eth: '',
                ),
                CheckoutTextRow(
                  text: context.strings.yourBalance,
                  eth: '8.498',
                ),
                CheckoutTextRow(
                  text: context.strings.serviceFee,
                  eth: '0',
                ),
                CheckoutTextRow(
                  text: context.strings.youWillPay,
                  eth: '0.007',
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              RagePrimaryButton(
                onPressed: () {},
                width: context.mediaSize.width,
                child: Text(context.strings.checkOut),
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
            '$eth ${context.strings.eth}',
            style: context.primaryTextTheme.bodyText1
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
