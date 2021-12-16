import 'package:infinet/views/widgets/rage_primary_button.dart';

import '../../ui.dart';

class ChainTile extends StatelessWidget {
  const ChainTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Text(
          'Select Chain',
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < 4; i++)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                  primary: i==0?Colors.purple:Colors.grey
                ),
                onPressed: () {

                },
                child: Text('index $i'),

              ),
          ],
        )
      ],
    );
  }
}
