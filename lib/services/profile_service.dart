import 'package:supabase_flutter/supabase_flutter.dart';
import '../../models/user_model.dart';

class ProfileService {
  static Future<UserModel> getProfile() async {
    final user = Supabase.instance.client.auth.user();
    final response = await Supabase.instance.client
        .from('profiles')
        .select()
        .eq('id', user!.id)
        .single()
        .execute();
    if (response.error != null) {
      throw response.error!;
    }
    return UserModel.fromJson(response.data);
  }

  static Future<void> updateProfile(String name) async {
    final user = Supabase.instance.client.auth.user();
    final response = await Supabase.instance.client
        .from('profiles')
        .update({'name': name})
        .eq('id', user!.id)
        .execute();
    if (response.error != null) {
      throw response.error!;
    }
  }
}
