import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'email': 'Email',
      'password': 'Password',
      'forgot_password': 'I forgot my password',
      'sign_in': 'Sign In',
      'mandatory': 'This is a mandatory field',
      'short_password': 'Password too short',
      'login_with': 'Or login with',
      'privacy_policy1': 'Know our',
      'privacy_policy2': 'Privacy Policy',
      'sign_up': 'Sign Up',
      'name': 'Full name',
      'same_password': 'Repeat your password',
      'account_exists': 'Sign In',
      'tap_email': 'Please, tap your email',
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
      'sign_up': 'Criar conta',
      'name': 'Nome completo',
      'same_password': 'Repita a senha',
      'account_exists': 'Já tenho uma conta',
      'tap_email': 'Digite seu e-mail',
    }
  };
}