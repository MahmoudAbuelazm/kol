import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CirclurBorder extends StatefulWidget {
  const CirclurBorder({super.key});

  @override
  State<CirclurBorder> createState() => _CirclurBorderState();
}

class _CirclurBorderState extends State<CirclurBorder> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: _pickImage,
            icon: Icon(
              _image != null ? Icons.check : Icons.upload_file,
            ),
          ),
          SizedBox(width: 5.w),
          const Text('Profile Picture'),
        ],
      ),
    );
  }
}
