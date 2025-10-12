import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';
import 'package:tictic/l10n/app_localizations.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  static const String routeName = '/register';


  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/back1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                ),
                LogoWelcome(),
                Spacer(),
                Form(
                    child: Column(

                      children: [
                        Container(
                          margin : EdgeInsets.only(left: kLabelMargin),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(AppLocalizations.of(context)!.labelFirstName),
                          ),
                        ),
                        SizedBox(
                          width: kWidthInput,
                          height: kHeightInput ,
                          child:
                          TextFormField(
                            decoration: InputDecoration(
                              fillColor: kBackgroundColor,
                              labelText: AppLocalizations.of(context)!.placeHolderFirstName
                            ),
                          ),
                        ),
                        SizedBox(
                          height: kVerticalPadding,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: kLabelMargin),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(AppLocalizations.of(context)!.labelName),
                          ),
                        ),
                        SizedBox(
                          width: kWidthInput,
                          height: kHeightInput,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: AppLocalizations.of(context)!.placeHolderName,
                              fillColor: kBackgroundColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: kVerticalPadding,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: kLabelMargin),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(AppLocalizations.of(context)!.labelMail),
                          ),
                        ),
                        SizedBox(
                          width: kWidthInput,
                          height: kHeightInput,
                          child: TextFormField(
                            decoration:  InputDecoration(
                              labelText: AppLocalizations.of(context)!.placeHolderMail,
                              fillColor: kBackgroundColor
                            ),
                          ),
                        ),
                        SizedBox(
                          height: kVerticalPadding,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: kLabelMargin),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(AppLocalizations.of(context)!.labelPassword),
                          ),
                        ),
                        SizedBox(
                          width: kWidthInput,
                          height: kHeightInput,
                          child: TextFormField(
                            decoration:  InputDecoration(
                              labelText: AppLocalizations.of(context)!.placeHolderPw,
                              fillColor: kBackgroundColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: kVerticalPadding,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(AppLocalizations.of(context)!.createAccount),
                            ),
                          ],
                        ),
                      ],
                    )),
                Spacer(),


              ],
            )),
      ),
    );
  }
}
