import 'package:dialog_app/helper/consts.dart';
import 'package:flutter/material.dart';
import 'manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Dialog Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  // TODO: implement widget
  Widget get _button => RaisedButton(
        onPressed: null,
        child: Text("data"),
      );

  Widget get _textField => TextField();
  Widget get _textField2 => TextField();
  Widget get _textField3 => TextField();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          DialogManager.show(
              title: "Welcome",
              barrierDismissible: false,
              description: "oke",
              buttons: [_button],
              context: context,
              inputs: [_textField,_textField2,_textField3],
              type: DialogType.success);
        },
        tooltip: 'Dialog',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
