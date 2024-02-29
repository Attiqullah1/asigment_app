
import 'package:asigment_app/sqlite_data/home_screen.dart';
import 'package:flutter/material.dart';

class ScreenDashboardSqlite extends StatefulWidget {
  const ScreenDashboardSqlite({super.key});

  @override
  State<ScreenDashboardSqlite> createState() => _ScreenDashboardSqliteState();
}

class _ScreenDashboardSqliteState extends State<ScreenDashboardSqlite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:(){
        Navigator.push(context, MaterialPageRoute(builder: (builder)=>HomePage()));
      },
          child: Icon(Icons.add),),
      appBar: AppBar(
        title: Center(
            child: Text("Add Record")),
      ),
    );
  }
}
