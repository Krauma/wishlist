import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Profile'),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add),)
                ],
              )
            ],
        ),
      ),
    );
  }
}