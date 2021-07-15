import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modal/task_data.dart';
import 'package:todoey/widgets/tasksList.dart';
import 'package:todoey/screens/addTaskScreen.dart';

class TaskScreen extends StatefulWidget {

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          showModalBottomSheet(context: context, isScrollControlled: true, builder: (BuildContext context) => SingleChildScrollView(
              child:Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: addTasksScreen(),
              )
          ), );
        },
        child: Icon(Icons.add, color: Colors.white,),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar( backgroundColor: Colors.white, child: Icon(Icons.list, color: Colors.lightBlueAccent, size: 28,),),
                  SizedBox(height: 15,),
                  Text("Todoey", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700, color: Colors.white),),
                  Text("${Provider.of<TaskData>(context).taskLength()} Tasks", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: TasksList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}




