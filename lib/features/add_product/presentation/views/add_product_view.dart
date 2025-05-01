import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruit_hub_dashboard/core/repos/products_repo/products_repo.dart';
import 'package:fruit_hub_dashboard/core/services/get_it_service.dart';
import 'package:fruit_hub_dashboard/core/widgets/build_app_bar.dart';
import 'package:fruit_hub_dashboard/features/add_product/presentation/manger/add_product/add_product_cubit.dart';
import 'package:fruit_hub_dashboard/features/add_product/presentation/views/widgets/add_product_view_body_bloc_consumer.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});

  static const routeName = 'add-product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Add Product'),
      body: SafeArea(
        child: BlocProvider(
          create:
              (context) => AddProductCubit(
                getIt.get<ImagesRepo>(),
                getIt.get<ProductsRepo>(),
              ),
          child: AddProductViewBodyBlocConsumer(),
        ),
      ),
    );
  }
}
