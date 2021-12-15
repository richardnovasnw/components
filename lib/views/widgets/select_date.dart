import 'package:infinet/views/widgets/app_textformfield.dart';

import '../../ui.dart';

class SelectDate extends StatelessWidget {
  const SelectDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: 8,
      height: 240,
      width: 380,
      borderRadius: 16,
      gradient: LinearGradient(
          colors: <Color>[Colors.blueGrey.withOpacity(.25), Colors.white10]),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Set Dates',
                  style: context.primaryTextTheme.subtitle1
                      ?.copyWith(fontSize: 20),
                ),
              ),
              const AppCircleIcon(
                strokeWidth: 0,
                radius: 20,
                icon: Icons.calendar_today,
                backgroundColor: Colors.black38,
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                _SelectDateTextFiels(
                  text: 'Start Date',
                ),
                _SelectDateTextFiels(
                  text: 'Closing Date',
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                _SelectDateTextFiels(
                  text: 'Time Start',
                ),
                _SelectDateTextFiels(
                  text: 'Time Close',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SelectDateTextFiels extends StatelessWidget {
  const _SelectDateTextFiels({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                text,
                style: context.primaryTextTheme.bodyText2,
              ),
            ),
            const Expanded(
              child: AppTextFormField(
                borderRadius: 8,
                hintText: '_ _ _ _ _ _ _ _',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
