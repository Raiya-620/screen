import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:folder/signup.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 await FirebaseApp;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const appTitle='Sign In';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle:true,
        title: const Text(appTitle)
        ),
        body: const MyForm(),
        ),
        );

        @override
        Widget build(BuildContext context) {
          return Container();
        }
  }
}
class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email',
            ),
          ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ),
          ),
ElevatedButton(
        onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder:(context)=>LogInPage(),));
          },
        child:Text('Signup'),
      ),
      ],
    );
  }
}

