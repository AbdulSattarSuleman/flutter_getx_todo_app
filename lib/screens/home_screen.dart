import 'package:flutter/material.dart';
import 'package:flutter_getx_todo_app/screens/todo_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Todo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const TodoScreen());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
