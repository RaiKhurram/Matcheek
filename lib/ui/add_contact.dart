import 'package:flutter/material.dart';

class AddContactPage extends StatefulWidget {
  @override
  _AddContactPageState createState() {
    return _AddContactPageState();
  }
}

class _AddContactPageState extends State<AddContactPage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/nolike");
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.check,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/nolike");},
            ),
          ],
          title: Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
              ),
              Text(
                'My Contacts',
                style: TextStyle(fontSize: 22, color: Colors.black),
              )
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                            text: 'Contact Google\n',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'bob.john@gmail.com',
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ]),
                        textAlign: TextAlign.start,
                      ),
                      Flexible(child: Container(),
                      )],
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/Edit_photo.png",
                        height: 60,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: "Name",
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder())),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.remove_circle,
                        color: Color.fromRGBO(159, 53, 57, 1),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Phone",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: "+41 78 75 758 52",
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder())),
                      ),
                      Flexible(child: Container()),
                      Image.asset(
                        "assets/close.png",
                        height: 30,
                      )
                    ],
                  ),SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.remove_circle,
                        color: Color.fromRGBO(159, 53, 57, 1),
                      ),

                      Text(
                        "Phone",
                        style: TextStyle(fontSize: 14),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: "+41 78 75 758 52",
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder())),
                      ),

                      Image.asset("assets/report.png",height: 10,),

                      Text("Not recognized",style: TextStyle(color: Color.fromRGBO(159,53,57, 1),fontSize: 14),),

                       Image.asset(
                        "assets/close.png",
                        height: 30,
                      )
                    ],
                  ), SizedBox(
                    height: 10,
                  ),Row(
                    children: <Widget>[
                      Icon(
                        Icons.add_circle,
                        color: Color.fromRGBO(30, 100, 35, 1),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add Phone",
                        style: TextStyle(fontSize: 14),
                      ),


                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
