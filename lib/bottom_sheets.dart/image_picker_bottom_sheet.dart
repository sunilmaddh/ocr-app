import 'package:flutter/material.dart';
import 'dart:io'; // For File class
import 'package:ocr_app/app_logic/app_logic.dart';
import 'package:ocr_app/helper/image_picker_helper.dart';
import 'package:ocr_app/utils/toast_utils.dart';

class ImagePickerBottomSheet extends StatelessWidget {
  const ImagePickerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                File? imageFile = await ImagePickerHelper.instance.pickImageFromGallery();
                if (imageFile != null) { 
                  // ignore: use_build_context_synchronously
                  Navigator.pop(context);           
                   await  AppLogic.imageLoaded(imageFile.path);

                  // ignore: use_build_context_synchronously
                   // Pop with the image path
                }
              },
              child: const Text("Gallery"),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () async {
                File? imageFile = await ImagePickerHelper.instance.pickImageFromCamera();
                if (imageFile != null) {
                   // ignore: use_build_context_synchronously
                  Navigator.pop(context);  
                await  AppLogic.imageLoaded(imageFile.path);
                }
              },
              child: const Text("Camera"),
            ),
          ],
        ),
      ),
    );
  }

  static void showImagePickerBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return const ImagePickerBottomSheet(); // Use the widget inside the builder
      },
    );
  }
}
