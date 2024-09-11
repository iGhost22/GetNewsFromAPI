import 'package:get/get.dart';
import 'package:getx_learn_continue/localizations/languages/ar.dart';
import 'package:getx_learn_continue/localizations/languages/en.dart';
import 'package:getx_learn_continue/localizations/languages/fr.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en": en,
        "ar": ar,
        "fr": fr,
      };
}
