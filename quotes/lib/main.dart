
import 'package:flutter/material.dart';

import 'Quote.dart';

void main() => runApp(
      MaterialApp(
        home: Quotes(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(text: "Change the world by being yourself.", author: "- Amy Poehler"),
    Quote(text: "Every moment is a fresh beginning.", author: "- T.S Eliot"),
    Quote(
        text: "Never regret anything that made you smile.",
        author: "- Mark Twain"),
    Quote(text: "Change the world by being yourself.", author: "- Amy Poehler"),
    Quote(text: "Every moment is a fresh beginning.", author: "- T.S Eliot"),
    Quote(
        text: "Never regret anything that made you smile.",
        author: "- Mark Twain"),
    Quote(text: "Change the world by being yourself.", author: "- Amy Poehler"),
    Quote(text: "Every moment is a fresh beginning.", author: "- T.S Eliot"),
    Quote(
        text: "Never regret anything that made you smile.",
        author: "- Mark Twain"),
  ];

  Widget cardTemplate(quote) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        splashColor: Colors.grey[350],
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 5.0),
          child: Column(
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                    letterSpacing: 1.5, color: Colors.grey[600], fontSize: 18.0),
              ),
              Text(
                quote.author,
                textAlign: TextAlign.end,
                style: TextStyle(
                    letterSpacing: 1.5, color: Colors.grey[800], fontSize: 18.0),
              ),
              ButtonBar(
                children: <Widget>[

                  FlatButton(onPressed: () {}, child: Text("Save")),
                  FlatButton(
                    onPressed: () {},
                    child: Text("Remove"),
                  ),
                ],
              )
            ],
          ),

        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Awesome Quotes",
              style: TextStyle(
                letterSpacing: 2.0,
              )),
        ),
        body: SingleChildScrollView(
            child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: quotes.map((q) => cardTemplate(q)).toList(),
          ),
        )
        )
    );
  }
}
