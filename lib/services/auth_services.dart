import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  static Future<void> signIn(String email, String password) async {
    await Supabase.instance.client.auth
        .signIn(email: email, password: password);
  }

  static Future<void> signOut() async {
    await Supabase.instance.client.auth.signOut();
  }
}
