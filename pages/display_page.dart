import 'package:flutter/material.dart';


class DisplayPage extends StatefulWidget {
  const DisplayPage({super.key});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {

  @override
  Widget build(BuildContext context) {
    Map recData = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          recData['payperiod'],
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[400],
        elevation: 15,
        shadowColor: Colors.black,
        toolbarHeight: 56,
        toolbarOpacity: 0.5,
      ) ,
      drawer: Drawer(
        backgroundColor: Colors.cyanAccent,
        child: ListView(
          padding:EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber[600],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'lib/assets/app_logo.png',
                    height: 70,
                    width: 70,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,0.0),
                    child: const Text(
                      'Navigation',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
                title: const Text('View Records',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/viewRecords');
                }
            ),
            ListTile(
                title: const Text('Edit pay period',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamedAndRemoveUntil('/loading',
                          (Route<dynamic> route) => false,
                      arguments: {
                    'payPeriod': recData['payPeriod'],
                  });
                }
            ),
            ListTile(
                title: const Text('Main Menu',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/HomeMenu');
                }
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
         image: DecorationImage(
         image: AssetImage('lib/assets/app_background.png'),
         fit: BoxFit.fill,
         ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 8, 30, 10),
                      child: Stack(
                        children:[
                          Text('Day',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 4
                                ..color = Colors.amber,
                            ),
                          ),
                          const Text('Day',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 8, 80, 10),
                      child: Stack(
                        children:[
                          Text('Date',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 4
                                ..color = Colors.amber,
                            ),
                          ),
                          const Text('Date',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 8, 20, 10),
                      child: Stack(
                        children:[
                          Text('Reg',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 4
                                ..color = Colors.amber,
                            ),
                          ),
                          const Text('Reg',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 8, 5, 10),
                      child: Stack(
                        children:[
                          Text('OT',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 4
                                ..color = Colors.amber,
                            ),
                          ),
                          const Text('OT',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['0-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['0-0'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['0-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['0-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['0-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['0-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['0-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['0-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['1-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['1-0'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['1-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['1-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['1-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['1-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['1-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['1-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['2-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['2-0'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['2-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['2-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['2-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['3-0'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['2-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['2-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['3-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['3-0'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['3-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['3-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['3-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['3-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['3-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['3-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['4-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['4-0'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['4-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      const Text('4-1',
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['4-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      const Text('4-2',
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['4-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['4-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['5-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['5-0'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['5-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['5-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['5-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['5-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['5-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['5-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['6-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['6-0'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['6-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['6-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['6-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['6-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['6-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['6-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['7-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      const Text('7-0',
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['7-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['7-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['7-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['7-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['7-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['7-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['8-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      const Text('8-0',
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['8-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['8-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['8-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['8-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['8-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['8-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['9-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['9-0'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['9-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['9-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['9-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['9-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['9-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['9-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['10-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['10-0'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['10-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['10-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['10-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['10-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['10-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['10-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['11-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['11-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['11-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['11-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['11-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['11-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['11-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['11-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['12-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['12-0'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['12-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['12-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['12-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['12-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['12-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['12-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 20, 10),
                  child: Stack(
                    children:[
                      Text(recData['13-0'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['13-0'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['13-1'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['13-1'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['13-2'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['13-2'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['13-3'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['13-3'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(130, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text('Total',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      const Text('Total',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['regHours'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['regHours'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text(recData['oTHours'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['oTHours'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
            Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(140, 8, 10, 10),
                  child: Stack(
                    children:[
                      Text('Grand Total Hours',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      const Text('Grand Total Hours',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 5, 10),
                  child: Stack(
                    children:[
                      Text(recData['grandTotal'],
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.amber,
                        ),
                      ),
                      Text(recData['grandTotal'],
                        style: const TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
          ],
        ),
    ),
    );
  }
}
