import 'dart:io';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class Tenth extends StatefulWidget {
  const Tenth({Key? key});

  @override
  State<Tenth> createState() => _TenthState();
}

class _TenthState extends State<Tenth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter upload image')),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            uploadImage();
          },
          child: Text('Upload image'),
          color: Colors.blue,
        ),
      ),
    );
  }

  void  uploadImage() async {
    Dio dio = Dio();
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File image = File(result.files.single.path ?? "");
      String imageName = image.path.split('/').last;
      FormData formData=FormData.fromMap({
        'key': '97418d41160443940d0d13924e14f54b',
        'image': await MultipartFile.fromFile(image.path,filename: imageName),
        'name': imageName
      });
      var response = await dio.post("https://api.imgbb.com/1/upload", data:formData);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response.statusCode);
      } else {
        print(response.data);
      }
    }
  }
}
