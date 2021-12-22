import 'package:flutter/material.dart';

class MyPlayerCard extends StatelessWidget {
  final String image;
  final String name;
  const MyPlayerCard({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 28.0, 16.0, 16.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/images/card_bg.png"),
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff661EFF).withOpacity(0.5),
                  blurRadius: 5,
                )
              ],
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 12.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$name",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 28.0),
            child: Image.asset("assets/images/players/$image"),
          ),
        )
      ],
    );
  }
}
