import 'package:e_commerce_screen/features/models/productDetailsModel.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/GetProductsService.dart';
import '../../models/ProductModel.dart';

part 'get_product_state.dart';

class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit() : super(GetProductInitial());

  ProductModel productModel=ProductModel();
  ProductService productService=ProductService();

  Future<void>getProducts({required String category})async {
    emit(GetProductLoading());
    
    var response=await productService.getProducts(category: category);
    if(response!=null){
      productModel=response;
      emit(GetProductSuccess(productModel: productModel));
    }
    else{
      emit(GetProductFailure(errormessage: 'There was an error please try again later'));
    }
  }

  ProductDetailsModel productDetailsModel=ProductDetailsModel();
  Future<void>getProductsDetails({required num id})async {
    emit(GetProductLoading());

    var response=await productService.getProductDetails(id: id);
    if(response!=null){
      productDetailsModel=response;
      emit(GetDetailsSuccess(productDetailsModel: productDetailsModel));

    }
    else{
      emit(GetProductFailure(errormessage: 'There was an error please try again later'));
    }
  }
}
