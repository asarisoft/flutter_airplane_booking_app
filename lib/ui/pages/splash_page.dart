import 'dart:async';

import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/get_started.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => GetStartedPage(),
      //   ),
      // );
      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_airplane.png',
                  ),
                ),
              ),
            ),
            Text(
              'AIRPLANE',
              style: whiteTextStyle.copyWith(
                  fontSize: 32, fontWeight: medium, letterSpacing: 10),
            )
          ],
        ),
      ),
    );
  }
}
