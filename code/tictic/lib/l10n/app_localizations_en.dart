// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Application TicTic (en)';

  @override
  String get connect => 'Log in';

  @override
  String get noAccount => 'Continue as guest';

  @override
  String get or => 'Or';

  @override
  String get createAccount => 'Create an account';

  @override
  String get labelFirstName => 'First Name';

  @override
  String get labelName => 'Name';

  @override
  String get labelMail => 'email';

  @override
  String get labelPassword => 'password';

  @override
  String get placeHolderFirstName => 'Alex';

  @override
  String get placeHolderName => 'Duchant';

  @override
  String get placeHolderMail => 'example@mail.com';

  @override
  String get placeHolderPw => '****';
}
