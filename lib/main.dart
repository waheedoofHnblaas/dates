import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:money/core/links.dart';

void main() {
  runApp(const MyApp());
}

clientAuth() async {
  Client client = Client();
  late Databases databases;
  client
      .setEndpoint(AppWriteLinks.endpoint)
      .setProject(AppWriteLinks.projectId);
  databases = Databases(client);
  // account = Account(client);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dates App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dates'),
        ),
        body: const Center(
          child: Text('No Dates'),
        ),
      ),
    );
  }
}
