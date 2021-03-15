// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Splash`
  String get splash {
    return Intl.message(
      'Splash',
      name: 'splash',
      desc: '',
      args: [],
    );
  }

  /// `Title Onboarding 1`
  String get titleOnboarding1 {
    return Intl.message(
      'Title Onboarding 1',
      name: 'titleOnboarding1',
      desc: '',
      args: [],
    );
  }

  /// `Desc Onboarding 1`
  String get descOnboarding1 {
    return Intl.message(
      'Desc Onboarding 1',
      name: 'descOnboarding1',
      desc: '',
      args: [],
    );
  }

  /// `Title Onboarding 2`
  String get titleOnboarding2 {
    return Intl.message(
      'Title Onboarding 2',
      name: 'titleOnboarding2',
      desc: '',
      args: [],
    );
  }

  /// `Title Onboarding 3`
  String get titleOnboarding3 {
    return Intl.message(
      'Title Onboarding 3',
      name: 'titleOnboarding3',
      desc: '',
      args: [],
    );
  }

  /// `Title Onboarding 4`
  String get titleOnboarding4 {
    return Intl.message(
      'Title Onboarding 4',
      name: 'titleOnboarding4',
      desc: '',
      args: [],
    );
  }

  /// `Desc Onboarding2`
  String get descOnboarding2 {
    return Intl.message(
      'Desc Onboarding2',
      name: 'descOnboarding2',
      desc: '',
      args: [],
    );
  }

  /// `Desc Onboarding3`
  String get descOnboarding3 {
    return Intl.message(
      'Desc Onboarding3',
      name: 'descOnboarding3',
      desc: '',
      args: [],
    );
  }

  /// `Desc Onboarding4`
  String get descOnboarding4 {
    return Intl.message(
      'Desc Onboarding4',
      name: 'descOnboarding4',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Masukkan Email`
  String get masukkanEmail {
    return Intl.message(
      'Masukkan Email',
      name: 'masukkanEmail',
      desc: '',
      args: [],
    );
  }

  /// `The email must not be empty`
  String get theEmailMustNotBeEmpty {
    return Intl.message(
      'The email must not be empty',
      name: 'theEmailMustNotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Please fill valid email`
  String get pleaseFillValidEmail {
    return Intl.message(
      'Please fill valid email',
      name: 'pleaseFillValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Masukkan Kata Sandi`
  String get masukkanKataSandi {
    return Intl.message(
      'Masukkan Kata Sandi',
      name: 'masukkanKataSandi',
      desc: '',
      args: [],
    );
  }

  /// `Kata Sandi`
  String get kataSandi {
    return Intl.message(
      'Kata Sandi',
      name: 'kataSandi',
      desc: '',
      args: [],
    );
  }

  /// `The password must not be empty`
  String get thePasswordMustNotBeEmpty {
    return Intl.message(
      'The password must not be empty',
      name: 'thePasswordMustNotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Lupa Kata Sandi?`
  String get lupaKataSandi {
    return Intl.message(
      'Lupa Kata Sandi?',
      name: 'lupaKataSandi',
      desc: '',
      args: [],
    );
  }

  /// `Masuk`
  String get masuk {
    return Intl.message(
      'Masuk',
      name: 'masuk',
      desc: '',
      args: [],
    );
  }

  /// `Daftar`
  String get daftar {
    return Intl.message(
      'Daftar',
      name: 'daftar',
      desc: '',
      args: [],
    );
  }

  /// `Navigate to detail, with value in path`
  String get navigateToDetailWithValueInPath {
    return Intl.message(
      'Navigate to detail, with value in path',
      name: 'navigateToDetailWithValueInPath',
      desc: '',
      args: [],
    );
  }

  /// `Navigate to detail, with arguments`
  String get navigateToDetailWithArguments {
    return Intl.message(
      'Navigate to detail, with arguments',
      name: 'navigateToDetailWithArguments',
      desc: '',
      args: [],
    );
  }

  /// `Navigate to detail, with parameter`
  String get navigateToDetailWithParameter {
    return Intl.message(
      'Navigate to detail, with parameter',
      name: 'navigateToDetailWithParameter',
      desc: '',
      args: [],
    );
  }

  /// `Current Value`
  String get currentValue {
    return Intl.message(
      'Current Value',
      name: 'currentValue',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'id'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}