import 'package:flutter/material.dart';
import 'package:samples/commons/opaque_image.dart';
import 'package:samples/styleguide/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(flex: 4,child: Stack(
                children: [
                  const OpaqueImage(imageUrl: "assets/images/bg.png",),
                  SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: const [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Home",
                                textAlign: TextAlign.left,
                                style: headingTextStyle,
                              ),
                            ),
                          ],
                        ),
                      )
                  )
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}