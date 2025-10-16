/*
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../../l10n/app_localizations.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
          children: [
      Container(
      margin: EdgeInsets.only(left: kLabelMargin),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          AppLocalizations.of(context)!.labelFirstName,
          style: TextStyle(fontSize: 20),
        ),
      ),
    ),
    SizedBox(
    width: kWidthInput,
    height: kHeightInput,
    child: TextFormField(
    validator: (value){
    return "bouh";
    },
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.person),
    fillColor: kBackgroundColor,
    hintText: AppLocalizations.of(
    context,
    )!.placeHolderFirstName,
    ),
    ),
    );
  }
}
*/
