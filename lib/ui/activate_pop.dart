import 'package:flutter/material.dart';

class SelectedPOPPage extends StatefulWidget {
  @override
  _SelectedPOPPageState createState() {
    return _SelectedPOPPageState();
  }
}

class _SelectedPOPPageState extends State<SelectedPOPPage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading:IconButton(
            icon: Icon(Icons.close, size: 40,color:  Color.fromRGBO(116, 40, 111, 1)),
            onPressed: () {
              Navigator.pop(context);},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.check,size: 40, color: Color.fromRGBO(116, 40, 111, 1)),
              onPressed: () {
                Navigator.pushNamed(context, "/match");
              },
            ),
          ],
          centerTitle: true,
          title:
              Text(
                'Power of Ping',
                style: TextStyle(
                    fontSize: 24,

                    fontFamily:"impact",
                    color: Color.fromRGBO(116, 40, 111, 1)),
              )

        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text("Select Likes to whom you want to send an\nanonymous SMS invitation to join Matcheek!",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(20),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text(
                              "AH",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Adam Hor\n',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '+1 52 52 56 53 56',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:  Color.fromRGBO(26,39,159, 1)
                                    ),
                                  ),
                                ]
                            ),
                            textAlign: TextAlign.start,
                          ),

                          Flexible(child: Container()),
                          Image.asset(
                            "assets/msg_selected.png",
                            height: 25,
                          )
                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.1,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "20 days left before end of subscription\n3 matchs left for this month",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/powerofping");
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Upgrade >",
                              style: TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ))
                  ],
                ),
                color: Color.fromRGBO(116, 40, 111, 0.4),
              ),

            ],
          ),
        ));
  }
}
