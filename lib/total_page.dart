import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart_getx/my_controller.dart';


class TotalPage extends StatelessWidget {
   const TotalPage({super.key, required this.controller});
final MyController controller;
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text('Total Items', style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 40,
                    ),),
                  ),
                  Expanded(
                    flex: 1,
                    child: Obx(() => Text('${controller.sum}', style: const TextStyle(
                      color: Colors.lightGreen,fontSize: 40,
                    ),),),
                  ),
                ],
              ),
              InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: const Center(
                        child: Text('Go back', style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),),
                      ),
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}