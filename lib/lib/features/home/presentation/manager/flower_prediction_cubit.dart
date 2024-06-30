import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flowers_app/lib/core/utils/error_handling/failures_handler.dart';
import 'package:flowers_app/lib/core/utils/services/dio_helper.dart';
import 'package:flowers_app/lib/features/home/data/models/prediction_model.dart';
import 'package:flowers_app/lib/features/home/data/repositories/upload_flower_repository.dart';

part 'flower_prediction_state.dart';

class FlowerPredictionCubit extends Cubit<FlowerPredictionState> {
  FlowerPredictionCubit() : super(FlowerPredictionInitial());

  final UploadFlowerRepository _uploadFlowerRepository = UploadFlowerRepository(DioHelper());
  
  void getFlowerPrediction(String imagePath) async{
    emit(FlowerPredictionLoading());
    
    await failuresHandler(() async{
      final predictionModel = await _uploadFlowerRepository.getImagePrediction(imagePath);
      emit(FlowerPredictionSuccess(predictionModel));
    }, 
      onError: (failure) {
        emit(FlowerPredictionFailure(errorMessage: failure.message));
      },
    );
  }
}
