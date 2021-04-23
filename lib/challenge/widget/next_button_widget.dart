import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;
  final bool absorbPointer;

  NextButtonWidget(
      {Key? key,
      required this.label,
      required this.backgroundColor,
      required this.fontColor,
      required this.borderColor,
      required this.onTap,
      this.absorbPointer = false})
      : super(key: key);

  NextButtonWidget.green(
      {required this.label, required this.onTap, this.absorbPointer = false})
      : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.darkGreen;

  NextButtonWidget.white(
      {required this.label, required this.onTap, this.absorbPointer = false})
      : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.borderColor = AppColors.border;

  NextButtonWidget.purple(
      {required this.label, required this.onTap, this.absorbPointer = false})
      : this.backgroundColor = AppColors.purple,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.purple;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        child: AbsorbPointer(
          absorbing: this.absorbPointer,
          child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(this.backgroundColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
                  side: MaterialStateProperty.all(
                      BorderSide(color: this.borderColor))),
              onPressed: onTap,
              child: Text(
                this.label,
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: this.fontColor),
              )),
        ));
  }
}
