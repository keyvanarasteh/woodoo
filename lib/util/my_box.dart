import 'package:flutter/material.dart';

class MyBox extends StatefulWidget {
  @override
  State<MyBox> createState() => _MyBoxState();
}

class _MyBoxState extends State<MyBox> {
  @override
  int _value = 6;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromRGBO(52, 51, 67, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(251, 31, 30, 30),
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.document_scanner_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white70,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  Text(
                    'Documents',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Divider(
                height: 5,
                color: Color.fromARGB(235, 155, 6, 63),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1328 Files',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  Text(
                    '1.908',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
