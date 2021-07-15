import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/ad_manager.dart';
import 'package:todoey/modal/task_data.dart';

class addTasksScreen extends StatelessWidget {

  String toDoText = "";
  AdManager Ad = AdManager();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Add Task", textAlign: TextAlign.center, style: TextStyle( fontSize: 28, fontWeight: FontWeight.w600, color: Colors.lightBlueAccent ),),
              TextField(
                autofocus: true,
                onChanged: (value){
                  toDoText = value;
                },
              ),
              SizedBox(height: 10),
              // ignore: deprecated_member_use
              FlatButton(
                height: 45,
                color: Colors.lightBlueAccent,
                onPressed: (){
                  Provider.of<TaskData>(context, listen: false).addTask(toDoText);
                  Navigator.pop(context);
                  Ad.loadRewardedAd();
                  Ad.showRewardedAd();
                },
                // ignore: file_names
                child: Text("Add", style: TextStyle( color: Colors.white, fontSize: 16),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
