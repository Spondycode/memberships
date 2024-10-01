import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    '9qsdwizg': {
      'en': 'Welcome To The Club',
      'es': '',
    },
    'sjsvytxn': {
      'en': 'My Club',
      'es': '',
    },
    'gbxuxfy5': {
      'en': '🏡',
      'es': '',
    },
    'l9mr34c3': {
      'en': 'Home',
      'es': '',
    },
  },
  // auth_2_Create
  {
    'nhhc6nhk': {
      'en': 'flow.io',
      'es': '',
    },
    'q98igi5l': {
      'en': 'Get Started',
      'es': '',
    },
    '3i5apbn4': {
      'en': 'Create an account by using the form below.',
      'es': '',
    },
    'oppcggvw': {
      'en': 'Email',
      'es': '',
    },
    'qh2n34zr': {
      'en': 'Password',
      'es': '',
    },
    'hesa4fb4': {
      'en': 'Create Account',
      'es': '',
    },
    'fsilimk3': {
      'en': 'Already have an account? ',
      'es': '',
    },
    '0hbl4gcj': {
      'en': 'Sign in here',
      'es': '',
    },
    'vkn5k0ai': {
      'en': 'Home',
      'es': '',
    },
  },
  // auth_2_Login
  {
    'cp41z28g': {
      'en': 'flow.io',
      'es': '',
    },
    '0r4otocl': {
      'en': 'Welcome Back',
      'es': '',
    },
    '6a9c7g4d': {
      'en': 'Fill out the information below in order to access your account.',
      'es': '',
    },
    '5vxi2lvq': {
      'en': 'Email',
      'es': '',
    },
    'aqdzl16g': {
      'en': 'Password',
      'es': '',
    },
    'cf9e4jgf': {
      'en': 'Sign In',
      'es': '',
    },
    'cuyoswx0': {
      'en': 'Don\'t have an account?  ',
      'es': '',
    },
    '2yqbj5x8': {
      'en': 'Create Account',
      'es': '',
    },
    'b9yl99ij': {
      'en': 'Forgot password?',
      'es': '',
    },
    '3u8m7vtx': {
      'en': 'Home',
      'es': '',
    },
  },
  // auth_2_ForgotPassword
  {
    'pcw6gsj7': {
      'en': 'flow.io',
      'es': '',
    },
    '0f5s6one': {
      'en': 'Forgot Password',
      'es': '',
    },
    'vysag9uc': {
      'en':
          'Please fill out your email belo in order to recieve a reset password link.',
      'es': '',
    },
    '5iq5woei': {
      'en': 'Email',
      'es': '',
    },
    'qjxs560y': {
      'en': 'Send Reset Link',
      'es': '',
    },
    'ncyode9x': {
      'en': 'Home',
      'es': '',
    },
  },
  // auth_2_createProfile
  {
    '8gcg3a4n': {
      'en': 'flow.io',
      'es': '',
    },
    's64oj51z': {
      'en': 'Home',
      'es': '',
    },
  },
  // auth_2_Profile
  {
    'ua1vx777': {
      'en': 'Your Account',
      'es': '',
    },
    'rgqbwvue': {
      'en': 'Edit Profile',
      'es': '',
    },
    'm14j4pm2': {
      'en': 'App Settings',
      'es': '',
    },
    '2tll0jt3': {
      'en': 'Support',
      'es': '',
    },
    'dkk2ffys': {
      'en': 'Terms of Service',
      'es': '',
    },
    'kqtx8wqo': {
      'en': 'Log Out',
      'es': '',
    },
    'bbtv9dnm': {
      'en': 'Home',
      'es': '',
    },
  },
  // auth_2_EditProfile
  {
    't8zl4lsx': {
      'en': 'Home',
      'es': '',
    },
  },
  // AboutUs
  {
    'yw4o3xpl': {
      'en': 'About Us',
      'es': '',
    },
    'wrtg45jg': {
      'en': 'Home',
      'es': '',
    },
  },
  // listOfGroups
  {
    'f596lawx': {
      'en': 'Add A Group',
      'es': '',
    },
    'w09if7nr': {
      'en': 'Members :  ',
      'es': '',
    },
    '9kc89k4e': {
      'en': 'Hello World',
      'es': '',
    },
    'x9zk2tou': {
      'en': 'Join Group',
      'es': '',
    },
    '03gconnj': {
      'en': 'Member ✅',
      'es': '',
    },
    '0zxwgoke': {
      'en': 'List of Groups',
      'es': '',
    },
    'xvkz5zyr': {
      'en': 'Home',
      'es': '',
    },
  },
  // AddAGroup
  {
    'hd22r8ah': {
      'en': 'Group Name',
      'es': '',
    },
    'r082ksdg': {
      'en': 'TextField',
      'es': '',
    },
    'o60zhdyy': {
      'en': 'Description',
      'es': '',
    },
    'ndvdojkk': {
      'en': 'TextField',
      'es': '',
    },
    'i0u91fds': {
      'en': 'Choose a Photo',
      'es': '',
    },
    '5x4l1d9a': {
      'en': 'Admin One',
      'es': '',
    },
    '99fb7jxh': {
      'en': 'TextField',
      'es': '',
    },
    'zb6g690k': {
      'en': 'Admin Two',
      'es': '',
    },
    '69ybimoc': {
      'en': 'TextField',
      'es': '',
    },
    'tjolum4y': {
      'en': 'Admin Three',
      'es': '',
    },
    'wc9tlj4t': {
      'en': 'TextField',
      'es': '',
    },
    'd2s6lryt': {
      'en': 'Notify group of changes ....',
      'es': '',
    },
    '6tqaxgp4': {
      'en': 'public',
      'es': '',
    },
    'ebp0wip3': {
      'en': 'Public',
      'es': '',
    },
    'fxmgd79d': {
      'en': 'Private',
      'es': '',
    },
    '0wxmreyy': {
      'en': 'Hidden',
      'es': '',
    },
    'gtf1egz9': {
      'en': 'Privacy Options',
      'es': '',
    },
    '7x6979yu': {
      'en': 'Search...',
      'es': '',
    },
    'x816kk2k': {
      'en': 'All Emails',
      'es': '',
    },
    '6kuecki2': {
      'en': 'No  Email',
      'es': '',
    },
    'n942r3xv': {
      'en': 'Weekly Summary',
      'es': '',
    },
    'rlx0zbi6': {
      'en': 'Daily Digest',
      'es': '',
    },
    'fj4hpnve': {
      'en': 'All Emails',
      'es': '',
    },
    'zu9c7yud': {
      'en': 'Email Subscription Defaults',
      'es': '',
    },
    'o7z852ej': {
      'en': 'Search...',
      'es': '',
    },
    'qf9gb77y': {
      'en': 'Welcome Email  Enabled....',
      'es': '',
    },
    '71v8994v': {
      'en': 'Welcome Email Title',
      'es': '',
    },
    'g8cdt02r': {
      'en': 'TextField',
      'es': '',
    },
    'ykmtrn5q': {
      'en': 'Welcome Email Title',
      'es': '',
    },
    'vo3h2u1b': {
      'en': 'TextField',
      'es': '',
    },
    'pnr0gyt7': {
      'en': 'Save',
      'es': '',
    },
    'g5x24wg0': {
      'en': 'Add a Group',
      'es': '',
    },
    '05nqxjs5': {
      'en': 'Home',
      'es': '',
    },
  },
  // GroupDetail
  {
    'ozl8jsmv': {
      'en': 'Edit Group',
      'es': '',
    },
    'qrcfuhfv': {
      'en': 'Group Admin:-',
      'es': '',
    },
    'msts4sjo': {
      'en': 'Leave Group',
      'es': '',
    },
    'oj1a6ecn': {
      'en': 'Home',
      'es': '',
    },
  },
  // EditGroup
  {
    '3wkaan74': {
      'en': 'Name of the Group',
      'es': '',
    },
    'xo8dbmqy': {
      'en': 'Name of  Group',
      'es': '',
    },
    'w6obrttc': {
      'en': 'Description',
      'es': '',
    },
    '269w2mh8': {
      'en': 'TextField',
      'es': '',
    },
    'wqza7agx': {
      'en': 'Admin One',
      'es': '',
    },
    'bftk1qno': {
      'en': 'Add the name of group admin one',
      'es': '',
    },
    '1je4q2lu': {
      'en': 'Admin Two',
      'es': '',
    },
    '4t1t1fdv': {
      'en': 'Add the name of group admin two',
      'es': '',
    },
    'h1ztn3hj': {
      'en': 'Admin Three',
      'es': '',
    },
    'r89enj5a': {
      'en': 'Add the name of group admin three',
      'es': '',
    },
    'v5bwh3ov': {
      'en': 'Get Image',
      'es': '',
    },
    'dhyrmq6d': {
      'en': 'Notify group of changes ....',
      'es': '',
    },
    'unl345kt': {
      'en': 'Public',
      'es': '',
    },
    '5u539bpp': {
      'en': 'Private',
      'es': '',
    },
    'z049q3hp': {
      'en': 'Hidden',
      'es': '',
    },
    'fjr7x84y': {
      'en': 'Privacy Options',
      'es': '',
    },
    'g357ihqu': {
      'en': 'Search...',
      'es': '',
    },
    'h6ix1e95': {
      'en': 'No  Email',
      'es': '',
    },
    'zdcp160q': {
      'en': 'Weekly Summary',
      'es': '',
    },
    'lr9tarpo': {
      'en': 'Daily Digest',
      'es': '',
    },
    '33fq46l6': {
      'en': 'All Emails',
      'es': '',
    },
    'zw708es2': {
      'en': 'Email Subscription Defaults',
      'es': '',
    },
    'p8wxy2xw': {
      'en': 'Search...',
      'es': '',
    },
    'z49veai9': {
      'en': 'Welcome Email  Enabled....',
      'es': '',
    },
    'ltpggtwb': {
      'en': 'Welcome Email Title',
      'es': '',
    },
    'zwkojgiv': {
      'en': 'TextField',
      'es': '',
    },
    '0lqp1rfh': {
      'en': 'Welcome Email Title',
      'es': '',
    },
    'i0d3zekv': {
      'en': 'TextField',
      'es': '',
    },
    'pquwosk3': {
      'en': 'Save Changes',
      'es': '',
    },
    'o3tvytw9': {
      'en': 'Edit Group',
      'es': '',
    },
    'apjth65h': {
      'en': 'Home',
      'es': '',
    },
  },
  // editProfile_auth_2
  {
    'c1u2koyt': {
      'en': 'Adjust the content below to update your profile.',
      'es': '',
    },
    '8g9xi5uo': {
      'en': 'Change Photo',
      'es': '',
    },
    'cozdy6wm': {
      'en': 'Full Name',
      'es': '',
    },
    '5d5l3l1c': {
      'en': 'Your full name...',
      'es': '',
    },
    'xt3r54cr': {
      'en': 'Owner/Founder',
      'es': '',
    },
    'xpo9pv9p': {
      'en': 'Director',
      'es': '',
    },
    'h3nokccy': {
      'en': 'Manager',
      'es': '',
    },
    'oi52x4hr': {
      'en': 'Mid-Manager',
      'es': '',
    },
    'rl606c1s': {
      'en': 'Employee',
      'es': '',
    },
    'tgd6dv7f': {
      'en': 'Your Role',
      'es': '',
    },
    '3euoy1c0': {
      'en': 'Search for an item...',
      'es': '',
    },
    'tc5w2u0a': {
      'en': 'Short Description',
      'es': '',
    },
    '9a7lhqj8': {
      'en': 'A little about you...',
      'es': '',
    },
  },
  // Miscellaneous
  {
    'seirieew': {
      'en': 'TextField',
      'es': '',
    },
    '8d7fm6ib': {
      'en': '',
      'es': '',
    },
    '3ixwqpjx': {
      'en': '',
      'es': '',
    },
    'kez7o60f': {
      'en': '',
      'es': '',
    },
    '05kyhixy': {
      'en': '',
      'es': '',
    },
    'wg6uihlv': {
      'en': '',
      'es': '',
    },
    '1e6wh636': {
      'en': '',
      'es': '',
    },
    '1ubwlpdv': {
      'en': '',
      'es': '',
    },
    '810w78tq': {
      'en': '',
      'es': '',
    },
    'fsj8m51h': {
      'en': '',
      'es': '',
    },
    'rhebsapj': {
      'en': '',
      'es': '',
    },
    'rw4273ss': {
      'en': '',
      'es': '',
    },
    '4zbpirbs': {
      'en': '',
      'es': '',
    },
    'n80dr2e8': {
      'en': '',
      'es': '',
    },
    '2tkwjiec': {
      'en': '',
      'es': '',
    },
    '4hgy3lc2': {
      'en': '',
      'es': '',
    },
    'bdco79a7': {
      'en': '',
      'es': '',
    },
    'yupfuf7p': {
      'en': '',
      'es': '',
    },
    'zuxqxi2x': {
      'en': '',
      'es': '',
    },
    'pfpsqj2x': {
      'en': '',
      'es': '',
    },
    'pccc5men': {
      'en': '',
      'es': '',
    },
    '6af3d3nt': {
      'en': '',
      'es': '',
    },
    'vcf0sne1': {
      'en': '',
      'es': '',
    },
    '4i0kncry': {
      'en': '',
      'es': '',
    },
    '6e005rs3': {
      'en': '',
      'es': '',
    },
    'v19x3hrr': {
      'en': '',
      'es': '',
    },
    'wsf1jeer': {
      'en': '',
      'es': '',
    },
    'gupmgxyc': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
