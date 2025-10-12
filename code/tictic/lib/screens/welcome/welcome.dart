import 'package:flutter/material.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/l10n/app_localizations_fr.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';
import 'package:tictic/screens/welcome/widgets/text_diveder.dart';
import 'package:tictic/screens/welcome/widgets/text_slider_with_bullets.dart';

import '../../constants/colors.dart';
import '../register/register.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/back1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Spacer(),
              LogoWelcome(),
              Spacer(),
              TextSliderWithBullets(),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: kMainColor),
                child: Text(AppLocalizations.of(context)!.noAccount),
              ),
              SizedBox(height: kVerticalPadding),
              TextDivider(text: AppLocalizations.of(context)!.or),
              SizedBox(height: kVerticalPadding),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kHorizontalPadding,
                  ),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(AppLocalizations.of(context)!.connect),
                      ),
                      SizedBox(width: kHorizontalPadding),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Register.routeName);
                        },
                        child: Text(AppLocalizations.of(context)!.createAccount),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}