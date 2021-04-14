import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'email': 'Email',
      'password': 'Password',
      'forgot_password': 'I forgot my password',
      'sign_in': 'Login',
      'mandatory': 'This is a mandatory field',
      'short_password': 'Password too short',
      'login_with': 'Or login with',
      'privacy_policy1': 'Know our',
      'privacy_policy2': 'Privacy Policy',
      'sign_up': 'Sign Up'
    },
    'pt_BR': {
      'email': 'E-mail',
      'password': 'Senha',
      'forgot_password': 'Esqueci minha senha',
      'sign_in': 'Entrar',
      'mandatory': 'Campo obrigatório',
      'short_password': 'Senha muito curta',
      'login_with': 'Ou entrar com',
      'privacy_policy1': 'Conheça nossa',
      'privacy_policy2': 'Política de Privacidade',
      'sign_up': 'Criar uma conta'
    }
  };
}