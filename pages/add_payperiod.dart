import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:work_hour_tracker/services/set_payperiod_days.dart';
import '../services/data_management.dart';
import '../services/input_formater.dart';

class AddPayPeriod extends StatefulWidget {
  const AddPayPeriod({super.key});

  @override
  State<AddPayPeriod> createState() => _AddPayPeriodState();
}

class _AddPayPeriodState extends State<AddPayPeriod> {

late bool writeiSSuccessful;


  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: 'Monday', child: Text('Monday')),
      const DropdownMenuItem(value: 'Tuesday', child: Text('Tuesday')),
      const DropdownMenuItem(value: 'Wednesday', child: Text('Wednesday')),
      const DropdownMenuItem(value: 'Thursday', child: Text('Thursday')),
      const DropdownMenuItem(value: 'Friday', child: Text('Friday')),
      const DropdownMenuItem(value: 'Saturday', child: Text('Saturday')),
      const DropdownMenuItem(value: 'Sunday', child: Text('Sunday')),
    ];
    return menuItems;
  }
  String selectedDay = "Monday";
  @override
  Widget build(BuildContext context) {

    final sDateController = TextEditingController();
    String sDate = '';
    final eDateController = TextEditingController();
    String eDate = '';

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
            children: <Widget>[
              Center(
                child: Stack(
                  children:[
                    Text(
                      'To create a new Pay Period, enter the following information:',
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
                      'To create a new Pay Period, enter the following information:',
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
              Container(
                padding: const EdgeInsets.fromLTRB(5, 40, 10, 5),
                child: Column(
                  children:[
                    Stack(
                      children:[
                        Text(
                          'Pay Period Start Day',
                          style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 4
                              ..color = Colors.amber,
                          ),
                        ),
                        const Text(
                          'Pay Period Start Day',
                          style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 160,
                        height: 60,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            value: selectedDay,
                            style: const TextStyle(color: Colors.black,fontSize: 20),
                            validator: (value) => value == null ? "Day of work week start" : null,
                            dropdownColor: Colors.white,
                            onChanged: (String? newValue){
                              setState((){
                                selectedDay = newValue!;
                              });
                            },
                            items: dropdownItems
                        ),
                      ),
                    ),
                    Row(
                      children:[
                        Column(
                          children:[
                            Stack(
                              children:[
                                Text(
                                  'Start Date',
                                  style: TextStyle(
                                    fontSize: 25,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.amber,
                                  ),
                                ),
                                const Text(
                                  'Start Date',
                                  style: TextStyle(
                                    fontSize: 25,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 160,
                                height: 65,
                                child: TextField(
                                  controller: sDateController,
                                  onChanged: (String value){
                                    sDate = value;
                                    sDateController.text = sDate;
                                  },
                                  keyboardType: TextInputType.number,
                                  maxLength: 11,
                                  inputFormatters: [
                                    DateFormatter(),
                                  ],
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'DD/MM/YYYY',
                                    contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Stack(
                              children:[
                                Text(
                                  'End Date',
                                  style: TextStyle(
                                    fontSize: 25,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 4
                                      ..color = Colors.amber,
                                  ),
                                ),
                                const Text(
                                  'End Date',
                                  style: TextStyle(
                                    fontSize: 25,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 160,
                                height: 65,
                                child: TextField(
                                  maxLength: 11,
                                  maxLengthEnforcement: MaxLengthEnforcement.
                                  truncateAfterCompositionEnds,
                                  controller: eDateController,
                                  onChanged: (String value){
                                    eDate = value;
                                    eDateController.text = eDate;
                                  },
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    DateFormatter(),
                                  ],
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'DD/MM/YYYY',
                                    contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        String payPeriod =  '$sDate-$eDate';
                        DataManager dm = DataManager(textFile: payPeriod);
                        SetPayperiodDays setPPD = SetPayperiodDays(
                            selectedDay: selectedDay, payPeriod: payPeriod);

                        //create file and write to data
                        List<String>data = setPPD.prepareWriteData();
                        writeiSSuccessful = await dm.writeText(data);

                        if (mounted) {
                          setState(() {
                            if(writeiSSuccessful == true){
                              String sc = "1";
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/recordOptions', (Route<dynamic> route) => false,
                                  arguments:{
                                    'payPeriod': payPeriod,
                                    'sc': sc,
                                  });
                            }else{
                              showDialog(
                                context: context,
                                builder: (BuildContext context){
                                  return AlertDialog(
                                    title: const Text('Error'),
                                    content: const Text('Unable to write file. '
                                        'Cant find directory'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/HomeMenu');
                                        }, child: const Text('close'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          });
                        }

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[400],
                        foregroundColor: Colors.black,
                        disabledBackgroundColor: Colors.amber[700],
                        disabledForegroundColor: Colors.black,
                        textStyle: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      child: const Text('Create'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
