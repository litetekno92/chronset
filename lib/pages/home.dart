import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // title: Text(widget.title),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: ()  =>{}  ,              
             ),
                  PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: IconButton(
                  icon: Icon(Icons.email),
                  onPressed: () {
                   clicked(context, "Email sent");
                  },
                ),),
              ];
            },
          )
        ],
        title: Center(
          child: Image.asset(
            'images/chroniques-logo.png',
            fit: BoxFit.contain,
            height: 32,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 8.0,
              child: ListTile(
                leading: Icon(Icons.map),
                title: Text(
                  'Map',
                  style: TextStyle(color: Colors.white.withOpacity(0.6)),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              child: ListTile(
                leading: Icon(Icons.photo_album),
                title: Text(
                  'Album',
                  style: TextStyle(color: Colors.white.withOpacity(0.6)),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  'Phone',
                  style: TextStyle(color: Colors.white.withOpacity(0.6)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
void clicked(BuildContext context, menu) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(menu),
        action: SnackBarAction(
            label: 'UNDO',
            onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
}
