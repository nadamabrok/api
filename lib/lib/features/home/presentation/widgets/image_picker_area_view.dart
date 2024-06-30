import 'package:dotted_border/dotted_border.dart';
import 'package:flowers_app/lib/core/utils/constants/app_colors.dart';
import 'package:flowers_app/lib/core/utils/constants/app_image_paths.dart';
import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flowers_app/lib/core/utils/services/media_picker.dart';
import 'package:flowers_app/lib/core/utils/ui/app_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerAreaView extends StatefulWidget {
  final Function(XFile file) onPickImage;
  const ImagePickerAreaView({super.key, required this.onPickImage});

  @override
  State<ImagePickerAreaView> createState() => _ImagePickerAreaViewState();
}

class _ImagePickerAreaViewState extends State<ImagePickerAreaView> {
  XFile? imageFile;
  final double height = 265;
  final double width = 330;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppMediaPicker.onPickImage(
          onPick: (file) {
            imageFile = file;
            setState(() {});

            widget.onPickImage(file);
          },
          onError: (errorMessage) {
            Fluttertoast.showToast(
                msg: errorMessage,
                backgroundColor: AppColors.white,
                textColor: AppColors.black);
          },
        );
      },
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: DottedBorder(
                color: AppColors.grey,
                dashPattern: const [4, 4],
                strokeWidth: 2,
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                child: SizedBox(
                    width: width,
                    height: height,
                    child: imageFile != null
                        ? Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: AppImage.file(
                              imageFilePath: imageFile!.path,
                              height: height,
                              width: width,
                            ),
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Icon(
                                  FontAwesomeIcons.seedling,
                                  color: Colors.grey.shade400,
                                  size: 24,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text("ارفع الصورة",
                                    style: AppTextStyles.medium(
                                        color: Colors.black87, fontSize: 16))
                              ])),
              ),
            ),
            if (imageFile == null)
              const Positioned(
                right: -35,
                bottom: 0,
                child: AppImage.asset(
                  imageAssetPath: AppImagePaths.flowerIllustration,
                  width: 150,
                ),
              )
          ],
        ),
      ),
    );
  }
}
