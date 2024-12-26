import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesExample extends StatefulWidget {
  @override
  _SharedPreferencesExampleState createState() =>
      _SharedPreferencesExampleState();
}

class _SharedPreferencesExampleState extends State<SharedPreferencesExample> {
  String _savedValue = '';

  @override
  void initState() {
    super.initState();
    _loadSavedValue();
  }

  // Load saved value from SharedPreferences
  void _loadSavedValue() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedValue = prefs.getString('myKey') ?? 'No value saved';
    });
  }

  // Save a value to SharedPreferences
  void _saveValue() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('myKey', 'Hello from SharedPreferences!');
    _loadSavedValue(); // Reload saved value
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SharedPreferences Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(_savedValue),
            ElevatedButton(
              onPressed: _saveValue,
              child: Text('Save Value'),
            ),
          ],
        ),
      ),
    );
  }
}
