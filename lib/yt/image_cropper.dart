import 'dart:io';

import 'package:first_app/yt/lucideicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ProfileClass extends StatefulWidget {
  const ProfileClass({super.key});

  @override
  State<ProfileClass> createState() => _ProfileClassState();
}

class _ProfileClassState extends State<ProfileClass> {
  File? image;

  CroppedFile? _croppedImage;

  _selectImage() async {
    var pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      image = File(pickedImage!.path);
    });
    _cropImage();
  }

  _cropImage() async {
    _croppedImage =
        await ImageCropper().cropImage(sourcePath: image!.path, uiSettings: [
      IOSUiSettings(
        // cropStyle: ,
        title: 'Image Cropper',
        aspectRatioPresets: [
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.square,
          CropAspectRatioPresetCustom(), // IMPORTANT: iOS supports only one custom aspect ratio in preset list
        ],
      )
    ]);
  }

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
          Stack(
            children: [
              CircleAvatar(
                  radius: 90,
                  backgroundImage: image == null
                      ? const AssetImage(
                          "assets/gen_profile.png",
                        )
                      : _croppedImage != null
                          ? FileImage(File(_croppedImage!.path))
                          : FileImage(File(image!.path))),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () {
                          _selectImage();
                        },
                        icon: const Icon(
                          LucideIcons.pencil,
                          color: Colors.blue,
                          size: 18.0,
                        )),
                  )),
            ],
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

class CropAspectRatioPresetCustom implements CropAspectRatioPresetData {
  @override
  (int, int)? get data => (2, 3);

  @override
  String get name => '2x3 (customized)';
}
