import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 78,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromARGB(255, 197, 155, 174),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Icon(Icons.document_scanner_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'XD fİLE',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Text(
              '01-03-2022',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '3.5mb',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
