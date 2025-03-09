import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:e_commerce_screen/features/models/productDetailsModel.dart';

import '../models/ProductModel.dart';


class ProductService{

  Future<ProductModel?>getProducts({required String category})async {
    Dio dio=Dio();
  try{
    Response response=await dio.get('https://dummyjson.com/products/category/$category');
    return ProductModel.fromJson(response.data);
  }
  on DioException catch(e){
    String errorMessage=e.response?.data[json]??'oops there was an error try again later';
    throw Exception(errorMessage);
  }
  }


  Future<ProductDetailsModel>getProductDetails({required num id})async {
    Dio dio=Dio();
    try{

      Response response=await dio.get('https://dummyjson.com/products/$id');
      return ProductDetailsModel.fromJson(response.data);
    }
    on DioException catch(e){
      String errorMessage=e.response?.data[json]??'oops there was an error try again later';
      throw Exception(errorMessage);
    }
  }

}
