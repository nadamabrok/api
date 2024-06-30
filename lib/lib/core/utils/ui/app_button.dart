import 'package:flowers_app/lib/core/utils/constants/app_colors.dart';
import 'package:flowers_app/lib/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget{
  final String title;
  final double? fontSize;
  final double width;
  final Function()? onTap;
  final bool isLoading;

  const AppButton({
    super.key,
    required this.onTap,
    required this.title,
    this.fontSize,
    this.width = 330,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),

      child: InkWell(
        onTap: isLoading ? null : onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: width,
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: onTap == null ? AppColors.grey :AppColors.primaryColor
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(title,style: AppTextStyles.medium(
                  color: AppColors.white,
                  fontSize: 20
                ),),
              ),

              if(isLoading)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(color: AppColors.white,)
                  ),
                )
            ],
          )
        ),
      ),
    );
  }



}