import 'package:flutter/material.dart';
import 'package:flutter_getx_todo_app/controllers/todo_controller.dart';
import 'package:flutter_getx_todo_app/screens/todo_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());
  
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Todo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(TodoScreen());
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        child: Obx(() {
          return ListView.separated(
            itemBuilder: (context, index) => ListTile(
              // Different style on basis of condition (new thing)
              title: Text(
                todoController.todos[index].title,
                style: todoController.todos[index].done
                    ? const TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.lineThrough,
                      )
                    : const TextStyle(color: Colors.black),
              ),
              trailing: Checkbox(
                value: todoController.todos[index].done,
                onChanged: (newValue) {
                  var todo = todoController.todos[index];
                  todo.done = newValue!;
                  todoController.todos[index] = todo;
                },
              ),
            ),
            separatorBuilder: (context, pos) => const Divider(),
            itemCount: todoController.todos.length,
          );
        }),
      ),
    );
  }
}
