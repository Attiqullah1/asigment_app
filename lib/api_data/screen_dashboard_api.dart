import 'package:asigment_app/api_data/home_scren.dart';
import 'package:flutter/material.dart';
class ScreenDashboardApi extends StatefulWidget {
  const ScreenDashboardApi({super.key});

  @override
  State<ScreenDashboardApi> createState() => _ScreenDashboardApiState();
}

class _ScreenDashboardApiState extends State<ScreenDashboardApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (builder)=>HomeScreen()));
      },
        child: Icon(Icons.add),),
      appBar: AppBar(
        title: Center(
            child: Text("Add Record")),

      ),
    );
  }
}

