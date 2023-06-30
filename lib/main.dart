import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text('MaverixPro'),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Handle logout logic here
            },
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Projects',
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Employees',
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            label: 'PM',
            backgroundColor: Colors.blue,
          ),
        ],
      ),



      body: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Project Name:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Project Name',
                ),
              ),
            ),

            SizedBox(height: 10),
            Text(
              'Project Description :',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'task description',
                ),
              ),
            ),

            SizedBox(height: 10),
            Text(
              'Project Manager :',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Project manager',
                ),
              ),
            ),

            SizedBox(height: 10),
            Text(
              'DeadLine:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '00/00/0000',
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Edit'),
              onPressed: () {
                // TODO: Add your edit button functionality here
              },
            ),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                // TODO: Add your edit button functionality here
              },
            ),
          ],
        ),

      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    )
));


class Home extends StatelessWidget {
  final String projectName = 'My Project';
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

