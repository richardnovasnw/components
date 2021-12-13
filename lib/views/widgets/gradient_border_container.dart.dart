import '../../ui.dart';

class GradientPainter extends CustomPainter {
  GradientPainter(
      {required this.gradient, this.strokeWidth, required this.borderRadius});

  final Gradient gradient;
  final double? strokeWidth;
  final double borderRadius;
  final Paint paintObject = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    final Rect innerRect = Rect.fromLTRB(strokeWidth ?? 4.0, strokeWidth ?? 4.0,
        size.width - (strokeWidth ?? 4.0), size.height - (strokeWidth ?? 4.0));
    final RRect innerRoundedRect =
        RRect.fromRectAndRadius(innerRect, Radius.circular(borderRadius));

    final Rect outerRect = Offset.zero & size;
    final RRect outerRoundedRect =
        RRect.fromRectAndRadius(outerRect, Radius.circular(borderRadius));

    paintObject.shader = gradient.createShader(outerRect);
    final Path borderPath =
        _calculateBorderPath(outerRoundedRect, innerRoundedRect);
    canvas.drawPath(borderPath, paintObject);
  }

  Path _calculateBorderPath(RRect outerRRect, RRect innerRRect) {
    final Path outerRectPath = Path()..addRRect(outerRRect);
    final Path innerRectPath = Path()..addRRect(innerRRect);
    return Path.combine(PathOperation.difference, outerRectPath, innerRectPath);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class GradientBorderContainer extends StatelessWidget {
  GradientBorderContainer({
    Key? key,
    required Gradient gradient,
    required this.child,
    this.strokeWidth,
    this.borderRadius = 32,
    this.padding,
  })  : painter = GradientPainter(
            gradient: gradient,
            strokeWidth: strokeWidth,
            borderRadius: borderRadius),
        super(key: key);

  final GradientPainter painter;
  final Widget child;
  final double? strokeWidth;
  final double borderRadius;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: painter,
        child:
            Container(padding: EdgeInsets.all(padding ?? 4.0), child: child));
  }
}
