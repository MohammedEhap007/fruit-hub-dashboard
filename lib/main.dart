import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fruit_hub_dashboard/core/helper/on_generate_routes.dart';
import 'package:fruit_hub_dashboard/core/services/get_it_service.dart';
import 'package:fruit_hub_dashboard/core/utils/app_colors.dart';
import 'package:fruit_hub_dashboard/features/dashboard/presentation/views/dashboard_view.dart';
import 'core/services/supabase_storage_service.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await SupabaseStorageService.initSupabase();
  setupGetIt();
  runApp(const FruitHubDashboard());
}

class FruitHubDashboard extends StatelessWidget {
  const FruitHubDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: DashboardView.routeName,
    );
  }
}
