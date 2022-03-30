import 'package:flutter/material.dart';
import '../theme/cs_text.dart';
import './/theme/app_theme.dart';

class CWItemCard extends StatelessWidget {
  const CWItemCard(
      {Key? key,
      required this.iconImage,
      required this.title,
      required this.description,
      required this.onPressed})
      : super(key: key);

  final String iconImage;
  final String title;
  final String description;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: ListTile(
        tileColor: AppThemeData.appColorBlueLight,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14.0, horizontal: 8.0),
        dense: true,
        leading: CircleAvatar(
          radius: 30,
          child: Image.asset(
            iconImage,
            fit: BoxFit.cover,
            scale: 4.0,
          ),
          backgroundColor: AppThemeData.pureColorWhite,
        ),
        title: Text(
          title,
          style: CSText().body1Bold,
        ),
        subtitle: Text(
          description,
          style: CSText().body1Normal,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: AppThemeData.pureColorWhite,
        ),
        onTap: onPressed,
      ),
    );
  }
}
