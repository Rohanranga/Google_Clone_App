import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  final Widget mobilescreenlayout;
  final Widget webscreenlayout;
  const ResponsiveLayoutScreen(
      {Key? key,
      required this.mobilescreenlayout,
      required this.webscreenlayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth <= 770) {
          return mobilescreenlayout;
        } else {
          return webscreenlayout;
        }
      },
    );
  }
}
