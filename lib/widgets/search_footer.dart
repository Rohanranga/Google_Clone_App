import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          color: footerColor,
          padding: EdgeInsets.symmetric(
            horizontal: size.width <= 750 ? 10 : 150.0,
            vertical: 15,
          ),
          child: Row(
            children: [
              const Text(
                'India',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 20,
                width: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.circle,
                color: Color(0xFF70757A),
                size: 12,
              ),
              const SizedBox(width: 10),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Narepally,Hyderaabad',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'From your device- Update location',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue, // Change the color here
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0,
                height: 9,
                color: Colors.black26,
              ),
              // Container(
              //   color: footerColor,
              //   padding: EdgeInsets.symmetric(
              //     horizontal: size.width <= 750 ? 10 : 150.0,
              //   ),
              //   child: const Row(
              //     children: [
              //       Text(
              //         'Send feedback',
              //         style: TextStyle(
              //           color: Colors.grey,
              //           fontSize: 15,
              //         ),
              //       ),
              //       SizedBox(width: 20),
              //       Text(
              //         'Privacy',
              //         style: TextStyle(
              //           color: Colors.grey,
              //           fontSize: 15,
              //         ),
              //       ),
              //       SizedBox(width: 20),
              //       Text(
              //         'Terms',
              //         style: TextStyle(
              //           color: Colors.grey,
              //           fontSize: 15,
              //         ),
              //       ),
              //       SizedBox(width: 20),
              //     ],
              //   ),
              // )
            ],
          ),
        )
      ],
    );
  }
}
