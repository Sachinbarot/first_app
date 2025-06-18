import 'package:get/get.dart';

class AppLanguages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
          'login': 'Login',
          'register': 'Register',
          'forgot_password': 'Forgot Password',
          'password': 'Password',
        },
        'hi_IN': {
          'hello': 'नमस्ते',
          'login': 'लॉगिन',
          'register': 'रजिस्टर',
          'forgot_password': 'पासवर्ड भूल गया',
          'password': 'पासवर्ड',
        },
        'gu_IN': {
          'hello': 'નમસ્તે',
          'login': 'લોગિન',
          'register': 'રજિસ્ટર',
          'forgot_password': 'પાસવર્ડ ભૂલ્યો',
          'password': 'પાસવર્ડ',
        }
      };
}
