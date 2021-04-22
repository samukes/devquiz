import 'package:devquiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;

  LevelButtonWidget(
      {Key? key, required this.label}
      ) : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label)) , super(key: key);

  final config = {
    "Fácil": {
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "fontColor": AppColors.levelButtonTextFacil,
    },
    "Médio": {
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "fontColor": AppColors.levelButtonTextMedio,
    },
    "Difícil": {
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "fontColor": AppColors.levelButtonTextDificil,
    },
    "Perito": {
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "fontColor": AppColors.levelButtonTextPerito,
    },
  };

  Color get color => config[this.label]!["color"]!;
  Color get borderColor => config[this.label]!["borderColor"]!;
  Color get fontColor => config[this.label]!["fontColor"]!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this.color,
        border: Border.fromBorderSide(
            BorderSide(
                color: this.borderColor,
            )
        ),
        borderRadius: BorderRadius.circular(28.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 20.0),
        child: Text(
          this.label,
          style: GoogleFonts.notoSans(
            color: this.fontColor,
            fontSize: 13.0
          ),
        ),
      ),
    );
  }
}
