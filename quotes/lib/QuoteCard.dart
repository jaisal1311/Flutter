import 'package:flutter/material.dart';

import 'Quote.dart';

class QuoteCard extends StatefulWidget {

  final Quote quote;
  final Function delete;
  final Function changeColor;
  QuoteCard({this.quote, this.delete, this.changeColor});

  @override
  _QuoteCardState createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {

  bool change = true;

  bool changeColor(){
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      color: (change) ? Color(0xff007397) : Color(0xff9A9A9A),
      child: InkWell(
        splashColor: Colors.grey[350],
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 5.0),
          child: Column(
            children: <Widget>[
              Text(
                widget.quote.text,
                style: TextStyle(
                    letterSpacing: 1.5, color: Colors.grey[600], fontSize: 18.0),
              ),
              Text(
                widget.quote.author,
                textAlign: TextAlign.end,
                style: TextStyle(
                    letterSpacing: 1.5, color: Colors.grey[800], fontSize: 18.0),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: () {
                      widget.delete();
                    },
                    label: Text("Delete"),
                    icon:Icon(Icons.delete),
                  ),
                  FlatButton.icon(
                    onPressed: () {
                      change = changeColor();
                    },
                    label: Text("Change"),
                    icon:Icon(Icons.refresh),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}