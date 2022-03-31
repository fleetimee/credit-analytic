import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


void main() => runApp(const Notice_list());

class Notice_list extends StatelessWidget {
  const Notice_list({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slidable Example',
      home: Scaffold(
        body: ListView(
          children: [
            Slidable(
              key: const ValueKey(1),

              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {}),
                children: const [
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),

              child: const ListTile(title: Text('Doni')),
            ),
            Slidable(
              key: const ValueKey(1),

              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {}),
                children: const [
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),

              child: const ListTile(title: Text('Toni')),
            ),
            Slidable(
              key: const ValueKey(1),

              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {}),
                children: const [
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                ],
              ),

              child: const ListTile(title: Text('Karmi')),
            ),
          ],
        ),
      ),
    );
  }
}

void doNothing(BuildContext context) {}