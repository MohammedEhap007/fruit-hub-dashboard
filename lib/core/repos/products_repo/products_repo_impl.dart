import 'package:dartz/dartz.dart';
import 'package:fruit_hub_dashboard/core/errors/failures.dart';
import 'package:fruit_hub_dashboard/core/repos/products_repo/products_repo.dart';

import '../../../features/add_product/domain/entities/add_product_input_entity.dart';

class ProductsRepoImpl implements ProductsRepo {
  @override
  Future<Either<Failure, void>> addProducts(
    AddProductInputEntity addProductInputEntity,
  ) {
    // TODO: implement addProducts
    throw UnimplementedError();
  }
}
