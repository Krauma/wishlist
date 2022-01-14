import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wishlist/Events/Controllers/product_controller.dart';
import 'package:wishlist/Events/Views/product_loader.dart';
import 'package:wishlist/Events/Views/product_card.dart';

class ProductListPage extends StatelessWidget {
  ProductListPage({Key? key}) : super(key: key);
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Products',
                style: TextStyle(
                    fontFamily: 'avenir',
                    fontSize: 32,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Expanded(
              child: Obx(() {
                if (productController.isLoading.value) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 0.6,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16),
                        itemCount: 4,
                        itemBuilder: (BuildContext ctx, index) {
                          return const ProductLoader();
                        }),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 0.6,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16),
                        itemCount: productController.productList.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return ProductCard(
                              productController.productList[index]);
                        }),
                  );
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}
