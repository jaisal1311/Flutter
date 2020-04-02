import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatelessWidget{

  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.red, 
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 50.0),
            width: 400,
            height: 400,
            child: Column(
              children: <Widget>[
               Material(
                 elevation: 5.0,
                 color: Colors.green,
                 child: TextField(
                   decoration: InputDecoration(
                     hintText: "Username",
                     contentPadding: const EdgeInsets.all(10.0)
                   ),
                   style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.white
                   ),

                 ),
               ),
               Material(
                 elevation: 5.0,
                 color: Colors.green,
                 child: TextField(
                   decoration: InputDecoration(
                     hintText: "Password",
                     contentPadding: const EdgeInsets.all(10.0)
                   ),
                   style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.white
                   ),

                 ),
               ),
               Material(
                  
                  elevation: 5.0,
                  color: Colors.orange,
                  child: RaisedButton(
                    
                    hoverColor: Colors.cyan,
                    onPressed: (){},
                    color: Colors.white,
                    child: Text(
                      'Login'
                    ),
                  ),
               )
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}