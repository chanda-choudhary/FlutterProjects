import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0,top: 40.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            /*width: 200.0,
              height: 100.0,
              margin: EdgeInsets.only(left: 35.0,top:50.0 ),*/
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Indigo",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Bangalore to Nagpur",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Air India",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35 ,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Bangalore to Goa",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
