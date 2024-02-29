import 'package:asigment_app/api_data/api_services.dart';
import 'package:asigment_app/api_data/model_api.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ModelPrayer>? _prayerTimes;
  final ModelPrayerService _prayerService = ModelPrayerService();

  @override
  void initState() {
    super.initState();
    _loadPrayerTimes();
  }

  Future<void> _loadPrayerTimes() async {
    try {
      final prayerTimes = await _prayerService.getPrayerTimes(2023, 2, 51.508515, -0.1254872, 2);
      setState(() {
        _prayerTimes = prayerTimes;
      });
    } catch (e) {
      // Handle error
      print('Error loading prayer times: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('Prayer Times')),
      ),
      body: _prayerTimes != null
          ? ListView.builder(
        itemCount: _prayerTimes!.length,
        itemBuilder: (context, index) {
          final prayerTime = _prayerTimes![index];
          return Card(
            elevation: 4,
            margin: EdgeInsets.all(10),
            child: Container(
              color: Colors.blueGrey,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Date: ${prayerTime.date.readable}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text('Fajr: ${prayerTime.timings.fajr}'),
                    Text('Dhuhr: ${prayerTime.timings.dhuhr}'),
                    Text('Asr: ${prayerTime.timings.asr}'),
                    Text('Maghrib: ${prayerTime.timings.maghrib}'),
                    Text('Isha: ${prayerTime.timings.isha}'),
                  ],
                ),
              ),
            ),
          );
        },
      )
          : Center(
           child: Lottie.asset('assets/lottie_json/loading.json',
               width: 100, height: 100),
      ),
    );
  }
}
