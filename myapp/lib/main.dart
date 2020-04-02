import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
          leading: GestureDetector(
            child: Icon(Icons.add_shopping_cart),
          ),
          backgroundColor: Colors.deepOrange[600],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
  Expanded(
    children:     <Widget>[
    
                  Container(
    
                      color: Colors.lightBlue,
    
                      margin: EdgeInsets.all(15.0),
    
                      child: Text(
    
                        "Centered",
    
                        textAlign:TextAlign.center,
    
                        style: TextStyle(
    
                            letterSpacing: 3.0,
    
                            color: Colors.red[500]
    
                        ),
    
                      )
    
                  ),
    
                  Container(
    
                    margin: EdgeInsets.all(15.0),
    
                    color: Colors.tealAccent,
    
                    child: Text(
    
                      "Dummy text is text that is used in the publishing industry or by web"
    
                          " designers to occupy the space which will later be filled with 'real' content. "
    
                          "This is required when, for example, the final text is not yet available.",
    
                      textAlign: TextAlign.center,
    
                      style: TextStyle(
    
                        color: Colors.purpleAccent
    
                      ),
    
    
    
                    ),
    
    
    
                  ),
    
                  Container(
    
                    margin: EdgeInsets.all(15.0),
    
                    child: Row(
    
                      children: <Widget>[
    
                        Icon(Icons.star),
    
                        Icon(Icons.star),
    
                        Icon(Icons.star),
    
                        Icon(Icons.star),
    
                        Icon(Icons.star),
    
                        Text("170 Reviews",
    
                          textAlign: TextAlign.center,)
    
                      ],
    
                    ),
    
                  ),
    
                  Container(
    
                    color: Colors.tealAccent,
    
                    child: Row(
    
                      children: <Widget>[
    
                        Column(
    
    
    
                          children: <Widget>[
    
                            Icon(Icons.book),
    
                            Text("Book"),
    
                            Text("25 Min"),
    
                          ],
    
                        ),
    
                        Column(
    
                          children: <Widget>[
    
                            Icon(Icons.access_time),
    
                            Text("Time"),
    
                            Text("25 Min"),
    
                          ],
    
                        ),
    
                        Column(
    
                          children: <Widget>[
    
                            Icon(Icons.fastfood),
    
                            Text("Book"),
    
                            Text("25 Min"),
    
                          ],
    
                        )
    
                      ],
    
                    )
    
                  )
    
    
    
    
    
                ],
  ),
],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          print("FAB Clicked");
          },
          backgroundColor: Colors.deepOrange[600],
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.deepOrange[200],
          child: Container(
            height: 50.0,
          ),
        ),
      ),
    );
  }
}