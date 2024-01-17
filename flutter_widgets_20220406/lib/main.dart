import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Define the main app widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create a MaterialApp widget
    return MaterialApp(
      title: 'App De Verti',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // Set the home page to MyHomePage widget
      home: const MyHomePage(),
    );
  }
}

// Define the home page widget
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create a Scaffold widget
    return Scaffold(
      appBar: AppBar(
        title: const Text('App De Verti'),
        backgroundColor: Colors.blue,
      ),
      // Set the body to TextInputWidget widget
      body: const TextInputWidget(),
    );
  }
}

// Define a stateful widget for text input
class TextInputWidget extends StatefulWidget {
  const TextInputWidget({Key? key}) : super(key: key);

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

// Define the state for the text input widget
class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Create a column widget to display the text input and button
    return Column(
      children: <Widget>[
        // Create a text input field
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.message),
            labelText: 'Type a message',
          ),
        ),
        // Create a button to show the entered message in an alert dialog
        TextButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(controller.text),
                );
              },
            );
          },
          child: const Text('Show message'),
        ),
      ],
    );
  }
}
