/*import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:hire_harmony/utils/app_colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FilePickerWidget  extends StatefulWidget {
  const FilePickerWidget ({super.key});

  @override
  State<FilePickerWidget > createState() => _FilePickerWidgetState();
}

class _FilePickerWidgetState extends State<FilePickerWidget > {
    String? selectedFilePath;
Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      Uint8List? fileBytes = result.files.first.bytes;
      String fileName = result.files.first.name;

      try {
        await FirebaseStorage.instance.ref('uploads/$fileName').putData(fileBytes!);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("File uploaded successfully")));
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error uploading file: $e")));
      }
    }
  }
    

  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "UPLOAD FROM DEVICE",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.grey2, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                    icon: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.orange,
                      ),
                      child: Icon(
                        Icons.upload_file,
                        color: AppColors.white,
                      ),
                    ),
                    onPressed: pickFile,
                  )
                ],
              );
  }
}*/