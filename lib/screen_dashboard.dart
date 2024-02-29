
import 'package:asigment_app/api_data/screen_dashboard_api.dart';
import 'package:asigment_app/hive_data/screen_dashboard_hive.dart';
import 'package:asigment_app/sqlite_data/screen_dashboard_sqlite.dart';
import 'package:flutter/material.dart';

class ScreenDashboard extends StatefulWidget {
  const ScreenDashboard({super.key});

  @override
  State<ScreenDashboard> createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Assigment Dashboard"),
      ) ,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (builder)=>ScreenDashboardApi()));
            }, child: Text("Api Dashboard",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (builder) =>ScreenDashboardSqlite()));
            }, child: Text("SQlite Dashboard",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (builder) =>ScreenDashboardHive()));
            }, child: Text("Hive Dashboard",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),

        ],
      ),
      ),
    );

  }
}
