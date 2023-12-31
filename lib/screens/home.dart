// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:to_do/constants/colors.dart';
import 'package:to_do/model/todo.dart';
import 'package:to_do/screens/to_do_items.dart';


class Home extends StatelessWidget {
   Home({super.key});

  @override
  Widget build(BuildContext context) {
    
  


    return Scaffold(
        backgroundColor: tdBGColor,
        appBar: _buildAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              searchBox(),
              mainlist(),
            ],
          ),
        ));
  }

  Widget mainlist() {

  List<ToDo> tasks = ToDo.toDoList();
    
    return Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 15),
                      child: const Text(
                        "All ToDos",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    for(ToDo task in tasks)
                        ToDoItems(todo: task),
                  ],
                ),
              );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: const TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
            ),
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(color: tdGrey)),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: tdBGColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              color: tdBlack,
            ),
            Container(
                height: 40,
                width: 40,
                color: tdBlack,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                ))
          ],
        ));
  }
}
