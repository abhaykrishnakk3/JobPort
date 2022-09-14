import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  const CardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Java Developer",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Infosis",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  "Thiruvananthapuram,Kerala",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/s1AjSxph_400x400.jpg'))))
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              "4-6-lakh",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 156, 113, 113)),
            ),
            Text("Experience : 1-3",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 156, 113, 113)))
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        const Text("30 days ago  from java developer")
      ]),
    );
  }
}
