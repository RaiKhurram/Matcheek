import 'package:flutter/material.dart';

class ActivatePOMPage extends StatefulWidget {
  @override
  _ActivatePOMPageState createState() {
    return _ActivatePOMPageState();
  }
}

class _ActivatePOMPageState extends State<ActivatePOMPage> {
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
            icon: Icon(

                Icons.close, size: 40,color: Color.fromRGBO(159, 53, 57, 1)),
            onPressed: () {
              Navigator.pop(context);},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.check, size: 40,color: Color.fromRGBO(159, 53, 57, 1)),
              onPressed: () {

                Navigator.pushNamed(context, "/match");
              },
            ),
          ],
          centerTitle: true,
          title:
              Text(
                'Power of Match',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily:"impact",
                    color: Color.fromRGBO(159, 53, 57, 1)),
              )

        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(20),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/me_pink.png",
                            height: 40,
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
                            "assets/like_grey.png",
                            height: 30,
                          )
                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "20 days left before end of subscription\n3 matchs left for this month",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "powerofmatch");
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Upgrade >",
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ))
                  ],
                ),
                color: Color.fromRGBO(159, 53, 57, 0.4),
              ),

            ],
          ),
        ));
  }
}
