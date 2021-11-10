import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Expanded(
                  child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'What do you want to accomplish?',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red, onPrimary: Colors.white),
                      onPressed: () {},
                      child: Text('Cancel')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green, onPrimary: Colors.white),
                      onPressed: () {},
                      child: Text('Add')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
