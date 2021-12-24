import 'package:flutter/material.dart';
import 'chatPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: BasePage(title: 'Nattr'),
    );
  }
}

class BasePage extends StatefulWidget {
  const BasePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.title,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 40.0,
          ),
        ),
      ),
      body: Column(
        children: [
          //One Contact
          InkWell(
            child: Container(
              child: Row(
                children: [
                  CircleAvatar(
                    child: Container(
                    child: Image.network(
                    'https://www.w3schools.com/howto/img_avatar.png',
                  ),
                    ),
              ),
                  Text(
                    'Andrew Walker',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    '10:25pm',
                    style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey
                    ),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ) ,
              padding: new EdgeInsets.fromLTRB(0, 0.0, 5.0, 1.0),
              color: Colors.white10,
            ) ,
            onTap:() {
              print("Pressed");
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ChatPage(username: "Andrew Walker"))
              );
            },
          )
          // end of one contact
        ],
      ),
    );
  }
}
