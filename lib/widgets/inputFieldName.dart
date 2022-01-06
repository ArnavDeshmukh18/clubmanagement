import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputFieldName extends StatelessWidget {
  const InputFieldName({
    Key? key,
    required this.width,
    required this.size,
    required this.parameterName,
  }) : super(key: key);

  final double width;
  final Size size;
  final String parameterName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: width / 20,
        ),
        Text(
          parameterName,
          style: GoogleFonts.roboto(
            color: Colors.black54,
            fontSize: size.width / 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}