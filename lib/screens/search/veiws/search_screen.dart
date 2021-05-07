
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/search_bar.dart';
import 'components/search_body.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Set<String> searchHistory = {"Serafi", "qddo"};
  final textFieldController = TextEditingController();
  String searchWord;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchBar2(searchHistory, searchWord, textFieldController),

            SearchBody(searchHistory, searchWord),
          ],
        ),
      ),
    );
  }
}
