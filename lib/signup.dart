import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}
final emailController=TextEditingController();
final passwordController=TextEditingController();

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SafeArea(
        child:
         Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'First name',
            ),
          ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Last name',
            ),
          ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Phone number',
            ),
          ),
          ),
            ElevatedButton(onPressed: (){}, child: Text('SignUp'))
            ],
        )
        ),
    );
  }
}