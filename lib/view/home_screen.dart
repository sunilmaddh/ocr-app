import 'package:flutter/material.dart';
import 'package:ocr_app/bottom_sheets.dart/image_picker_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),),
      body: Center(
        child: ElevatedButton(onPressed: (){
          ImagePickerBottomSheet.showImagePickerBottomSheet(context);
        }, child: const Text("Scan image")),
      ),
    );
  }
}