import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // bisa pake ini cuman nanti text nya tidak terpotong otomatis kalau kepanjangan
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(fontWeight: medium),
                      ),
                      Text(
                        'Kezia Ane',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(
                    right: 8,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_airplane.png'),
                    ),
                  ),
                ),
                Text(
                  'Pay',
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                )
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            Text(
              'IDR. 280.000.000',
              style: whiteTextStyle.copyWith(fontSize: 26, fontWeight: medium),
            )
          ],
        ),
      );
    }

    Widget bigTitle() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'Big Bonus',
          style: blackTextStyle.copyWith(
            fontSize: 30,
            fontWeight: bold,
          ),
        ),
      );
    }

    Widget descriptionText() {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Text(
          'Big Bonus Big Bonus Big Bonus \nBig Bonus Big Bonus Big Bonus Big Bonus',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            bigTitle(),
            descriptionText(),
          ],
        ),
      ),
    );
  }
}
