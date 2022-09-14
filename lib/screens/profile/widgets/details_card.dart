
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeyValu extends StatelessWidget {
  final String name;
  final String value;
  const KeyValu({Key? key,required this.name,required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:  Color.fromARGB(255, 81, 56, 56)),),
           Text(value,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
        ],
      ),
    );
  }
}