// ignore: unused_import
import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

// Todo('Task name1', 'dont forget to use red pen');

// This is a Manual list ---->>>>
// ignore: non_constant_identifier_names
List<Todo> MyCustomList = [
  const Todo('paint', 'paint it black'),
  const Todo('pet the Dog', 'Use a comb to brush as well'),
  const Todo('Go to Moon', 'Dont forget to Use rockets'),
];

void main() {
  runApp(MaterialApp(
    title: 'App',
    home: TodosScreen(todos: MyCustomList),
  ));
}

class TodosScreen extends StatelessWidget {
  const TodosScreen({Key? key, required this.todos}) : super(key: key);

  final List<Todo> todos;
  // refer to that List as todos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            // Todo Object Instance todos[index],
            // you can grab .title, .description
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    // HomeListView --> Todo Object ---> DetailsScreen todo (how to Pass the Details Screen)
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(todo: todos[index]),
                    ));
              },
            );
          }),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.todo}) : super(key: key);
  // Single Todo Object

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(todo.title)
        ),
        body:Center(child: Text(todo.description),)
    ) ;
  }
}
