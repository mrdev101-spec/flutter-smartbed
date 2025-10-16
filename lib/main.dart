import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/bed_state.dart';
import 'screens/remote_control_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BedState(),
      child: MaterialApp(
        title: 'Smart Bed Remote',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const RemoteControlScreen(),
      ),
    );
  }
}