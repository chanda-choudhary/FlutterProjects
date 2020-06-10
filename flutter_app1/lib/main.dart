import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() {
  runApp(
      MaterialApp(
        title: "Exploring UI Widget",
        home: Scaffold(
          appBar: AppBar(title: Text("Long List"),),
          body: getListView(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("FAB is clicked");
            },
            child: Icon(Icons.add),
            tooltip: 'Add one more item',
          ),
        ),
      )
  );
}

void showSnackBar(BuildContext context, String items) {
  var snackBar = SnackBar(
    content: Text("You just tapped $items"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: (){
          debugPrint("Performing dummy undo operation");
  },
  )
  ,);
  Scaffold.of(context).showSnackBar(snackBar
  );
}

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Item : $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          onTap: () {
            showSnackBar(context, listItems[index]);
          },
        );
      }
  );
  return listView;
}
