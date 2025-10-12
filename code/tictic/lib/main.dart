import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/routes.dart';
import 'package:tictic/screens/welcome/welcome.dart';
import 'constants/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalization.instance.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppLocalizations.of(context)?.appTitle,
      routes: routes,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate, // Material widgets
        GlobalWidgetsLocalizations.delegate, // widgets génériques
        GlobalCupertinoLocalizations.delegate, // iOS widgets
      ],
      supportedLocales: [const Locale('en'), const Locale('fr')],
      theme: kAppTheme,
    );
  }
}
