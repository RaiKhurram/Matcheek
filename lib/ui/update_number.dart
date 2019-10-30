import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateNumPage extends StatefulWidget {
  @override
  _UpdateNumPageState createState() {
    return _UpdateNumPageState();
  }
}

class _UpdateNumPageState extends State<UpdateNumPage> {


  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
          leading: IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.black,
              ),
              onPressed: () {}),
          backgroundColor: Colors.white,
          title:  Image.asset("assets/logo_text.png",height: 44,),
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
            SizedBox(height: 5,),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 25,

                ),
                Container(
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(254, 0, 18, 1),
                    child: Text(
                      "Delete account",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "+41 78 75 758 52",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(254, 0, 18, 1),
                    child: Text(
                      "Delete account",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 27,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/match");
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color.fromRGBO(47, 121, 141, 1),
                    child: Text(
                      "Remove phone",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Do you wish to delete one of the accounts or to remove the new added phone?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "These phone numbers are associated with different accounts. If you wish to associate those numbers to one account you will have to delete one account. If you decide to remove the new phone, both accounts will be saved. Once an account is deleted, all the associated Contacts and Likes are lost. ",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
