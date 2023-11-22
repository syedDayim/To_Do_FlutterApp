import 'package:flutter/material.dart';
import 'package:to_do/constants/colors.dart';

class ToDoItems extends StatelessWidget {
  const ToDoItems({super.key});

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
        leading: const Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        title: const Text(
          "Develop a Website",
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: TextDecoration.lineThrough,
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