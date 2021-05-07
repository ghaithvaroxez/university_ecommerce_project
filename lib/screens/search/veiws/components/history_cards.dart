import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:university_ecommerce_app/screens/search/veiws/components/result_body.dart';

class HistoryCards extends StatefulWidget {
  const HistoryCards({
    @required this.searchHistory,
  });

  final Set<String> searchHistory;

  @override
  _HistoryCardsState createState() => _HistoryCardsState();
}

final GlobalKey<TagsState> _globalKey = GlobalKey<TagsState>();

class _HistoryCardsState extends State<HistoryCards> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(16),
      child: Tags(
        key: _globalKey,
        itemCount: widget.searchHistory.length,
        columns: 6,
        itemBuilder: (index) {
          return ItemTags(
            // splashColor: Colors.green,
            // colorShowDuplicate: Colors.green,
            // highlightColor: Colors.green,
            activeColor: Colors.grey[350],
active: false,
            pressEnabled: false,
            index: index,
            title: widget.searchHistory.elementAt(index),
            textStyle: TextStyle(fontSize: 16),
              removeButton: ItemTagsRemoveButton(
                color: Colors.white,
                backgroundColor: Colors.grey[350],
                onRemoved: (){
                  // Remove the item from the data source.
                  setState(() {
                    // required
                    widget.searchHistory.remove(widget.searchHistory.elementAt(index));
                  });
                  //required
                  return true;
                },
              ),
          );
        },
      ),
    );

    // Wrap(
    // direction: Axis.horizontal,
    // children: [

    // ...List.generate(
    //   widget.searchHistory.length,
    //   (index) =>

    //     Card(
    //   color: Colors.grey[350],
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(15),
    //   ),
    //   child: Row(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Padding(
    //         padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
    //         child: ConstrainedBox(
    //           constraints:
    //               BoxConstraints(maxWidth: width - height * 5 / 64),
    //           child: GestureDetector(
    //             child: AutoSizeText(
    //               widget.searchHistory.elementAt(index),
    //               style: TextStyle(fontSize: height * 1.7 / 64),
    //               overflow: TextOverflow.ellipsis,
    //             ),
    //             onTap: () {
    //               showMaterialModalBottomSheet(
    //                 animationCurve: Curves.bounceIn,
    //                 expand: false,
    //                 builder: (BuildContext context) {
    //                   SystemChannels.textInput
    //                       .invokeMethod('TextInput.hide');
    //                   return ResultBody(
    //                     searchWord: widget.searchHistory.elementAt(index),
    //                   );
    //                 },
    //                 context: context,
    //               );
    //             },
    //           ),
    //         ),
    //       ),
    //       IconButton(
    //         iconSize: height * 2 / 64,
    //         icon: Icon(
    //           Icons.clear,
    //         ),
    //         onPressed: () {
    //           setState(() {
    //             widget.searchHistory
    //                 .remove(widget.searchHistory.elementAt(index));
    //           });
    //         },
    //       )
    //     ],
    //   ),
    // ),
    // )
    // ],
    // );
  }
}
