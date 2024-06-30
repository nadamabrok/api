import 'package:flowers_app/lib/core/utils/constants/app_colors.dart';
import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/core/utils/extensions/mediaquery_size.dart';
import 'package:flowers_app/lib/core/utils/ui/app_image.dart';
import 'package:flowers_app/lib/features/home/data/models/prediction_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PredictionDetailsPage extends StatelessWidget {
  final PredictionModel predictionModel;
  final String imagePath;
  const PredictionDetailsPage({super.key, required this.predictionModel, required this.imagePath});

  static const String routeName = "PredictionDetailsPage";

  @override
  Widget build(BuildContext context) {
    final imageHeight = context.height * 0.35;

    return Scaffold(
      body: SafeArea(
        top: false,
        right: false,
        left: false,
        child: SizedBox(
          height: context.height,
          width: context.width,
          child: Stack(
            children: [
              AppImage.file(
                width: context.width,
                height: imageHeight,
                imageFilePath: imagePath,
                borderRadius: 0,
              ),

              Positioned(
                top: 40,
                left: 10,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    backgroundColor: AppColors.backgroundColor,
                    child: Icon(Icons.arrow_forward_rounded),
                  ),
                ),
              ),

              Positioned.fill(
                top: imageHeight * 0.9,

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColors.backgroundColor
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //PREDICTION NAME
                      Text(
                        predictionModel.prediction ?? '',
                        style: AppTextStyles.medium(fontSize: 24),
                      ),
                      
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16,),

                              //ADDITIONAL INFO
                              if(predictionModel.additionalInfo != null)
                              ...predictionModel.additionalInfo!.entries.map((e) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: Container(
                                    width: context.width,
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ]
                                    ),
                        
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        //NAME OF MEDICINE
                                        Text(e.key, style: AppTextStyles.medium(
                                          fontSize: 16
                                        ),),
                        
                                        const SizedBox(height: 6,),

                                        //AMOUNT
                                        Row(
                                          children: [
                                            const Icon(FontAwesomeIcons.eyeDropper,size: 16,color: AppColors.primaryColor,),
                        
                                            const SizedBox(width: 8,),
                        
                                            Text("الكمية: ${e.value.amount??''}", style: AppTextStyles.regular(
                                                fontSize: 14,
                                                color: AppColors.darkGrey
                                            ),),
                                          ],
                                        ),
                        
                                        const SizedBox(height: 6,),

                                        //SAFE TIME
                                        Row(
                                          children: [
                                            const Icon(FontAwesomeIcons.clock,size: 16,color: AppColors.primaryColor),
                        
                                            const SizedBox(width: 8,),
                        
                                            Text("الوقت المتبقى: ${e.value.safeTime??''}", style: AppTextStyles.regular(
                                              fontSize: 14,
                                              color: AppColors.darkGrey
                                            ),),
                                          ],
                                        ),
                        
                        
                                      ],
                                    ),
                                  ),
                                );
                              },)
                        
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
