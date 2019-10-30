import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TempRoute3 extends StatefulWidget {
  @override
  _TempRouteState createState() {
    return _TempRouteState();
  }
}

class _TempRouteState extends State<TempRoute3> {

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
          leading: IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.black,
              ),
              onPressed: () {Navigator.pop(context);}),
          backgroundColor: Colors.white,
          centerTitle: true,
          title:
              Image.asset("assets/logo_text.png",height: 44,),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: ListView(
          children: <Widget>[
            Text(
              "Is the second phone number added to the new account already associated with another exsisting account",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {

                      Navigator.pushNamed(context, '/addNum2');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(254, 0, 18, 1),
                    child: Text(
                      "Yes",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 13.0,fontWeight: FontWeight.bold),
                    ),
                  ),
                ), Container(
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/addAnotherNum');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(47,121,141, 1),
                    child: Text(
                      "No",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 13.0,fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
