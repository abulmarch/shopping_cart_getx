import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart_getx/my_controller.dart';
import 'package:shopping_cart_getx/total_page.dart';

class MyCart extends StatelessWidget {
   MyCart({super.key});
final MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(30),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(
                    child: Text('Books', style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                    child:IconButton(onPressed: (){
                      controller.incrementBooks();
                    }, icon: const Icon(Icons.add, color: Colors.white,),),
                  ),
                  const SizedBox(width: 10,),
                  Obx(() => Text('${controller.book}', style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 30
                  ),),),
                  const SizedBox(width: 10,),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                    child:IconButton(onPressed: (){
                      controller.decrementBooks();
                    }, icon: const Icon(Icons.remove, color: Colors.white,),),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(
                    child: Text('Pens', style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                    child:IconButton(onPressed: (){
                      controller.incrementPens();
                    }, icon: const Icon(Icons.add, color: Colors.white,),),
                  ),
                  const SizedBox(width: 10,),
                  Obx(() => Text('${controller.pen}', style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 30
                  ),),),
                  const SizedBox(width: 10,),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                    child:IconButton(onPressed: (){
                      controller.decrementPens();
                    }, icon: const Icon(Icons.remove, color: Colors.white,),),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(child: Container(),),
                  InkWell(
                    onTap: () {
                      Get.to(()=>  TotalPage(controller: controller,));
                    },
                    child: Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: const Center(
                        child: Text('Total', style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),),
                      ),
                    ),
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