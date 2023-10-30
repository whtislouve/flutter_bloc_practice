import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_practice/app.dart';
import 'package:flutter_bloc_practice/i18n/strings.g.dart';
import 'package:flutter_bloc_practice/simple_bloc_observer.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.setLocale(AppLocale.ru);
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Bloc.observer = SimpleBlocObserver();
  runApp(App());
}
