import 'package:flutter/material.dart';

class ProductLoader extends StatelessWidget {
  const ProductLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.black.withOpacity(.2)),
      ),
    );
  }
}
