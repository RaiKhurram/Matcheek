import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNumPage2 extends StatefulWidget {
  @override
  _AddNumPage2State createState() {
    return _AddNumPage2State();
  }
}

class _AddNumPage2State extends State<AddNumPage2> {


  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.black,
              ),
              onPressed: () {Navigator.pop(context);}),
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
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 27,
                    child: RaisedButton(
                      onPressed: () {
                      Navigator.pushNamed(context, "/addNum");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Color.fromRGBO(254, 0, 18, 1),
                      child: Text(
                        "DeleteAccount",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(color: Colors.white, fontSize: 13.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.32,
                  ),
                ]

              ),



            SizedBox(
              height: 15,
            ),
            Text(
              "+41 78 75 758 52",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/addNum");
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(254, 0, 18, 1),
                    child: Text(
                      "Delete Account",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                    ),
                  ),
                ),
                Container(
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/addNum");

                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(47,121,141, 1),
                    child: Text(
                      "Remove phone",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 23,),
            Text(
              "Do you wish to delete one of the accounts or to remove the new added phone?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),

            Text(
              "The phone numbers are associated with different accounts. if you wish to associate those numbers to one accounts. if you wish to associate those number to one account you have to delete one account. if you decide to remove the new phone, both accounts will be saved.Once an account is delted, all the associated Contacts and likes are lost. ",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
