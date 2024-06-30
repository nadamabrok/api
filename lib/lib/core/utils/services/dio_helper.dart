import 'package:dio/dio.dart';
import 'package:flowers_app/lib/core/utils/constants/end_points.dart';

class DioHelper {
  final Dio _dio = Dio();

  Future<Response<Map<String, dynamic>?>> uploadImage(dynamic data) async {
    final Response<Map<String, dynamic>?> response = await _dio.post(
      EndPoints.uploadEndPoint,
      data: data,
    );

   return response;
 }

}