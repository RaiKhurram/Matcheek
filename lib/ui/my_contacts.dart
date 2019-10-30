import 'package:flutter/material.dart';

class MyContactsPage extends StatefulWidget {
  @override
  _MyContactsPageState createState() {
    return _MyContactsPageState();
  }
}

class _MyContactsPageState extends State<MyContactsPage> {

  bool overlay=false;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {},

          ),
          centerTitle: true,
          title:
              Text(
                'My Contacts',
                style: TextStyle(fontSize: 22, color: Colors.black),
              )

        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
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
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ]),
                        textAlign: TextAlign.start,
                      ),
                      Flexible(child: Container()),
                   FlatButton(onPressed: (){
                     Navigator.pushNamed(context, "/addcontact");
                   }, child: Row(children: <Widget>[   Icon(
                        Icons.add_circle,
                        color: Color.fromRGBO(133, 126, 126, 1),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add Contact",
                        style: TextStyle(fontSize: 18),
                      )],))
                    ],
                  )),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(245, 244, 244, 1),
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Stack(
                children: <Widget>[
                  ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      padding: EdgeInsets.all(10),
                      itemBuilder: (context, index) {
                        if (index == 5) {
                          return Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor:
                                      Colors.grey,
                                  child: Text(
                                    "AH",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Adam Hor",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Flexible(child: Container()),
                                Image.asset("assets/report.png",height: 12,),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Phone not recognized",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(159, 53, 57, 1)),
                                ),
                                Flexible(child: Container()),
                        IconButton(icon:  Image.asset(
                                  "assets/close.png",
                                  height: 25,
                                ),onPressed: (){},)
                              ],
                            ),
                          );
                        } else
                          return Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor:
                                  Colors.grey,
                                  child: Text(
                                    "AH",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Adam Hor",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Flexible(child: Container()),
                                IconButton(icon: Image.asset(
                                  "assets/close.png",
                                  height: 25,
                                ), onPressed: (){
                                  setState(() {
                                    overlay=!overlay;
                                  });
                                })
                              ],
                            ),
                          );
                      }),
                  !overlay?Container(): Container(
                    padding: EdgeInsets.all(10),
                    color: Color.fromRGBO(244, 245, 245, 1),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              "assets/close.png",
                              height: 30,
                            ),
                            Container(
                              child: Text(
                                  "Once a contact or a phone number has been removed, this phone number cannot be reassociated with your account. If you wished not to have removed any contact or phone number, you can reactivate it by clicking on the red cross again for a short perdiod of time."),
                              width: MediaQuery.of(context).size.width * 0.8,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(onPressed: () {setState(() {
                              overlay=!overlay;
                            });}, child: Text("OK"))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(245, 244, 244, 1),
                child: Text(
                  "B",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        ));
  }
}
