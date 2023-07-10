import 'package:flutter/material.dart';
import 'package:reorderable_list/data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<user> userList = [];

  @override
  void initState() {
    super.initState();
    userList = Users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ReOrderableList"),
          centerTitle: true,
        ),
        body: ReorderableListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              key: ValueKey(index),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(radius: 30, backgroundImage: AssetImage(userList[index].image)),
                title: Text(userList[index].name),
                subtitle: Text(index.toString()),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          edit(index);
                        },
                        icon: const Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          remove(index);
                        },
                        icon: const Icon(Icons.delete))
                  ],
                ),
              ),
            );
          },
          itemCount: userList.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          onReorder: (oldIndex, newIndex) {
            setState(() {
              final index = newIndex > oldIndex ? newIndex - 1 : newIndex;

              final user = userList.removeAt(oldIndex);

              userList.insert(index, user);
            });
          },
        ));
  }

  void edit(int index) => showDialog(
        context: context,
        builder: (context) {
          final user = userList[index];

          return AlertDialog(
            content: TextFormField(
              initialValue: user.name,
              onFieldSubmitted: (_) => Navigator.of(context).pop(),
              onChanged: (name) => setState(() => user.name = name),
            ),
          );
        },
      );

  void remove(int index) {
    setState(() {
      userList.removeAt(index);
    });
  }
}
