import 'package:flutter/material.dart';
import 'package:google_clone/widgets/footer_text.dart';
import 'package:google_clone/colors.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.all(
          5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FooterText(title: 'About'),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'Advertising '),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'Business'),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'How Search works'),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterText(title: 'Privacy'),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'Terms '),
                SizedBox(
                  width: 10,
                ),
                FooterText(title: 'Settings'),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
