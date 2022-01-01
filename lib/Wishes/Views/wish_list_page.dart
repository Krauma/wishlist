import 'package:flutter/material.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Whishes'),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add),)
                ],
              )
            ],
        ),
      ),
    );
  }
}