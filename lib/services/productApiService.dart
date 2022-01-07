import 'dart:convert';

import 'package:classy_ecom_pract/models/all_products.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiRequest with ChangeNotifier{
  Future allProductApiReq() async{
    final response = await http.get(Uri.parse(
        'https://classyecommerce.excelitaiportfolio.com/api/products'
    ));
    if(response.statusCode == 200){
      final responseList = jsonDecode(response.body);
      showProducts products = showProducts.fromJson(responseList);
      return products.products;
    }else{
      throw Exception('Failed !!!');
    }
  }
}