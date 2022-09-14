import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:second_project_main/screens/widget/textfielddecoration.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(child: TextFormField(
        decoration:textInputDecoration.copyWith(
                      label: const Text("Search..."),
                    ),
      ),),
    );
  }
}