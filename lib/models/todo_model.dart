import 'package:flutter/cupertino.dart';

class TodoModel {
  late String title;
  bool done;

  TodoModel({required this.title, this.done = false});
}
