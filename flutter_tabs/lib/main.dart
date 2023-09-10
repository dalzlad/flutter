import 'package:flutter/material.dart';
import 'package:flutter_tabs/contacto.dart';
import 'package:flutter_tabs/test.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.access_alarm)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              Test(),
              Contacto(),
              Icon(Icons.directions_bike),
              Icon(Icons.access_alarm),
            ],
          ),
        ),
      ),
    );
  }
}