import 'package:flutter/material.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Form Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            child: Column(children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: "Name"),
                validator: (value) {
                  if (value!.isEmpty || value == "") {
                    return 'The name is not valid';
                  }
                  return null;
                },
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty || value == "") {
                    return 'The email is not valid';
                  }
                  return null;
                },
                controller: _emailController,
                decoration: InputDecoration(labelText: "Email"),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty || value == "") {
                    return 'Maintain password secutiry';
                  }
                  return null;
                },
                controller: _passwordController,
                decoration: InputDecoration(labelText: "Password"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("Form Is Valid");
                      } else {
                        print("Form is invalid");
                      }
                    },
                    child: Text("Submit data")),
              )
            ])),
      ),
    );
  }
}
