import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Choices.dart';

void main() => runApp(MaterialApp(
  home: QR_Scanner(),
  debugShowCheckedModeBanner: false,
));

class QR_Scanner extends StatefulWidget {
  @override
  _QR_ScannerState createState() => _QR_ScannerState();
}

class _QR_ScannerState extends State<QR_Scanner> {

  String result = "Hello World !!!";
  bool isVisible = false;
  var meth ;

  Future scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
      });
    } on PlatformException catch (e) {
      if(e.code == BarcodeScanner.CameraAccessDenied){
        setState(() {
          result = "Camera access id denied";
        });
      } else {
        setState(() {
          result = "Error 404. Something went wrong";
        });
      }
    } on FormatException catch (e){
      setState(() {
        result = "You pressed back when camera was scanning";
      });
    } catch(ex){
      setState(() {
        result = "Error 404. Something went wrong";
      });
    }
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: (String choice) {},
              itemBuilder: (BuildContext context){
                return Choices.choices.map((String s){
                  return PopupMenuItem<String>(
                    value: s,
                    child: Text(s),
                  );
                }).toList();
              },
            )
          ],
          title: Text(
            "QR Scanner"
          ),
          centerTitle: true,
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                  child: new Text(
                    result,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    }
              ),
              SizedBox(height: 25.0,),
              FlatButton(
                color: Colors.blueAccent,
                child: Text('Launch',
                ),
                onPressed:(){
                 launch(result);
                }
              )
            ],
          ),
        ),
        floatingActionButton: InkWell(
          onTap: (){},
          child: FloatingActionButton.extended(
            onPressed: () {
              scanQR();
            },
            icon: Icon(Icons.camera_alt),
            label: Text("Let's Scan"),
          ),
        ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


