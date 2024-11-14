import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../services/data_management.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => InputFormState();
}

class InputFormState extends State<InputForm> {


  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    String payPeriod = data['payperiod'];

    //create a controller for row 0 col 1 and fill it with text from data
    final r0c1Controller = TextEditingController();
    String r0C1 = data['0-1'];
    r0c1Controller.text = r0C1;

    //Controller for row 0 col 2
    final r0c2Controller = TextEditingController();
    String r0C2 = data['0-2'];
    r0c2Controller.text = r0C2;

    //Controller for row 0 col 3
    final r0c3Controller = TextEditingController();
    String r0C3 = data['0-3'];
    r0c3Controller.text = r0C3;

    //Controller for row 1 col 1
    final r1c1Controller = TextEditingController();
    String r1C1 = data['1-1'];
    r1c1Controller.text = r1C1;

    //controller for row 1 col 2
    final r1c2Controller = TextEditingController();
    String r1C2 = data['1-2'];
    r1c2Controller.text = r1C2;

    //controller for row 1 col 3
    final r1c3Controller = TextEditingController();
    String r1C3 = data['1-3'];
    r1c3Controller.text = r1C3;

    //controller for row 2 col 1
    final r2c1Controller = TextEditingController();
    String r2C1 = data['2-1'];
    r2c1Controller.text = r2C1;

    //controller for row 2 col 2
    final r2c2Controller = TextEditingController();
    String r2C2 = data['2-2'];
    r2c2Controller.text = r2C2;

    //controller for row 2 col 3
    final r2c3Controller = TextEditingController();
    String r2C3 = data['2-3'];
    r2c3Controller.text = r2C3;

    //controller for row 3 col 1
    final r3c1Controller = TextEditingController();
    String r3C1 = data['3-1'];
    r3c1Controller.text = r3C1;

    //controller for row 3 col 2
    final r3c2Controller = TextEditingController();
    String r3C2 = data['3-2'];
    r3c2Controller.text = r3C2;

    //controller for row 3 col 3
    final r3c3Controller = TextEditingController();
    String r3C3 = data['3-3'];
    r3c3Controller.text = r3C3;

    //controller for row 4 col 1
    final r4c1Controller = TextEditingController();
    String r4C1 = data['4-1'];
    r4c1Controller.text = r4C1;

    //controller for row 4 col 2
    final r4c2Controller = TextEditingController();
    String r4C2 = data['4-2'];
    r4c2Controller.text = r4C2;

    //controller for row 4 col 3
    final r4c3Controller = TextEditingController();
    String r4C3 = data['4-3'];
    r3c3Controller.text = r4C3;

    //controller for row 5 col 1
    final r5c1Controller = TextEditingController();
    String r5C1 = data['5-1'];
    r5c1Controller.text = r5C1;

    //controller for row 5 col 2
    final r5c2Controller = TextEditingController();
    String r5C2 = data['5-2'];
    r5c2Controller.text = r5C2;

    //controller for row 5 col 3
    final r5c3Controller = TextEditingController();
    String r5C3 = data['5-3'];
    r5c3Controller.text = r5C3;

    //controller for row 6 col 1
    final r6c1Controller = TextEditingController();
    String r6C1 = data['6-1'];
    r6c1Controller.text = r6C1;

    //controller for row 6 col 2
    final r6c2Controller = TextEditingController();
    String r6C2 = data['6-2'];
    r6c2Controller.text = r6C2;

    //controller for row 6 col 3
    final r6c3Controller = TextEditingController();
    String r6C3 = data['6-3'];
    r6c3Controller.text = r6C3;

    //controller for row 7 col 1
    final r7c1Controller = TextEditingController();
    String r7C1 = data['7-1'];
    r7c1Controller.text = r7C1;

    //controller for row 7 col 2
    final r7c2Controller = TextEditingController();
    String r7C2 = data['7-2'];
    r7c2Controller.text = r7C2;

    //controller for row 7 col 3
    final r7c3Controller = TextEditingController();
    String r7C3 = data['7-3'];
    r7c3Controller.text = r7C3;

    //controller for row 8 col 1
    final r8c1Controller = TextEditingController();
    String r8C1 = data['8-1'];
    r8c1Controller.text = r8C1;

    //controller for row 8 col 2
    final r8c2Controller = TextEditingController();
    String r8C2 = data['8-2'];
    r8c2Controller.text = r8C2;

    //controller for row 8 col 3
    final r8c3Controller = TextEditingController();
    String r8C3 = data['8-3'];
    r8c3Controller.text = r8C3;

    //controller for row 9 col 1
    final r9c1Controller = TextEditingController();
    String r9C1 = data['9-1'];
    r9c1Controller.text = r9C1;

    //controller for row 9 col 2
    final r9c2Controller = TextEditingController();
    String r9C2 = data['9-2'];
    r9c2Controller.text = r9C2;

    //controller for row 9 col 3
    final r9c3Controller = TextEditingController();
    String r9C3 = data['9-3'];
    r9c3Controller.text = r9C3;

    //controller for row 10 col 1
    final r10c1Controller = TextEditingController();
    String r10C1 = data['10-1'];
    r10c1Controller.text = r10C1;

    //controller for row 10 col 2
    final r10c2Controller = TextEditingController();
    String r10C2 = data['10-2'];
    r10c2Controller.text = r10C2;

    //controller for row 10 col 3
    final r10c3Controller = TextEditingController();
    String r10C3 = data['10-3'];
    r10c3Controller.text = r10C3;

    //controller for row 11 col 1
    final r11c1Controller = TextEditingController();
    String r11C1 = data['11-1'];
    r11c1Controller.text = r11C1;

    //controller for row 11 col 2
    final r11c2Controller = TextEditingController();
    String r11C2 = data['11-2'];
    r11c2Controller.text = r11C2;

    //controller for row 11 col 3
    final r11c3Controller = TextEditingController();
    String r11C3 = data['11-3'];
    r11c3Controller.text = r11C3;

    //controller for row 12 col 1
    final r12c1Controller = TextEditingController();
    String r12C1 = data['12-1'];
    r12c1Controller.text = r12C1;
    //controller for row 12 col 2

    final r12c2Controller = TextEditingController();
    String r12C2 = data['12-2'];
    r12c2Controller.text = r12C2;
    //controller for row 12 col 3
    final r12c3Controller = TextEditingController();
    String r12C3 = data['12-3'];
    r12c3Controller.text = r12C3;

    //controller for row 13 col 1
    final r13c1Controller = TextEditingController();
    String r13C1 = data['12-1'];
    r13c1Controller.text = r13C1;
    //controller for row 13 col 2
    final r13c2Controller = TextEditingController();
    String r13C2 = data['12-2'];
    r13c2Controller.text = r13C2;

    //controller for row 13 col 3
    final r13c3Controller = TextEditingController();
    String r13C3 = data['12-3'];
    r13c3Controller.text = r13C3;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Work Hour Tracker'),
        centerTitle: true,
        backgroundColor: Colors.amber[400],
        elevation: 15,
        shadowColor: Colors.black,
        toolbarHeight: 56,
        toolbarOpacity: 0.5,
      ),
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
                title: const Text('Create a New Pay Period',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/addPayperiod');
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Center(
                child: Stack(
                  children:[
                    Text(
                      'Update the pay period.  ',
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
                    const Text(
                        'Update the pay period.  ',
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
              Center(
                child: Stack(
                  children:[
                    Text(
                      '(add in you regular and overtime hours)',
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
                    const Text(
                      '(add in you regular and overtime hours)',
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 8, 90, 10),
                    child: Stack(
                      children:[
                        Text('Date',
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
                        const Text('Date',
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 8, 10, 10),
                    child: Stack(
                      children:[
                        Text('Reg',
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
                        const Text('Reg',
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 8, 20, 10),
                    child: Stack(
                      children:[
                        Text('OT',
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
                        const Text('OT',
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 260,
                child: Scrollbar(
                  thumbVisibility: true,
                  thickness: 20, //width of scrollbar
                  radius: const Radius.circular(20), //corner radius of scrollbar
                  scrollbarOrientation: ScrollbarOrientation.right,
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['0-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['0-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r0c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r0c2Controller,
                                onChanged: (String value){
                                  r0C2 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r0c3Controller,
                                onChanged: (String value){
                                  r0C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['1-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['1-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r1c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r1c2Controller,
                                onChanged: (String value){
                                  r1C2 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r1c3Controller,
                                onChanged: (String value){
                                  r1C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['2-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['2-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r2c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r2c2Controller,
                                onChanged: (String value){
                                  r2C2 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r2c3Controller,
                                onChanged: (String value){
                                  r2C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['3-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['3-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r3c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r3c2Controller,
                                onChanged: (String value){
                                  r3C2 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r3c3Controller,
                                onChanged: (String value){
                                  r3C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['4-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['4-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r4c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r4c2Controller,
                                onChanged: (String value){
                                  r4C2 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r4c3Controller,
                                onChanged: (String value){
                                  r4C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['5-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['5-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r5c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r5c2Controller,
                                onChanged: (String value){
                                  r5C2 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r5c3Controller,
                                onChanged: (String value){
                                  r5C3 = value;
                              },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['6-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['6-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r6c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r6c2Controller,
                                onChanged: (String value){
                                  r6C2 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r6c3Controller,
                                onChanged: (String value){
                                  r6C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['7-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['7-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r7c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r7c2Controller,
                                onChanged: (String value){
                                  r7C2 = value;
                              },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r7c3Controller,
                                onChanged: (String value) {
                                  r7C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['8-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['8-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r8c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r8c1Controller,
                                onChanged: (String value){
                                  r8C2 = value;
                              },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r8c3Controller,
                                onChanged: (String value){
                                  r8C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['9-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['9-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r9c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r9c2Controller,
                                onChanged: (String value){
                                  r9C2 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r9c3Controller,
                                onChanged: (String value){
                                  r9C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['10-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['10-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r10c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r10c2Controller,
                                onChanged: (String value){
                                  r10C2 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r10c3Controller,
                                onChanged: (String value){
                                  r10C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['11-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['11-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r11c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r11c2Controller,
                                onChanged: (String value) {
                                  r11C2 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r11c3Controller,
                                onChanged: (String value){
                                  r11C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['12-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['12-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r12c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r12c2Controller,
                                onChanged: (String value){
                                  r12C2 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r12c3Controller,
                                onChanged: (String value){
                                  r12C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Text(
                                  data['13-0'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.cyan,
                                  ),
                                ),
                                Text(
                                  data['13-0'],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              height: 35,
                              child: TextField(
                                controller: r13c1Controller,
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                enabled: false,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r13c2Controller,
                                onChanged: (String value){
                                  r13C2 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,8,8,8),
                            child: SizedBox(
                              width: 55,
                              height: 35,
                              child: TextField(
                                controller: r13c3Controller,
                                onChanged: (String value){
                                  r13C3 = value;
                                },
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                                ],
                                style: const TextStyle(
                                  fontSize: 15,
                                  height: 2.0,
                                  color: Colors.black,
                                ),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
             SizedBox(
               width: 100,
               height: 35,
               child: ElevatedButton(
                   onPressed: (){
                     DataManager dm = DataManager(textFile: payPeriod);
                     List<String> editedData= [];
                     editedData.add('${data['0-0']} $r0C1 $r0C2 $r0C3');
                     editedData.add('${data['1-0']} $r1C1 $r1C2 $r1C3');
                     editedData.add('${data['2-0']} $r2C1 $r2C2 $r2C3');
                     editedData.add('${data['3-0']} $r3C1 $r3C2 $r3C3');
                     editedData.add('${data['4-0']} $r4C1 $r4C2 $r4C3');
                     editedData.add('${data['5-0']} $r5C1 $r5C2 $r5C3');
                     editedData.add('${data['6-0']} $r6C1 $r6C2 $r6C3');
                     editedData.add('${data['7-0']} $r7C1 $r7C2 $r7C3');
                     editedData.add('${data['8-0']} $r8C1 $r8C2 $r8C3');
                     editedData.add('${data['9-0']} $r9C1 $r9C2 $r9C3');
                     editedData.add('${data['10-0']} $r10C1 $r10C2 $r10C3');
                     editedData.add('${data['11-0']} $r11C1 $r11C2 $r11C3');
                     editedData.add('${data['12-0']} $r12C1 $r12C2 $r12C3');
                     editedData.add('${data['13-0']} $r13C1 $r13C2 $r13C3');

                     //write data to file
                     dm.writeText(editedData);

                     String sc = "2";
                     Navigator.of(context).pushNamedAndRemoveUntil(
                         '/recordOptions',
                             (Route<dynamic> route) => false,
                         arguments:
                     {
                       'payPeriod': payPeriod,
                       'sc': sc
                     });
                   },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.amber[400],
                     foregroundColor: Colors.black,
                     disabledBackgroundColor: Colors.amber[700],
                     disabledForegroundColor: Colors.black,
                     textStyle: const TextStyle(
                       fontSize: 15,
                     ),
                   ),
                   child: const Text('Update'),
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
