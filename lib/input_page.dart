import 'package:flutter/material.dart';
import 'info_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count1 = 0;
  int count2 = 0;
// Initial Selected Value
  String dropdownvalue1 = 'Semester 1';
  String dropdownvalue2 = 'Programming Fundamentals';
// List of items in our dropdown menu
  var semester = [
    'Semester 1',
    'Semester 2',
    'Semester 3',
    'Semester 4',
    'Semester 5',
    'Semester 6',
    'Semester 7',
    'Semester 8',
  ];
  var courses = [
    'Programming Fundamentals',
    'Object Oriented Programming',
    'Data Structures',
    'Operating Systems',
    'Design and Analysis of Algorithms ',
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teacher Portal"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Select Semester',
                  selectionColor: Colors.blue,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 170,
                ),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue1,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: semester.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue1 = newValue!;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Select Course',
                  selectionColor: Colors.blue,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue2,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: courses.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue2 = newValue!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const Info_Page();
                  }),
                );
                setState(() {
                  count1++;
                  count2++;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Background color
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Padding
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Button border radius
                ),
              ),
              child: const Text(
                'Select',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
