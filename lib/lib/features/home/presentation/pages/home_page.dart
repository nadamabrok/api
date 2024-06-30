import 'package:flowers_app/lib/core/utils/constants/app_colors.dart';
import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/core/utils/ui/app_button.dart';
import 'package:flowers_app/lib/features/home/presentation/manager/flower_prediction_cubit.dart';
import 'package:flowers_app/lib/features/prediction_details/pages/prediction_details_page.dart';
import 'package:flowers_app/lib/features/home/presentation/widgets/image_picker_area_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = "HomePage";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FlowerPredictionCubit(),
      child: const _HomeBody(),
    );
  }
}

class _HomeBody extends StatefulWidget {
  const _HomeBody({super.key});

  @override
  State<_HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<_HomeBody> {
  XFile? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "كاشف أمراض النبات",
          style: AppTextStyles.bold(
              fontSize: 24, color: AppColors.backgroundColor),
        ),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 130,
                ),
                ImagePickerAreaView(
                  onPickImage: (file) {
                    imageFile = file;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                BlocConsumer<FlowerPredictionCubit, FlowerPredictionState>(
                    listener: (context, state) {
                  if (state is FlowerPredictionFailure) {
                    Fluttertoast.showToast(
                      msg: state.errorMessage,
                      backgroundColor: AppColors.red,
                      textColor: AppColors.white,
                    );
                  } else if (state is FlowerPredictionSuccess) {
                    Navigator.pushNamed(
                        context, PredictionDetailsPage.routeName, arguments: [
                      state.predictionModel,
                      imageFile?.path ?? ''
                    ]);
                  }
                }, builder: (context, state) {
                  return AppButton(
                      onTap: () {
                        if (imageFile == null) {
                          Fluttertoast.showToast(
                              msg: "من فضلك ادخل الصورة",
                              backgroundColor: AppColors.red,
                              textColor: AppColors.white);
                          return;
                        }

                        context
                            .read<FlowerPredictionCubit>()
                            .getFlowerPrediction(imageFile!.path);
                      },
                      isLoading: state is FlowerPredictionLoading,
                      title: "فحص");
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
