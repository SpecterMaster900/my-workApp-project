import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/app_background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(30.0,0.0,30.0,0.0),
              child: Image.asset('lib/assets/app_logo.png',
                height: 100,
                width: 100,
              ),
            ),
            Image.asset('lib/assets/WHT_header.png'),
            Container(
              padding: const EdgeInsets.fromLTRB(30.0,0.0,30.0,0.0),
              color: Colors.black87,
              child: Text(
                  'Select an Option:',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber[600],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30.0,0.0,30.0,0.0),
              child: ElevatedButton(
                onPressed: (){
            Navigator.pushNamed(context, '/addPayperiod');
          },
          style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
            backgroundColor: Colors.amber[400],
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ), child: const Text('Create a new Pay Period'),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30.0,0.0,30.0,0.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/viewRecords');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber[400],
                  foregroundColor: Colors.black,
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ), child: const Text('View Pay Periods'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
