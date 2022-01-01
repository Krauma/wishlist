import 'package:flutter/material.dart';

class FriendsListPage extends StatelessWidget {
  const FriendsListPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Friends'),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add),)
                ],
              )
            ],
        ),
      ),
    );
  }
}