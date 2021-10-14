
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,

        leading: Icon(
          Icons.menu
        ),
        title: Text('title data'),
        actions: [
          IconButton(icon: Icon(Icons.ac_unit),
              onPressed:(){print('clicked');}),
          IconButton(icon: Icon(Icons.account_balance),
          onPressed:(){
            print('hello');
          },
          ),
        ],
      ),
      body:Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.orange,
              height: 100,
              child: Text('hello world',
              style:TextStyle(
                color: Colors.black,
                fontSize: 30.0,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
