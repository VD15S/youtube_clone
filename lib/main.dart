import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/login_screen.dart'; // Adjust the path as needed
import 'config.dart'; // Adjust the path as needed

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://pkiultcojmjahyyxbwoo.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBraXVsdGNvam1qYWh5eXhid29vIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk1MDY3OTMsImV4cCI6MjAzNTA4Mjc5M30.xbp0DBotbW7n5KaGVesBd8HVzkEGO9qfssM5_4R-Zjo',
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube Clone',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginScreen(), // Adjust the path as needed
    );
  }
}
