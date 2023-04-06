import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/app.dart';
import 'package:localization/product/project_locals.dart';

part 'product/localization_init.dart';

Future<void> main() async {
  await LocaleVariables._init();
  runApp(
    EasyLocalization(
      supportedLocales: LocaleVariables._localesList,
      path: LocaleVariables._localesPath,
      fallbackLocale: LocaleVariables._fallBackLocale,
      child: const MyApp(),
    ),
  );
}
