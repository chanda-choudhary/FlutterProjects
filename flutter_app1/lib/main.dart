import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Stateful App Example",
      home: FavoriteCity(),
    )
  );
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity="";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    debugPrint("Favorite city widget is created");
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful App Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              //onSubmitted can replace with onChanged
              onSubmitted: (String userInput){
                debugPrint("setState is called,this tells framework to redraw FavCity widget.");
                setState(() {
                  nameCity=userInput;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Your best city is $nameCity",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}