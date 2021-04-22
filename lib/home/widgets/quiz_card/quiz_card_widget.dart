import 'package:devquiz/shared/widget/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.0,
            width: 40.0,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Gerenciamento de estado",
            style: AppTextStyles.heading15,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "3/10",
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 4,
                child: ProgressIndicatorWidget(value: 0.3,)
              )
            ],
          )
        ],
      ),
    );
  }
}
