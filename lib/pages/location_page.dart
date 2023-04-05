import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({
    super.key,
    required this.setLocation,
  });
  final Function(String?) setLocation;

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final _locationScreenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Set location',
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        leading: GestureDetector(
            child: const Icon(Icons.arrow_back_ios,
                color: Colors.black87, size: 20),
            onTap: () {
              Navigator.pop(context);
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
                controller: _locationScreenController,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 235, 235),
                    border: InputBorder.none,
                    hintText: 'Search your location')),
            const Divider(height: 30),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  minHeight: 30, minWidth: double.infinity),
              child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 192, 192, 192),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextButton(
                    onPressed: () {
                      //refresh state of widget homepage
                      widget.setLocation(_locationScreenController.text);
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Set location',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  )),
            ),
            const Divider(height: 30),
          ],
        ),
      ),
    );
  }
}
