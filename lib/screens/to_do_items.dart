import 'package:flutter/material.dart';
import 'package:to_do/constants/colors.dart';
import 'package:to_do/model/todo.dart';

class ToDoItems extends StatelessWidget {
  final ToDo todo;
  ToDoItems({super.key, required this.todo});

  
  


  @override
  Widget build(BuildContext context) {
 
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
      child: ListTile(
        onTap: () {
          print("clicked list item");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white, 
        leading: todo.isDone! ? Icon(Icons.check_box, color: tdBlue) : Icon(Icons.check_box_outline_blank , color: tdBlue),
        title: Text(
          "${todo.todoText}",
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone! ? TextDecoration.lineThrough: null,
          ),
          
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print("delted the todo item");
            },
          ),
        ),
        
      ),
      
    );
  }
}