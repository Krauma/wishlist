import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Events',
                  style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.headline2,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
