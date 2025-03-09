part of 'get_product_cubit.dart';

@immutable
abstract class GetProductState extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetProductInitial extends GetProductState {}

class GetProductLoading extends GetProductState {}

class GetProductSuccess extends GetProductState {
  final ProductModel productModel;
  GetProductSuccess({required this.productModel});

  @override
  List<Object?> get props => [productModel];
}

class GetProductFailure extends GetProductState {
  final String errormessage;
  GetProductFailure({required this.errormessage});

  @override
  List<Object?> get props => [errormessage];
}

class GetDetailsSuccess extends GetProductState {
  final ProductDetailsModel productDetailsModel;
  GetDetailsSuccess({required this.productDetailsModel});

  @override
  List<Object?> get props => [productDetailsModel];
}