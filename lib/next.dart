import 'package:flutter/material.dart';

class one extends StatefulWidget {
  const one({super.key});

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: ElevatedButton(
            child: const Text("register"),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    scrollable: true,
                    title: const Text("Login"),
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: "Name",
                                icon: Icon(Icons.account_box),
                              ),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: "Email",
                                icon: Icon(Icons.email),
                              ),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: "Message",
                                icon: Icon(Icons.message),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                        child: const Text("submit"),
                        onPressed: () {
                      
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
      ),         
    );
  }
}
