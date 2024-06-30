import 'package:dio/dio.dart';
import 'package:flowers_app/lib/core/utils/error_handling/failures.dart';
import 'package:flowers_app/lib/core/utils/services/dio_helper.dart';
import 'package:flowers_app/lib/features/home/data/models/prediction_model.dart';
import 'package:path/path.dart' as path;

class UploadFlowerRepository{
  final DioHelper _dioHelper;
  UploadFlowerRepository(this._dioHelper);

  Future<PredictionModel> getImagePrediction(String imagePath) async{
    final file = await MultipartFile.fromFile(imagePath,filename: path.basename(imagePath));

    final response = await _dioHelper.uploadImage(file);

    if(response.data == null){
      throw const ServerFailure("no data");
    }

    return PredictionModel.fromJson(response.data!);
  }

}