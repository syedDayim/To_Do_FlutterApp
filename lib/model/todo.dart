class ToDo{
  String? id;
  String? todoText;
  bool? isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false,});

  static List<ToDo> toDoList(){
    return [
      ToDo(id: '1', todoText: "Develop a Website", isDone: true),
      ToDo(id: '2', todoText: "Meeting", isDone: true),
      ToDo(id: '3', todoText: "CRM",),
      ToDo(id: '4', todoText: "Develop a Websote", isDone: true),
      ToDo(id: '5', todoText: "Host the Website",),
      ToDo(id: '6', todoText: "Go for a Walk",),
      ToDo(id: '7', todoText: "Eat vegetables",),
    ];
  }

}