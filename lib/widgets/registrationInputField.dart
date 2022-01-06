import 'package:flutter/material.dart';
/*
class InputField extends StatefulWidget {
  const InputField(
      {Key? key,
      required this.width,
      required this.controller,
      required this.parameter})
      : super(key: key);
  final double width;
  final TextEditingController controller;

  final TextInputType parameter;

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    bool validateEmail(String value) {
      RegExp regex = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
      if (!regex.hasMatch(value)) {
        return true;
      } else {
        return false;
      }
    }

    return Container(
      width: widget.width / 1.10,
      height: widget.width / 10,
      color: const Color(0xffEBF2FA),
      margin: EdgeInsets.only(
          top: widget.width / 35,
          left: widget.width / 25,
          right: widget.width / 25),
      child: TextFormField(
        keyboardType: widget.parameter,
        cursorColor: Colors.black54,
        controller: widget.controller,
        onSaved: (value) {
          widget.controller.value.copyWith(text: value);
        },
        validator: (value) {
          if (widget.parameter == TextInputType.name) {
            if (value!.isEmpty) {
              return 'Enter a Name';
            } else {
              return null;
            }
          } else if (widget.parameter == TextInputType.emailAddress) {
            if (value!.isEmpty) {
              return 'Enter a Email';
            } else {
              if (validateEmail(value)) {
                //Checking Email Valid Or not
                return 'Enter a Valid Email';
              } else {
                return null;
              }
            }
          } else if (widget.parameter == TextInputType.text) {
            if (value!.isEmpty) {
              return 'Enter a PRN Number';
            }
          }
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.width / 30),
            borderSide: const BorderSide(color: Color(0xff395266)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.width / 30),
            borderSide: const BorderSide(color: Color(0xff395266)),
          ),
        ),
      ),
    );
  }
}
*/
class InputField extends StatelessWidget {
  const InputField({Key? key, required this.width, required this.controller, required this.parameter}) : super(key: key);
  final double width;
  final TextEditingController controller;

  final TextInputType parameter;
  @override
  Widget build(BuildContext context) {


    bool validateEmail(String value) {
      RegExp regex =  RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
      if (!regex.hasMatch(value)) {
        return true;
      } else {
        return false;
      }
    }

    return Container(
      width: width / 1.10,
      height: width / 10,
      color: const Color(0xffEBF2FA),
      margin: EdgeInsets.only(
          top: width / 35,
          left: width / 25,
          right: width / 25),
      child: TextFormField(
        keyboardType: parameter,
        cursorColor: Colors.black54,
        controller: controller,
        onSaved: (value) {
          controller.value.copyWith(text: value);
        },
        validator: (value) {
          if (parameter == TextInputType.name) {
            if (value!.isEmpty) {
              return 'Enter a Name';
            } else {
              return null;
            }
          } else if (parameter == TextInputType.emailAddress) {
            if (value!.isEmpty) {
              return 'Enter a Email';
            } else {
              if (validateEmail(value)) {
                //Checking Email Valid Or not
                return 'Enter a Valid Email';
              } else {
                return null;
              }
            }
          } else if (parameter == TextInputType.text) {
            if (value!.isEmpty) {
              return 'Enter a PRN Number';
            }
          }
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width / 30),
            borderSide: const BorderSide(color: Color(0xff395266)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(width / 30),
            borderSide: const BorderSide(color: Color(0xff395266)),
          ),
        ),
      ),

    );
  }
}
