import 'package:flutter_getx_todo_app/models/todo_model.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {
  // RxList todos = List.empty().obs;

  var todos = <TodoModel>[].obs;
}
