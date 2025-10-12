// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Application TicTic';

  @override
  String get connect => 'Je me connecte ';

  @override
  String get noAccount => 'Continuer sans compte';

  @override
  String get or => 'Ou';

  @override
  String get createAccount => 'Créer mon compte';

  @override
  String get labelFirstName => 'Prénom';

  @override
  String get labelName => 'Nom';

  @override
  String get labelMail => 'Adresse mail';

  @override
  String get labelPassword => 'Mot de passe';

  @override
  String get placeHolderFirstName => 'Alex';

  @override
  String get placeHolderName => 'Duchant';

  @override
  String get placeHolderMail => 'example@mail.com';

  @override
  String get placeHolderPw => '****';
}
