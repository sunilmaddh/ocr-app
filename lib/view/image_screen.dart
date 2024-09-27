import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ocr_app/app_component/common_button.dart';
import 'package:ocr_app/controllers/image_processing_controller.dart';

class ImageScreen extends StatelessWidget {
  ImageScreen({super.key});
  
  // Using final keyword with type annotation for clarity
  final ImageProcessingController _imageProcessingController = Get.find<ImageProcessingController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
          child: Column(
            children: [
              // Displaying the selected image
              Image.file(
                File(_imageProcessingController.selectedImage.value),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover, 
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CommonButton(
                    onTop: () {
                    }, 
                    btName: "Get Text"
                  ),
                  CommonButton(
                    onTop: () {
                    }, 
                    btName: 'SAVE'
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
