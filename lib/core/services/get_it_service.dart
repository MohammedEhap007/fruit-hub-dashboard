import 'package:fruit_hub_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruit_hub_dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:fruit_hub_dashboard/core/repos/products_repo/products_repo.dart';
import 'package:fruit_hub_dashboard/core/repos/products_repo/products_repo_impl.dart';
import 'package:fruit_hub_dashboard/core/services/database_service.dart';
import 'package:fruit_hub_dashboard/core/services/firestore_service.dart';
import 'package:fruit_hub_dashboard/core/services/storage_service.dart';
import 'package:fruit_hub_dashboard/core/services/supabase_storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<StorageService>(SupabaseStorageService());

  getIt.registerSingleton<DatabaseService>(FirestoreService());

  getIt.registerSingleton<ImagesRepo>(
    ImagesRepoImpl(getIt.get<StorageService>()),
  );

  getIt.registerSingleton<ProductsRepo>(
    ProductsRepoImpl(getIt.get<DatabaseService>()),
  );
}
