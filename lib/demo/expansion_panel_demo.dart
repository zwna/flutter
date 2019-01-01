import 'package:flutter/material.dart';

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {

  bool _isExpanded = false;
  List<ExpansionPanelItem> _expansionPanelItems;

  @override
  void initState() {
    super.initState();
    _expansionPanelItems = <ExpansionPanelItem>[
       ExpansionPanelItem(
         headerText: 'Panel A',
         body: Container(
           padding: EdgeInsets.all(16.0),
           width: double.infinity,
           child: Text('Content For Panel A.'),
         ),
         isExpanded: false,
       ),
       ExpansionPanelItem(
         headerText: 'Panel B',
         body: Container(
           padding: EdgeInsets.all(16.0),
           width: double.infinity,
           child: Text('Content For Panel B.'),
         ),
         isExpanded: false,
       ),
       ExpansionPanelItem(
         headerText: 'Panel C',
         body: Container(
           padding: EdgeInsets.all(16.0),
           width: double.infinity,
           child: Text('Content For Panel C.'),
         ),
         isExpanded: false,
       ),
       ExpansionPanelItem(
         headerText: 'Panel D',
         body: Container(
           padding: EdgeInsets.all(16.0),
           width: double.infinity,
           child: Text('Content For Panel D.'),
         ),
         isExpanded: false,
       ),
       ExpansionPanelItem(
         headerText: 'Panel E',
         body: Container(
           padding: EdgeInsets.all(16.0),
           width: double.infinity,
           child: Text('Content For Panel E.'),
         ),
         isExpanded: false,
       ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ExpansionPanelDemo',
        ),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                ExpansionPanelList(
                  expansionCallback: (int panelIndex,bool isExpanded){
                    debugPrint("isExpanded == $isExpanded");
                    setState(() {
                      _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
                    });
                  },
                  children:_expansionPanelItems.map(
                      (ExpansionPanelItem item){
                        return ExpansionPanel(isExpanded: item.isExpanded,body: item.body,headerBuilder: (BuildContext context,bool isExpanded){
                             return Container(
                               padding: EdgeInsets.all(16.0),
                               child: Text(item.headerText),
                             );
                        });
                      },
                  ).toList(),
                ),
          ],
        ),
      ),
    );
  }
}

class ExpansionPanelItem{

  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded
});
}
