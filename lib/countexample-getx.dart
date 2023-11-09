import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CountController extends GetxController {
  RxInt count = 0.obs;

  incrementCount() {
    count.value++;
  }

  RxDouble myOpacity = .4.obs;

  setOpacity(double myvalue) {
    myOpacity.value = myvalue;
  }

  RxBool myNotification = false.obs;

  setNotification(bool myvalue) {
    myNotification.value = myvalue;
  }

  RxList<String> fruitList = ['banana', 'mango', 'orange', 'graphes'].obs;
  RxList temFruitList = [].obs;

  addToFavourite(String value) {
    temFruitList.add(value);
  }

  removeFromFavourite(String value) {
    temFruitList.remove(value);
  }

  RxString ImagePath = ''.obs;
  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      ImagePath.value = image.path.toString();
    } else {
      SnackBar(content: Text('Image Not Selected'));
    }
  }
}
