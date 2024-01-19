import 'package:flutter/material.dart';

class VertiApp extends StatefulWidget {
  const VertiApp({Key? key}) : super(key: key);

  @override
  State<VertiApp> createState() => _VertiAppState();
}

class _VertiAppState extends State<VertiApp> {
  bool isSwitch = false;
   bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('App De Verti'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              debugPrint('Click');
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              debugPrint('Click');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Image.asset(
                'images/mor.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'esto es un widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blueGrey,
              ),
              onPressed: () {
                debugPrint('elevated button');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('outlined button');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('text button');
              },
              child: const Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('GestureDetector');
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.local_fire_department, color: Colors.red),
                  Text('Some text'),
                  Icon(Icons.local_fire_department, color: Colors.red),
                ],
              ),
            ),
            Switch(value: isSwitch, onChanged: (bool newBool){
              setState(() {
                isSwitch = newBool;
              });
            }),
            Checkbox(value: isChecked, onChanged: (bool? newBool){
              setState(() {
                isChecked = newBool;
              });
            }),
            Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
          ],
        ),
      ),
    );
  }
}
