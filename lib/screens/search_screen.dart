import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/services/api_service.dart';
import 'package:google_clone/widgets/Search_Result_Component.dart';
import 'package:google_clone/widgets/Search_tabs.dart';
import 'package:google_clone/widgets/search_footer.dart';
import 'package:google_clone/widgets/web_header.dart';

class SearchScreen extends StatelessWidget {
  final String start;
  final String searchQuery;
  const SearchScreen(
      {super.key, required this.searchQuery, required this.start});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Title(
      title: searchQuery,
      color: Colors.blue,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //webs search header
              const WebHeader(),
              //tabs for news,iamges,shopping ......
              Padding(
                padding: EdgeInsets.only(
                  left: size.width <= 750 ? 10 : 150.0,
                  top: 30,
                ),
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SearchTabs(),
                ),
              ),
              const Divider(
                thickness: 0.3,
                height: 0,
              ),
              //search results
              FutureBuilder(
                future: ApiService().fetchData(
                  queryTerm: searchQuery,
                  start: start,
                ),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            ListView.builder(
                              itemCount: snapshot.data?['items'].length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width <= 750 ? 10 : 150.0,
                                        top: 10,
                                      ),
                                      child: SearchResultComponent(
                                        desc: snapshot.data?['items'][index]
                                            ['snippet'],
                                        linkToGo: snapshot.data?['items'][index]
                                            ['link'],
                                        link: snapshot.data?['items'][index]
                                            ['formattedUrl'],
                                        text: snapshot.data?['items'][index]
                                            ['title'],
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  if (start != "0") {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => SearchScreen(
                                          searchQuery: searchQuery,
                                          start: (int.parse(start) - 10)
                                              .toString(),
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: const Text(
                                  '<Prev',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: blueColor,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => SearchScreen(
                                        searchQuery: searchQuery,
                                        start:
                                            (int.parse(start) + 10).toString(),
                                      ),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Next>',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: blueColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const SearchFooter(),
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
