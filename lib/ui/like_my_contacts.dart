import 'package:flutter/material.dart';

class LikeMyContactsPage extends StatefulWidget {
  @override
  _LikeMyContactsPageState createState() {
    return _LikeMyContactsPageState();
  }
}

class _LikeMyContactsPageState extends State<LikeMyContactsPage> {
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
                'Like My Contacts',
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
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(245, 244, 244, 1),
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            child: Text(
                              "AH",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Adam",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Flexible(child: Container()),
                          Image.asset(
                            "assets/Like_red.png",
                            height: 40,fit: BoxFit.fill,width: 40,
                          )
                        ],
                      ),
                    );
                  }),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(245, 244, 244, 1),
                child: Text(
                  "B",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  "Some of your contacts are missing?",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 27,
                child: RaisedButton(
                  onPressed: () {Navigator.pushNamed(context, "/mycontact");},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color.fromRGBO(47, 121, 141, 1),
                  child: Text(
                    "Check Contact List",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  "For your contacts to be recognized in Matcheek, each phone\nnumber must start with the corresponding country calling code.\nFor example:\nSwitzerland country code = +41 or 00 41\nThe US country code = +1 or 001 ",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ));
  }
}
