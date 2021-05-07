import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ResultBody extends StatelessWidget {
  ResultBody({
    @required this.searchWord,
  });

  final String searchWord;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    print(height * 1.5 / 64 as double);
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          child: Center(
            child: AutoSizeText(
              "The Result Search of \" $searchWord\" ",
              //minFontSize: height * 1 / 64,
              maxLines: 1,
              style: TextStyle(fontSize: height * 2 / 64),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        ...List.generate(
          2,
          (index) => Container(
            margin: EdgeInsets.all(10),
            color: Colors.black,
            height: 100,
            child: Text(
              "kemo",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
      ],
    );
  }
}
