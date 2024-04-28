import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://tgpfsqnbpcerwagvjtsh.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRncGZzcW5icGNlcndhZ3ZqdHNoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQzMTUxNTcsImV4cCI6MjAyOTg5MTE1N30.vGiFXr8UT0sQLY6CKYQInmctlVYiD8AGtaWglSMsnqI';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
