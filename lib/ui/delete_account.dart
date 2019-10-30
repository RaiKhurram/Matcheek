import 'package:flutter/material.dart';

class DeletePage extends StatefulWidget {
  @override
  _DeletePageState createState() {
    return _DeletePageState();
  }
}

class _DeletePageState extends State<DeletePage> {
  int next = 0;
  final List<String> _dropdownValues = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
  ];

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(245, 244, 244, 1),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
              ),
              Text(
                'Delete Account',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'We are sorry to see you go!',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Is there anything we can help you with? You can reach us by email at help@matcheek.com!',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'If not, thanks so much for giving Matcheek a shot!',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      padding: EdgeInsets.only(left: 20),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                        items: _dropdownValues
                            .map((value) => DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                ))
                            .toList(),
                        onChanged: (String _dropdownvalues) {},
                        isExpanded: false,
                        hint: Text('Reason for deleting account'),
                      )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  child: Text(
                    'Delete Account',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: (){Navigator.pushNamed(context, "/profile");},
                  color: Color.fromRGBO(167, 159, 159, 1.0),
                ),
              ),
            ],
          ),
        ));
  }
}
