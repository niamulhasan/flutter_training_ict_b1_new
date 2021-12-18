import 'package:flutter/material.dart';
import 'package:login_route/pages/failed.dart';
import 'package:login_route/pages/success.dart';

class HomePage extends StatelessWidget {
  TextEditingController usernameTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.redAccent,
              radius: 100.0,
              child: FlutterLogo(
                size: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                controller: usernameTextController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Username",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                controller: passwordTextController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: ElevatedButton(
                onPressed: () {
                  if (usernameTextController.text == "admin" &&
                      passwordTextController.text == "123") {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SuccessPage(),
                      ),
                    );
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FailedPage(),
                      ),
                    );
                  }
                },
                child: const Text("Login"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
