
import 'package:flutter/material.dart';
import 'QuoteCard.dart';
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
  int num = 9;
  bool isPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
              "Awesome Quotes",
              style: TextStyle(
                letterSpacing: 2.0,
              )
          ),
        ),
        body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: quotes.map((q) => QuoteCard(
                  quote: q,
                  delete: () {
                    setState(() {
                      quotes.remove(q);
                      num = quotes.length;
                    },);
                  },

                )).toList(),
          ),
        )
        ),
    );
  }
}


