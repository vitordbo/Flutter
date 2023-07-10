import 'dart:convert';

import 'package:http/http.dart' as http;

Future main() async {
  final todo = await fetch();
  print(todo.toJson());
}

// get from https://jsonplaceholder.typicode.com/
Future<ToDo> fetch() async {
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  var todo = ToDo.fromJson(json);
  return todo;
}

/* json response =
  {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  }
*/

// json mapping
class ToDo {
  final String title;
  final int id;
  final int userId;
  final bool completed;

  ToDo(this.title, this.id, this.userId, this.completed);

  factory ToDo.fromJson(Map json) {
    return ToDo(json['title'], json['id'], json['userId'], json['completed']);
  }

  Map toJson() {
    return {
      'id': id,
      'title': title,
      'completed': completed,
      'userId': userId,
    };
  }
}
