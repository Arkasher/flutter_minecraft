import 'package:get/get.dart';
import 'package:mc_launcher/constants/locale_constants.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    LocaleConstants.LANG_EN_US: enUS,
    LocaleConstants.LANG_PT_BR: ptBR
  };

  Map<String, String> get ptBR => {
    LocaleConstants.LOADING: 'CARREGANDO',
    LocaleConstants.LOGIN: 'EMAIL',
    LocaleConstants.PASSWORD: 'SENHA',
    LocaleConstants.SIGN_IN: 'ENTRAR',
  };

  Map<String, String> get enUS => {
    LocaleConstants.LOADING: 'LOADING',
    LocaleConstants.LOGIN: 'EMAIL',
    LocaleConstants.PASSWORD: 'PASSWORD',
    LocaleConstants.SIGN_IN: 'SIGN IN',
  };

}