
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var book = 0.obs;
  var pen = 0.obs;
  int get sum => book.value+pen.value;
  incrementBooks(){
    book.value++;
  }
  decrementBooks(){
    if (book.value <=0) {
      Get.snackbar('Buying Books', 'Cannot be less than Zero',
      icon: const Icon(Icons.warning),
      isDismissible: true,
      duration: const Duration(seconds: 3)
      );
    }else{
      book.value--;
    }
    
  }
  incrementPens(){
    pen.value++;
  }
  decrementPens(){
    if (pen.value <=0) {
      Get.snackbar('Buying Pens', 'Cannot be less than Zero',
      icon: const Icon(Icons.warning),
      isDismissible: true,
      duration: const Duration(seconds: 3)
      );
    }else{
      pen.value--;
    }
    
  }
}