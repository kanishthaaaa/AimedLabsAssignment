import 'package:flutter/material.dart';
import 'package:responsive_ui/constants.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Card(
              color: const Color.fromARGB(255, 249, 142, 135),
              elevation: 12,
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                    ),
                    myGreyBox,
                    SizedBox(
                      height: 40,
                    ),
                    myGreenBox,
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Card(
                  color: const Color.fromARGB(255, 249, 142, 135),
                  elevation: 12,
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -25,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Positioned(
                      bottom: 20,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        color: Color.fromARGB(255, 172, 243, 175),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
