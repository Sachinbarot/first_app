import 'dart:io';

import 'package:first_app/yt/lucideicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class ProfileClass extends StatefulWidget {
  const ProfileClass({super.key});

  @override
  State<ProfileClass> createState() => _ProfileClassState();
}

class _ProfileClassState extends State<ProfileClass> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: image != null
                ? FileImage(File(image!.path))
                : const AssetImage(
                    "assets/gen_profile.png",
                  ),
          ),
          const SizedBox(height: 20),
          const Text(
            "John Doe",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black),
          ),
          const SizedBox(height: 10),
          const Text("john.doe@gmail.com",
              style: TextStyle(fontSize: 14.0, color: Colors.black45)),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                LucideIcons.instagram,
                color: Colors.blue,
              ),
              SizedBox(width: 10),
              Icon(
                LucideIcons.linkedin,
                color: Colors.blue,
              ),
              SizedBox(width: 10),
              Icon(
                LucideIcons.twitter,
                color: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
