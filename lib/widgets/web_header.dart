import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 15, top: 4),
              child: Image.asset(
                'assets/images/google-logo.png',
                height: 30,
                width: 92,
              ),
            ),
            const SizedBox(
              width: 27,
            ),
            Container(
              width: size.width * 0.45,
              height: 44,
              decoration: BoxDecoration(
                color: searchColor,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: searchColor,
                ),
              ),
              child: TextFormField(
                onFieldSubmitted: (query) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(
                        searchQuery: query,
                        start: "0",
                      ),
                    ),
                  );
                },
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 14),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 16, bottom: 8),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 150,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 30,
                            width: 0.5,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset('assets/images/mic-icon.svg',
                              height: 25, width: 05),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset('assets/images/Icon.svg',
                              height: 25, width: 25),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.search, color: blueColor),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
