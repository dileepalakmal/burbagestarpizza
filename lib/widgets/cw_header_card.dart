import 'package:burbage_star_pizza/theme/about_app.dart';
import 'package:flutter/material.dart';
import '../theme/cs_text.dart';
import './/theme/app_theme.dart';

class CWHeaderCard extends StatelessWidget {
  const CWHeaderCard({Key? key, required this.cardImage}) : super(key: key);

  final String cardImage;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          color: AppThemeData.appColorDarkGrey,
          width: MediaQuery.of(context).size.width,
          height: 150.0,
          child: Stack(children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Stack(
                  children: [
                    Container(
                        color: AppThemeData.appColorBlueLight,
                        child: Column(
                          children: [
                            Image.asset(
                              cardImage,
                              fit: BoxFit.cover,
                            ),
                          ],
                        )),
                    Container(
                      height: 300.0,
                      decoration: BoxDecoration(
                          color: AppThemeData.pureColorWhite,
                          gradient: LinearGradient(
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              colors: [
                                AppThemeData.appColorBlackWithOpacity,
                                AppThemeData.appColorBlack,
                              ],
                              stops: const [
                                0.2,
                                1.0
                              ])),
                    )
                  ],
                )),
            Positioned(
              top: 20,
              left: 10,
              right: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AboutApp.appHeaderTextTitle,
                    style: CSText().headline6Bold,
                  ),
                  Text(
                    AboutApp.appHeaderTextSubtitle,
                    style: CSText().subtitle2Bold,
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
