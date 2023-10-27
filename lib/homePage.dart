import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                TopCard(),
                SizedBox(
                  height: 200,
                ),
                BottomCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopCard extends StatefulWidget {
  @override
  State<TopCard> createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(5, 9),
                  blurRadius: 7,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 150,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 36,
                  width: (constraints.maxWidth > 600) ? 1200 : 600,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class BottomCard extends StatefulWidget {
  @override
  State<BottomCard> createState() => _BottomCardState();
}

class _BottomCardState extends State<BottomCard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Card(
        child: Stack(
          children: [
            Container(
              height: 130,
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 3, right: 3, top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(5, 9),
                        blurRadius: 7,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 36,
                          width: (constraints.maxWidth > 600) ? 1200 : 600,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Container(
                  height: 50,
                  width: 150,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
