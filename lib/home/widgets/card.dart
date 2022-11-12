import 'package:flutter/material.dart';

class ReminderCard extends StatefulWidget {
  String text;
  ReminderCard({super.key, required this.text});

  @override
  State<ReminderCard> createState() => _ReminderCardState();
}

class _ReminderCardState extends State<ReminderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.purple,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              color: Colors.purpleAccent,
              width: MediaQuery.of(context).size.width,
              child: IconButton(
                  onPressed: () {
                    super.dispose();
                  },
                  icon: Icon(Icons.delete_outline)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.text,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
