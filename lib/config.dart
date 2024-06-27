import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String get supabaseUrl {
    final url = dotenv.env['SUPABASE_URL'];
    print('Supabase URL: $url');
    return url ?? '';
  }

  static String get supabaseAnonKey {
    final key = dotenv.env['SUPABASE_ANON_KEY'];
    print('Supabase Anon Key: $key');
    return key ?? '';
  }
}
