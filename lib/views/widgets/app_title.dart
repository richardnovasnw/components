import 'package:flutter/material.dart';
import 'package:infinet/views/widgets/extensions.dart';

class AppTitle extends StatelessWidget {
  const AppTitle(this.text, {Key? key, this.style}) : super(key: key);
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headline5!.copyWith(
        fontWeight: FontWeight.w600,
        color: context.textTheme.headline6!.color,
      ),
    );
  }
}

class AppSubTitle extends StatelessWidget {
  const AppSubTitle(this.text, {Key? key, this.style}) : super(key: key);
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.subtitle1!.copyWith(
        fontWeight: FontWeight.w600,
        color: style?.color ?? context.textTheme.headline6!.color,
      ),
    );
  }
}
