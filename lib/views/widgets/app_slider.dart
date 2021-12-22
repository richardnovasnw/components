import 'package:flutter_xlider/flutter_xlider.dart';

import '../../ui.dart';

class AppSlider extends StatelessWidget {
  const AppSlider({Key? key, required this.min, required this.max}) : super(key: key);
  final double min;
  final double max;

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      values: [40],
      max: max,
      min: min,
      trackBar: FlutterSliderTrackBar(
        activeTrackBar: BoxDecoration(
            gradient: colors.purpleDeepPurple,
            borderRadius: BorderRadius.circular(5)
        ),
        activeTrackBarHeight: 6,
      ),
      onDragging: (int handlerIndex, dynamic lowerValue,dynamic upperValue ) {

      },
    );
  }
}
