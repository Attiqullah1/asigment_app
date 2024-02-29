
import 'package:asigment_app/hive_data/screens/create_data_screen.dart';
import 'package:asigment_app/hive_data/screens/show_data_screen.dart';
import 'package:flutter/material.dart';
class ScreenDashboardHive extends StatefulWidget {
  const ScreenDashboardHive({super.key});

  @override
  State<ScreenDashboardHive> createState() => _ScreenDashboardHiveState();
}

class _ScreenDashboardHiveState extends State<ScreenDashboardHive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        Navigator.push(
            context, MaterialPageRoute(builder: (builder)=> ShowDataScreen()));
      },
      child: Icon(Icons.add),),
      appBar: AppBar(
        title: Text("Add Record"),

      ),
    );
  }
}
