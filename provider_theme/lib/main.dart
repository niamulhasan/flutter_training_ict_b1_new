import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_theme/providers/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (context) => ThemeProvider(ThemeData.light()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, theme, child) {
        return MaterialApp(
          title: 'Material App',
          theme: theme.getTheme(),
          home: Scaffold(
            appBar: AppBar(
              title: Text('Material App Bar'),
            ),
            body: Center(
              child: Container(
                child: Column(
                  children: [
                    Text('Hello World'),
                    ElevatedButton(
                        onPressed: () => theme.setTheme(ThemeData.dark()),
                        child: Text("Dark")),
                    ElevatedButton(
                        onPressed: () => theme.setTheme(ThemeData.light()),
                        child: Text("Light"))
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
