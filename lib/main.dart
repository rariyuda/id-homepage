import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int userAge = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Center(
          child: Text(
            'Pelog ID Card',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('bg_night.jpg'),
                radius: 40.0, 
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.pink[200],
            ),

            Text(
              'NAME',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey[800],
                ),),
            SizedBox(height: 10.0,),
            Text(
              'Reynolds Ryan',
              style: TextStyle(
                fontSize: 30.0,
                letterSpacing: 1.0,
                color: Colors.pink[900],
                ),),
            SizedBox(height: 30.0,),

            Text(
              'AGE',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey[800],
                ),),
            SizedBox(height: 10.0,),
            Text(
              '$userAge',
              style: TextStyle(
                fontSize: 30.0,
                letterSpacing: 1.0,
                color: Colors.pink[900],
                ),),
            SizedBox(height: 30.0,),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.pink[200],
              ),
              SizedBox(width: 10.0,),
              Text('reynolds.ryan@pelog.co.id')
            ],
          ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[400],
        onPressed: (){
          setState(() {
            userAge = userAge + 1;
          });
        },
        child: Icon(Icons.add),),
    );
  }
}

