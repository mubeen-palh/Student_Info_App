import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Student {
  String name;
  int rollNo;
  double cgpa;
  String imageUrl;

  Student(this.name, this.rollNo, this.cgpa, this.imageUrl);
}

class MyApp extends StatelessWidget {
  final List<Student> students = [
    Student("Mubashir Ameen", 101, 3.8,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU"),
    Student("Samina Farooq", 102, 3.9,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIH3cVN9nVOwezMJZgjRo0YhASylFMo1nJpw&usqp=CAU"),
    Student("Mubashir Ameen", 103, 3.8,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU"),
    Student("Hamza Ahmed", 104, 3.9,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU"),
    Student("Hasan Ali", 105, 3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU"),
    Student("Muneeb Ali", 105, 3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU"),
    Student("Amna Ali", 105, 3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIH3cVN9nVOwezMJZgjRo0YhASylFMo1nJpw&usqp=CAU"),
    Student("Amna Rehmat", 107, 3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIH3cVN9nVOwezMJZgjRo0YhASylFMo1nJpw&usqp=CAU"),
    Student("Zehra Ali", 108, 3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIH3cVN9nVOwezMJZgjRo0YhASylFMo1nJpw&usqp=CAU"),
    Student("Mubeen Ali", 109, 3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU"),
    Student("Mubarak Hussain", 109, 3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU"),
    // Add more students as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student Details'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(20.0),
          itemCount: students.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(students[index].imageUrl),
              ),
              title: Text(students[index].name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Roll No: ${students[index].rollNo}'),
                  Text('CGPA: ${students[index].cgpa}'),
                ],
              ),
              onTap: () {
                // Add any action when a student is tapped
                print('Tapped on ${students[index].name}');
              },
            );
          },
        ),
      ),
    );
  }
}
