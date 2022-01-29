import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/providers/counter_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().increase();
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: MyContainer(),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "${context.watch<CounterProvider>().getCounter()}",
        style: TextStyle(
          fontSize: 60,
        ),
      ),
    );
  }
}
