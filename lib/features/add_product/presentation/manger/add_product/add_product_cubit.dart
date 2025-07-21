import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hub_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruit_hub_dashboard/core/repos/products_repo/products_repo.dart';
import 'package:fruit_hub_dashboard/features/add_product/domain/entities/product_entity.dart';
import 'package:meta/meta.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit(this.imagesRepo, this.productsRepo)
    : super(AddProductInitial());

  final ImagesRepo imagesRepo;
  final ProductsRepo productsRepo;

  Future<void> addProduct(ProductEntity addProductEntity) async {
    emit(AddProductLoading());
    var result = await imagesRepo.uploadImage(addProductEntity.image);
    result.fold(
      (failure) {
        emit(AddProductFailure(failure.message));
      },
      (url) async {
        addProductEntity.imageUrl = url;
        var result = await productsRepo.addProducts(addProductEntity);
        result.fold(
          (failure) {
            emit(AddProductFailure(failure.message));
          },
          (product) {
            emit(AddProductSuccess());
          },
        );
      },
    );
  }
}
