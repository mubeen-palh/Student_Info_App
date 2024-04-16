import 'package:flutter/material.dart';

class Student {
  String name;
  int rollNo;
  double cgpa;
  String imageUrl;
  String fathername;
  String email;

  Student(this.name, this.rollNo, this.cgpa, this.imageUrl, this.fathername,
      this.email);
}

class Info_Page extends StatefulWidget {
  const Info_Page({super.key});

  @override
  State<Info_Page> createState() => _Info_PageState();
}

class _Info_PageState extends State<Info_Page> {
  final List<Student> students = [
    Student(
        "Mubashir Ameen",
        101,
        3.8,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU",
        "Ameen",
        "example@nu.edu.pk"),
    Student(
        "Samina Farooq",
        102,
        3.9,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIH3cVN9nVOwezMJZgjRo0YhASylFMo1nJpw&usqp=CAU",
        "Ameen",
        "example@nu.edu.pk"),
    Student(
        "Mubashir Ameen",
        103,
        3.8,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU",
        "Ameen",
        "example@nu.edu.pk"),
    Student(
        "Hamza Ahmed",
        104,
        3.9,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU",
        "Ameen",
        "example@nu.edu.pk"),
    Student(
        "Hasan Ali",
        105,
        3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU",
        "Ameen",
        "example@nu.edu.pk"),
    Student(
        "Muneeb Ali",
        105,
        3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU",
        "Ameen",
        "example@nu.edu.pk"),
    Student(
        "Amna Ali",
        105,
        3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIH3cVN9nVOwezMJZgjRo0YhASylFMo1nJpw&usqp=CAU",
        "Ameen",
        "example@nu.edu.pk"),
    Student(
        "Amna Rehmat",
        107,
        3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIH3cVN9nVOwezMJZgjRo0YhASylFMo1nJpw&usqp=CAU",
        "Ameen",
        "example@nu.edu.pk"),
    Student(
        "Zehra Ali",
        108,
        3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIH3cVN9nVOwezMJZgjRo0YhASylFMo1nJpw&usqp=CAU",
        "Ameen",
        "example@nu.edu.pk"),
    Student(
        "Mubeen Ali",
        109,
        3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU",
        "Ameen",
        "example@nu.edu.pk"),
    Student(
        "Mubarak Hussain",
        109,
        3.7,
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkF17GkzaTA0PzQjgSusQHlkBbFiA7_vswEA&usqp=CAU",
        "Ameen",
        "example@nu.edu.pk"),
    // Add more students as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Student Details'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(20.0),
          itemCount: students.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(
                      255, 136, 127, 127), // Choose your border color
                  width: 1.0, // Choose the border width
                ),
                borderRadius:
                    BorderRadius.circular(8.0), // Optional: border radius
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(students[index].imageUrl),
                ),
                tileColor: Color.fromARGB(255, 201, 225, 235),
                title: Text(students[index].name),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Roll No: ${students[index].rollNo}'),
                    Text('CGPA: ${students[index].cgpa}'),
                    Text('Father Name: ${students[index].fathername}'),
                    Text('Email: ${students[index].email}'),
                  ],
                ),
                onTap: () {
                  // Add any action when a student is tapped
                  print('Tapped on ${students[index].name}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
