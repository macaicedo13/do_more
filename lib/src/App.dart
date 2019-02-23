import 'package:flutter/material.dart';

import './models/event_model.dart';
import './models/task_model.dart';
import './models/user_model.dart';
import './resources/firestore_provider.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    final fire = FirestoreProvider();
    return MaterialApp(
      title: 'Do more',
      //home: Text('Start'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('DO>'),
        ),
        body: Text('Tasks'),
      ),
    );
  }
}

/* 
class App extends StatelessWidget {
  Widget build(BuildContext context) {
    final fire = FirestoreProvider();
    return MaterialApp(
      title: 'Do more',
      //home: Text('Start'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('DO>'),
        ),
        body: StreamBuilder(
          stream: fire.getUserEvents('vBOvtmTeC8iPg8L4Hixh'),
          builder: (BuildContext context,
              AsyncSnapshot<List<EventModel>> userSnapshot) {
            if (!userSnapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final children = <Widget>[
              MaterialButton(
                onPressed: () {},
                child: Text('Add task'),
              ),
            ];
            //children.add(Text(userSnapshot.data.text));

            userSnapshot.data.forEach((EventModel task) {
              children.add(Text(task.name));
            });

            return Column(
              children: children,
            );
          },
        ),
      ),
    );
  }
}
 */