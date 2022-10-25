import 'package:ecommecre_test/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends GetView<ProductController> {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
        backgroundColor: Colors.indigo,
      ),
      body: Obx(() {
        if (controller.loader.value) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.indigo,
            ),
          );
        } else {
          return GridView.builder(
            itemCount: controller.productList.value.data!.length,
            itemBuilder: (context, index) {
              var data = controller.productList.value.data![index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        "${data.image}",
                        height: 120,
                        width: 120,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${data.name}",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            "${data.unitPrice}",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 4 / 5),
          );
        }
      }),
    );
  }
}
