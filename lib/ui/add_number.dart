import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNumPage extends StatefulWidget {
  @override
  _AddNumPageState createState() {
    return _AddNumPageState();
  }
}

class _AddNumPageState extends State<AddNumPage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
//          leading: IconButton(
//              icon: Icon(
//                Icons.clear,
//                color: Colors.black,
//              ),
//              onPressed: () {Navigator.pop(context);}),
          backgroundColor: Colors.white,
          title:
              Image.asset("assets/logo_text.png",width: 220,),

      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 15,left: MediaQuery.of(context).size.width*.10,right:MediaQuery.of(context).size.width*.10 ),
        child: ListView(
          children: <Widget>[
            Text(
              "Phone number validated!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "+41 78 75 758 52",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Do you want to add another phone number?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width*.25,
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/confirmPhone2");
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(254, 0, 18, 1),
                    child: Text(
                      "Add",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*.25,
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/defineUsername");

                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(47,121,141, 1),
                    child: Text(
                      "No",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "As we use your phone numbers to connect you anonymously and safely with your contacts, you can increase your chances to have a match if you register all your active phone numbers that your contacts may have shared with us to identify you.\n\n You can always add a new phone number later by accessing to your profile settings.",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
