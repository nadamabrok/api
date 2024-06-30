part of 'flower_prediction_cubit.dart';

abstract class FlowerPredictionState extends Equatable {
  const FlowerPredictionState();

  @override
  List<Object> get props => [];
}

class FlowerPredictionInitial extends FlowerPredictionState {}

class FlowerPredictionLoading extends FlowerPredictionState {}

class FlowerPredictionSuccess extends FlowerPredictionState {
  final PredictionModel predictionModel;
  const FlowerPredictionSuccess(this.predictionModel);

  @override
  List<Object> get props => [predictionModel];
}

class FlowerPredictionFailure extends FlowerPredictionState {
  final String errorMessage;
  const FlowerPredictionFailure({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

