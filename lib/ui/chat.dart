import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() {
    return _ChatPageState();
  }
}

class _ChatPageState extends State<ChatPage> {
  bool send = false;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          actions: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text(
                "Edit",
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(56, 56, 56, 1)),
              ),
            )
          ],
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Benjamin',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "last seen 15m ago",
                    style: TextStyle(
                        fontSize: 11, color: Color.fromRGBO(56, 56, 56, 0.6)),
                  )
                ],
              )
            ],
          ),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
//            color: Colors.white,
            child: Column(children: <Widget>[
              Flexible(
                  child: ListView.builder(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: index % 2 == 0
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            "Hey what’s up? did you\nmanage to sleep?",
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ]),
                                  SizedBox(
                                    width: 1.0,
                                  ),
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          "09.40",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  56, 56, 56, 0.7),
                                              fontSize: 10.0),
                                          textAlign: TextAlign.end,
                                        ),
                                      ]),
                                ],
                              ),
                              padding:
                                  EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
                              decoration: BoxDecoration(
                                  color: index % 2 == 0
                                      ? Color.fromRGBO(0, 201, 255, 0.4)
                                      : Color.fromRGBO(245, 244, 244, 1),
                                  borderRadius: BorderRadius.circular(8.0)),
                              margin: EdgeInsets.only(bottom: 10.0),
                            )
                          ],
                        );
                      })),
              Divider(height: 1.0),
              new Container(
                decoration:
                    new BoxDecoration(color: Theme.of(context).cardColor),
                child: IconTheme(
                    data: new IconThemeData(
                      color: Theme.of(context).accentColor,
                    ),
                    child: new Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: new Row(
                        children: <Widget>[
                          new Flexible(
                            child: new TextField(
                              style:
                                  TextStyle(height: 1.2, color: Colors.black),
                              onTap: () {
                                setState(() {
                                  send = true;
                                });
                              },
                              onChanged: (String messageText) {
                                setState(() {
                                });
                              },
                              decoration: new InputDecoration.collapsed(
                                  hintText: "Type your message.."),
                            ),
                          ),
                          send
                              ? FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    "SEND",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ))
                              : Row(
                                  children: <Widget>[
                                    IconButton(
                                      color: Theme.of(context).accentColor,
                                      onPressed: () {},
                                      icon: Icon(Icons.camera_alt),
                                    ),
                                    IconButton(
                                      color: Theme.of(context).accentColor,
                                      onPressed: () {},
                                      icon: Icon(Icons.mic),
                                    )
                                  ],
                                )
                        ],
                      ),
                    )),
              ),
            ])));
  }

  CupertinoButton getIOSSendButton() {
    return new CupertinoButton(
      child: new Text("Send"),
      onPressed: () {},
    );
  }

  IconButton getDefaultSendButton() {
    return new IconButton(
      icon: new Icon(Icons.send),
      onPressed: () {},
    );
  }
}
