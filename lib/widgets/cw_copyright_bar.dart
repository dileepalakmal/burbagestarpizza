import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/about_app.dart';
import '../theme/cs_text.dart';

class CWCopyrightBar extends StatelessWidget {
  const CWCopyrightBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _onlineBite() {
      return Column(
        children: [
          Text(
            "Visit Us",
            style: CSText().caption1SemiBold,
          ),
          const SizedBox(
            height: 5.0,
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Image.asset(
              'assets/images/online_bite_50.png',
              scale: 5.0,
            ),
            onTap: () async {
              if (!await launch(AboutApp.urlOnlineBite)) {
                throw 'Could not launch ${AboutApp.urlOnlineBite}';
              }
            },
          ),
        ],
      );
    }

    Widget _copyrightBar() {
      return Text(
        AboutApp.appCopyright,
        style: CSText().caption1Normal,
        textAlign: TextAlign.center,
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Divider(),
        _onlineBite(),
        const SizedBox(
          height: 10.0,
        ),
        _copyrightBar(),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
