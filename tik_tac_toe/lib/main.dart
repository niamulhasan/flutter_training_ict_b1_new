import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isCrossTurn = true;

  // 0 = game continue,
  // 1 = cross won
  // 2 = anda won
  // 3 = game over and tie
  int gameState = 0;

  List<List> state_data = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0],
  ];

  int wonCheck() {
    if (state_data[0][0] != 0 &&
        state_data[0][1] != 0 &&
        state_data[0][2] != 0 &&
        state_data[1][0] != 0 &&
        state_data[1][1] != 0 &&
        state_data[1][2] != 0 &&
        state_data[2][0] != 0 &&
        state_data[2][1] != 0 &&
        state_data[2][2] != 0) {
      return 3;
    } else if (state_data[0][0] + state_data[0][1] + state_data[0][2] == 3 ||
        state_data[1][0] + state_data[1][1] + state_data[1][2] == 3 ||
        state_data[2][0] + state_data[2][1] + state_data[2][2] == 3 ||
        state_data[0][0] + state_data[1][0] + state_data[2][0] == 3 ||
        state_data[0][1] + state_data[1][1] + state_data[2][1] == 3 ||
        state_data[0][2] + state_data[1][2] + state_data[2][2] == 3 ||
        state_data[0][0] + state_data[1][1] + state_data[2][2] == 3 ||
        state_data[0][2] + state_data[1][1] + state_data[2][0] == 3) {
      return 1;
    } else if (state_data[0][0] + state_data[0][1] + state_data[0][2] == 15 ||
        state_data[1][0] + state_data[1][1] + state_data[1][2] == 15 ||
        state_data[2][0] + state_data[2][1] + state_data[2][2] == 15 ||
        state_data[0][0] + state_data[1][0] + state_data[2][0] == 15 ||
        state_data[0][1] + state_data[1][1] + state_data[2][1] == 15 ||
        state_data[0][2] + state_data[1][2] + state_data[2][2] == 15 ||
        state_data[0][0] + state_data[1][1] + state_data[2][2] == 15 ||
        state_data[0][2] + state_data[1][1] + state_data[2][0] == 15) {
      return 2;
    }

    return 0;
  }

  void fillUp(int x, int y) {
    setState(() {
      if (state_data[x][y] == 0) {
        if (isCrossTurn) {
          state_data[x][y] = 1;
          isCrossTurn = false;
        } else {
          state_data[x][y] = 5;
          isCrossTurn = true;
        }
      }
      gameState = wonCheck();
      print(state_data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: gameState != 0
            ? FloatingActionButton(
                onPressed: () {
                  setState(() {
                    state_data = [
                      [0, 0, 0],
                      [0, 0, 0],
                      [0, 0, 0],
                    ];
                    gameState = 0;
                  });
                },
                child: Icon(Icons.refresh),
              )
            : Text(""),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Turn of: ${isCrossTurn ? "Cross" : "Anda"}",
                          style: TextStyle(
                            fontSize: 34.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                        children: [
                          //row one
                          GestureDetector(
                            onTap: () => fillUp(0, 0),
                            child: showBlock(
                              state_data[0][0],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => fillUp(0, 1),
                            child: showBlock(
                              state_data[0][1],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => fillUp(0, 2),
                            child: showBlock(
                              state_data[0][2],
                            ),
                          ),
                          //row two
                          GestureDetector(
                            onTap: () => fillUp(1, 0),
                            child: showBlock(
                              state_data[1][0],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => fillUp(1, 1),
                            child: showBlock(
                              state_data[1][1],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => fillUp(1, 2),
                            child: showBlock(
                              state_data[1][2],
                            ),
                          ),
                          //row three
                          GestureDetector(
                            onTap: () => fillUp(2, 0),
                            child: showBlock(
                              state_data[2][0],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => fillUp(2, 1),
                            child: showBlock(
                              state_data[2][1],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => fillUp(2, 2),
                            child: showBlock(
                              state_data[2][2],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              gameState != 0
                  ? Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.redAccent.withOpacity(0.8),
                      child: Center(
                        child: Text(
                          gameState == 1
                              ? "Cross Won"
                              : gameState == 2
                                  ? "Anda Won"
                                  : "Over and Tie",
                          style: TextStyle(
                            fontSize: 44.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : Text(""),
            ],
          ),
        ),
      ),
    );
  }
}

Widget showBlock(int state) {
  if (state == 0) {
    return EmptyBlock();
  } else if (state == 1) {
    return CrossBlock();
  } else {
    return AndaBlock();
  }
}

class CrossBlock extends StatelessWidget {
  const CrossBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.5),
      child: Icon(
        Icons.close_rounded,
        size: 80.0,
        color: Colors.redAccent,
      ),
    );
  }
}

class AndaBlock extends StatelessWidget {
  const AndaBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.5),
      child: Icon(
        Icons.lens_outlined,
        size: 80.0,
        color: Colors.blue,
      ),
    );
  }
}

class EmptyBlock extends StatelessWidget {
  const EmptyBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.5),
    );
  }
}
