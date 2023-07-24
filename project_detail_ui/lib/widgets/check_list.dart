import 'package:flutter/material.dart';
import 'package:project_detail_ui/widgets/container_widget.dart';

// ignore: must_be_immutable
class CheckList extends StatefulWidget {
  CheckList(this.title, {super.key});
  String title;

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerWidget(
            radius: 15,
            color: isChecked ? Colors.lightBlueAccent : Colors.grey,
            padding: const EdgeInsets.all(10),
            height: 55,
            width: double.infinity,
            border: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title, style: Theme.of(context).textTheme.headlineSmall),
                Checkbox(
                  //checkColor: Colors.yellow,
                  activeColor: Colors.yellow[800],
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                )
              ],
            ))
      ],
    );
  }
}
