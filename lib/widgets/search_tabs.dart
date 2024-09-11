import 'package:flutter/material.dart';
import 'package:google_clone/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 31,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          searchTab(
            text: 'All',
            isActive: true,
            icon: Icons.search,
          ),
          SizedBox(
            width: 20,
          ),
          searchTab(
            text: 'Images',
            icon: Icons.image,
          ),
          SizedBox(
            width: 20,
          ),
          searchTab(
            text: 'Videos',
            icon: Icons.video_collection,
          ),
          SizedBox(
            width: 20,
          ),
          searchTab(
            text: 'Shopping',
            icon: Icons.shop,
          ),
          SizedBox(
            width: 20,
          ),
          searchTab(
            text: 'News',
            icon: Icons.newspaper,
          ),
          SizedBox(
            width: 20,
          ),
          searchTab(
            text: 'Maps',
            icon: Icons.map,
          ),
          SizedBox(
            width: 20,
          ),
          searchTab(
            text: 'Books',
            icon: Icons.book,
          ),
          SizedBox(
            width: 20,
          ),
          searchTab(
            text: 'More',
            icon: Icons.more_vert,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
