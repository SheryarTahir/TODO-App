
import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference our box
  final _mybox = Hive.box('myBox');

  // run this method if this is the first time ever opening this app
  void createInitialData() {
  toDoList = [
    ['Make a todo', false],
    ['Do exercise', false],
  ];
  }

  // load the data from database
  void loadData() {
    toDoList = _mybox.get('TODOLIST');
  }

  //update the database
  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}

