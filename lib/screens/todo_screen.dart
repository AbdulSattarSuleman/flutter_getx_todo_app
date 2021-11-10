import 'package:flutter/material.dart';
import 'package:flutter_getx_todo_app/controllers/todo_controller.dart';
import 'package:flutter_getx_todo_app/models/todo_model.dart';
import 'package:get/get.dart';

class TodoScreen extends StatelessWidget {
  // const TodoScreen({Key? key}) : super(key: key);

  TextEditingController getInputValue = TextEditingController();
  final TodoController todoController = Get.find<TodoController>();

  TodoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                  child: TextField(
                controller: getInputValue,
                autofocus: true,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
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
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text('Cancel')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green, onPrimary: Colors.white),
                      onPressed: () {
                        todoController.todos
                            .add(TodoModel(title: getInputValue.text));
                      },
                      child: const Text('Add')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
