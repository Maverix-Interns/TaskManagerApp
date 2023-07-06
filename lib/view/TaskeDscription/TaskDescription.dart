import 'package:flutter/material.dart';

class TaskDescription extends StatelessWidget {
  const TaskDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor: Colors.blue,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Colors.white, // Sets the background color of the header bar to white
              borderRadius: BorderRadius.circular(14), // Sets the corner radius of the header bar
            ),
            alignment: Alignment.topLeft,
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Task',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Sets the text color of the header bar to black
                ),
              ),
            ),
          ),
        ),
      body:const TaskDescriptionBody(),

    );
  }
}

class TaskDescriptionBody extends StatelessWidget {
  const TaskDescriptionBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [Description(),
          RadioButtons(),
          DeadLine(),
      Comments(),
          SizedBox(height: 10),
          Submit(),


        ],

      ),
    );
  }
}
class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),

        child:  Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ut sapien eget velit consequat fringilla. Nulla facilisi. Sed tincidunt nisl et justo bibendum, vitae laoreet ex congue.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      );
  }
}

enum TaskStatus { ongoing, pending, completed }

class RadioButtons extends StatefulWidget {
  const RadioButtons({Key? key}) : super(key: key);

  @override
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  TaskStatus? _selectedStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Status:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Radio<TaskStatus>(
                value: TaskStatus.ongoing,
                groupValue: _selectedStatus,
                activeColor: Colors.orange,
                onChanged: (value) {
                  setState(() {
                    _selectedStatus = value;
                  });
                },
              ),
              Text(
                'Ongoing',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.orange,
                ),
              ),
              Radio<TaskStatus>(
                value: TaskStatus.pending,
                groupValue: _selectedStatus,
                activeColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    _selectedStatus = value;
                  });
                },
              ),
              Text(
                'Pending',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                ),
              ),
              Radio<TaskStatus>(
                value: TaskStatus.completed,
                groupValue: _selectedStatus,
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _selectedStatus = value;
                  });
                },
              ),
              Text(
                'Completed',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class DeadLine extends StatelessWidget {
  const DeadLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'Deadline:',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Text(
                '00/00/00',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class Comments extends StatelessWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Comments:',
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
            ),
            textAlign: TextAlign.start, // Align the text to the left
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'some messages...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.refresh),
                    color: Colors.black,
                    onPressed: () {
                      // TODO: Implement reload functionality
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type a message...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // TODO: Implement send message functionality
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class Submit extends StatelessWidget {
  const Submit({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
          width: 80,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              'Submit',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ),
    );
  }
}



















