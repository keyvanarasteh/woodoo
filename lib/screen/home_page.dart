import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

//Image.network(src)
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/foto1.jpg'),
                  fit: BoxFit.fill,
                ),
                // shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: appbar()),
                    Expanded(child: currentAccount()),
                    Expanded(child: totalMoney()),
                    Expanded(child: elevatedButtons()),
                    Expanded(
                      child: const Divider(
                        endIndent: 30.0,
                        thickness: 3,
                        indent: 1,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Expanded(
                      child: taskRow(),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: paymentsText()),
                Expanded(child: todayText()),
                Expanded(
                  flex: 6,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 6,
                    itemBuilder: ((context, index) {
                      return Card(
                        color: Color.fromARGB(255, 234, 234, 234),
                        child: ListTile(
                          title: Text('Wonder Pizza Guys'),
                          subtitle: Row(
                            children: const [
                              Icon(
                                  size: 20,
                                  color: Color.fromARGB(255, 54, 22, 20),
                                  Icons.euro),
                              Text(
                                '-879',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 159, 79, 26),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          trailing: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 9, 98, 90),
                            ),
                            onPressed: () {},
                            child: Text('Sign In'),
                          ),
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }

  Padding todayText() {
    return const Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Text(
        'Today,Monday ',
        style: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  Row paymentsText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Text(
              'Payments ',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'last week ٨ ',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: const [
            Icon(
                size: 30,
                color: Color.fromARGB(255, 148, 133, 133),
                Icons.settings_applications),
            Text(
              'Filter',
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 1, 1),
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }

  Row taskRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Text(
              'Tasks',
              style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
            Icon(
                size: 30,
                color: Color.fromARGB(255, 10, 7, 6),
                Icons.circle_notifications_rounded),
          ],
        ),
        Row(
          children: const [
            Icon(
                size: 40, color: Color.fromARGB(255, 0, 0, 0), Icons.analytics),
            Text(
              'Analitics',
              style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }

  Row elevatedButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 9, 98, 90),
            ),
            onPressed: () {},
            child: const Text(
              "Make a payment",
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w400),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 9, 98, 90),
            ),
            onPressed: () {},
            child: Text(
              "Requisities",
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w400),
            ))
      ],
    );
  }

  Text currentAccount() {
    return const Text(
      'Current account',
      style: TextStyle(
          fontSize: 28,
          color: Color.fromARGB(218, 0, 0, 0),
          fontWeight: FontWeight.bold),
    );
  }

  Padding totalMoney() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: const [
          Icon(size: 60, color: Color.fromARGB(255, 71, 36, 13), Icons.euro),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              '270 651',
              style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 68, 35, 14),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Row appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(size: 50, color: Colors.white, Icons.seven_k_plus),
            Text(
              'bank',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: const [
            Icon(size: 30, color: Colors.white, Icons.mail_lock),
            SizedBox(
              width: 10,
            ),
            Icon(
                size: 30,
                color: Color.fromARGB(255, 255, 255, 255),
                Icons.person),
            SizedBox(
              width: 10,
            ),
            Icon(size: 30, color: Colors.white, Icons.menu),
            SizedBox(
              width: 10,
            ),
          ],
        )
      ],
    );
  }
}
