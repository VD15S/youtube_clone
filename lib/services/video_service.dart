import 'package:supabase_flutter/supabase_flutter.dart';
import '../../models/video_model.dart';

class VideoService {
  static Future<List<Video>> fetchVideos() async {
    final response =
        await Supabase.instance.client.from('videos').select().execute();
    if (response.error != null) {
      throw response.error!;
    }
    return (response.data as List)
        .map((video) => Video.fromJson(video))
        .toList();
  }
}
