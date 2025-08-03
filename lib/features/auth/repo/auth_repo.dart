

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/network/api_endpoints.dart';
import 'package:ecommerce_app/core/network/dio_helper.dart';
import 'package:ecommerce_app/features/auth/models/login_response_model.dart';

class AuthRepo {
  Future<Either<String, LoginResponseModel>> login(
    String username,
    password,
  ) async {
    try {
      final response = await DioHelper.postRequest(
        endPoint: ApiEndpoints.baseUrl,
        data: {'username': username, 'password': password},
      );
      if (response.statesCode == 200 || response.statesCode == 201) {
        LoginResponseModel loginResponseModel = LoginResponseModel.fromJson(
          response.data,
        );
        return Right(loginResponseModel);
      } else {
        return Left(response.toString());
      }
    } catch (e) {
      if (e is DioException) {
        log(e.response.toString());
        return left(e.response.toString());
        }
        return Left(e.toString());
      }
    }
}
