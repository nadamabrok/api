class PredictionModel {
  String? prediction;
  Map<String, AdditionalInfo>? additionalInfo;

  PredictionModel({
    required this.prediction,
    required this.additionalInfo,
  });

  factory PredictionModel.fromJson(Map<String, dynamic> json) => PredictionModel(
    prediction: json["prediction"],
    additionalInfo: json["additional_info"] == null ? null : Map.from(json["additional_info"]).map((k, v) => MapEntry<String, AdditionalInfo>(k, AdditionalInfo.fromJson(v))),
  );

}

class AdditionalInfo {
  String? amount;
  String? safeTime;

  AdditionalInfo({
    required this.amount,
    required this.safeTime,
  });

  factory AdditionalInfo.fromJson(Map<String, dynamic> json) => AdditionalInfo(
    amount: json["amount"],
    safeTime: json["safe_time"],
  );

}


