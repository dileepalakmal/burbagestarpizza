import 'package:burbage_star_pizza/services/page_navigation.dart';
import 'package:burbage_star_pizza/widgets/cw_copyright_bar.dart';
import 'package:flutter/material.dart';

import '../theme/about_app.dart';
import '../theme/app_theme.dart';
import '../theme/cs_text.dart';
import '../widgets/cw_header_card.dart';
import '../widgets/cw_item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _headerCards() {
    return const CWHeaderCard(
        cardImage: 'assets/images/pizza-gb94b19fdc_1920.jpg');
  }

  Widget _itemCards(
      String image, String title, String description, VoidCallback onPressed) {
    return CWItemCard(
        iconImage: image,
        title: title,
        description: description,
        onPressed: onPressed);
  }

  Widget _bodyTop() {
    return Column(
      children: [
        _headerCards(),
        const SizedBox(
          height: 5.0,
        ),
        _itemCards('assets/icons/order_d.png', "Order", "Place your order now.",
            PageNavigation(context).gotoOrderPage),
        _itemCards('assets/icons/menu_d.png', "Menu", "View the menu here.",
            PageNavigation(context).gotoMenuPage),
        _itemCards('assets/icons/info_d.png', "Information",
            "This is about us.", PageNavigation(context).gotoInformationPage),
        _itemCards('assets/icons/contact_d.png', "Contact",
            "Give us a quick call.", PageNavigation(context).gotoContactPage),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }

  Widget _bodyBottom() {
    return const CWCopyrightBar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: AppThemeData.appColorBlueDark,
            centerTitle: true,
            title: Text(
              AboutApp.appName,
              style: CSText().subtitle1Bold,
            ),
          ),
        ),
        body: Container(
          color: AppThemeData.appColorBlueDark,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                _bodyTop(),
                _bodyBottom(),
              ],
            ),
          ),
        ));
  }
}
