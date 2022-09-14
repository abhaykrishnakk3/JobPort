import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ApplicationCard extends StatelessWidget {
  const ApplicationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      color: Color.fromARGB(255, 175, 187, 207),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Brototype",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:const [
                  Text(
                    'applied',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('ShortList',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Interview',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Compleated',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(
              height: h * 0.01,
            ),
            StepProgressIndicator(
              padding: 2,
              onTap: (int index) => () {
                print(index);
              },
              size: 20,
              direction: Axis.horizontal,
              totalSteps: 4,
              currentStep: 2,
              selectedColor: Colors.green,
              unselectedColor: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: prefer_const_constructors
                ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.chat,
                          size: 14,
                        ),
                        SizedBox(
                          width: w * 0.01,
                        ),
                        Text("Chat"),
                      ],
                    )),
                SizedBox(
                  width: w * 0.02,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.chat,
                          size: 14,
                        ),
                        SizedBox(
                          width: w * 0.01,
                        ),
                        Text("Call"),
                      ],
                    ))
              ],
            )
          ]),
    );
  }
}
