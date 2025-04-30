import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fruit_hub_dashboard/core/services/storage_service.dart';
import 'package:path/path.dart' as p;
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseStorageService implements StorageService {
  static late Supabase _supabase;

  static initSupabase() async {
    _supabase = await Supabase.initialize(
      url: '${dotenv.env['SUPABASE_PROJECT_URL']}',
      anonKey: '${dotenv.env['SUPABASE_PROJECT_API_KEY']}',
    );
  }

  @override
  Future<String> uploadFile(File file, String path) {
    String fileName = p.basename(file.path);
    String fileExtention = p.extension(file.path);
    var result = _supabase.client.storage
        .from('fruits_images')
        .upload('$path/$fileName.$fileExtention', file);
    return result;
  }
}
