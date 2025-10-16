import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_th.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('th')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Smart Bed Remote'**
  String get appTitle;

  /// No description provided for @tiltLeft.
  ///
  /// In en, this message translates to:
  /// **'Tilt Left'**
  String get tiltLeft;

  /// No description provided for @tiltRight.
  ///
  /// In en, this message translates to:
  /// **'Tilt Right'**
  String get tiltRight;

  /// No description provided for @turnPatient.
  ///
  /// In en, this message translates to:
  /// **'(Turn Patient)'**
  String get turnPatient;

  /// No description provided for @footrestUp.
  ///
  /// In en, this message translates to:
  /// **'Footrest Up'**
  String get footrestUp;

  /// No description provided for @footrestDown.
  ///
  /// In en, this message translates to:
  /// **'Footrest Down'**
  String get footrestDown;

  /// No description provided for @backrestUp.
  ///
  /// In en, this message translates to:
  /// **'Backrest Up'**
  String get backrestUp;

  /// No description provided for @backrestDown.
  ///
  /// In en, this message translates to:
  /// **'Backrest Down'**
  String get backrestDown;

  /// No description provided for @openToilet.
  ///
  /// In en, this message translates to:
  /// **'Open Toilet'**
  String get openToilet;

  /// No description provided for @closeToilet.
  ///
  /// In en, this message translates to:
  /// **'Close Toilet'**
  String get closeToilet;

  /// No description provided for @autoRotateA.
  ///
  /// In en, this message translates to:
  /// **'Auto Rotate A'**
  String get autoRotateA;

  /// No description provided for @autoRotateB.
  ///
  /// In en, this message translates to:
  /// **'Auto Rotate B'**
  String get autoRotateB;

  /// No description provided for @factorySettings.
  ///
  /// In en, this message translates to:
  /// **'(Factory Settings)'**
  String get factorySettings;

  /// No description provided for @autoSitUp.
  ///
  /// In en, this message translates to:
  /// **'Auto Sit Up'**
  String get autoSitUp;

  /// No description provided for @emergencyStop.
  ///
  /// In en, this message translates to:
  /// **'Emergency Stop'**
  String get emergencyStop;

  /// No description provided for @positionControl.
  ///
  /// In en, this message translates to:
  /// **'Position Control'**
  String get positionControl;

  /// No description provided for @headAngle.
  ///
  /// In en, this message translates to:
  /// **'Head Angle'**
  String get headAngle;

  /// No description provided for @footAngle.
  ///
  /// In en, this message translates to:
  /// **'Foot Angle'**
  String get footAngle;

  /// No description provided for @massageControl.
  ///
  /// In en, this message translates to:
  /// **'Massage Control'**
  String get massageControl;

  /// No description provided for @intensity.
  ///
  /// In en, this message translates to:
  /// **'Intensity'**
  String get intensity;

  /// No description provided for @presetPositions.
  ///
  /// In en, this message translates to:
  /// **'Preset Positions'**
  String get presetPositions;

  /// No description provided for @flat.
  ///
  /// In en, this message translates to:
  /// **'Flat'**
  String get flat;

  /// No description provided for @reading.
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get reading;

  /// No description provided for @tv.
  ///
  /// In en, this message translates to:
  /// **'TV'**
  String get tv;

  /// No description provided for @zeroG.
  ///
  /// In en, this message translates to:
  /// **'Zero-G'**
  String get zeroG;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'th'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'th': return AppLocalizationsTh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
