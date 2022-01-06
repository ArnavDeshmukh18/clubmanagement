import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clubmanagement/widgets/registrationInputField.dart';
import 'package:clubmanagement/widgets/inputFieldName.dart';



class AddMember extends StatefulWidget {
  const AddMember({Key? key}) : super(key: key);

  @override
  _AddMemberState createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {

  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    Size size =MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;
    TextEditingController emailController=TextEditingController();
    TextEditingController prnNumberController=TextEditingController();
    TextEditingController nameController=TextEditingController();

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xffF6F9FE), Color(0xffF6F9FE)],
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: width / 50,
                ),
                 Row(
                   children: [
                     IconButton(onPressed: () {Navigator.pushNamed(context, 'HomeScreen'); }, icon: const Icon(Icons.arrow_back_ios),
                       ),

                     Text('Add Member',style: GoogleFonts.roboto(
                         fontSize: width / 18,
                         fontWeight: FontWeight.bold,
                     ),)
                   ],
                 ),
                SizedBox(
                  height: height / 35,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width / 20,
                    ),
                    Text(
                      "Enter a Member's Data Below",
                      style: GoogleFonts.roboto(
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 35,
                ),
                InputFieldName(width: width, size: size, parameterName: "Name"),
                InputField(width: width, controller: nameController, parameter: TextInputType.name),
                SizedBox(
                  height: height / 50,
                ),
                InputFieldName(width: width, size: size, parameterName: "Email"),
                InputField(width: width, controller: emailController, parameter: TextInputType.emailAddress),
                SizedBox(
                  height: height / 50,
                ),
                InputFieldName(width: width, size: size, parameterName: "PRN No"),
                InputField(width: width, controller: prnNumberController, parameter: TextInputType.text),
                SizedBox(
                  height: height / 50,
                ),
                SizedBox(
                  height: height / 50,
                ),
                Container(
                  margin:
                  EdgeInsets.only(left: width / 25, right: width / 25),
                  child: ElevatedButton(
                    onPressed: ()  {
                      if (formKey.currentState!.validate()) {
                        try {


                          Navigator.pushNamed(context, 'HomeScreen');
                        } catch (e) {

                            print(e);

                        }
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width / 2.95,
                          right: width / 2.95,
                          top: width / 30,
                          bottom: width / 30),
                      child: Text(
                        "Submit",
                        style: GoogleFonts.roboto(
                            fontSize: size.width / 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff395266),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(width / 10))),
                  ),
                )






              ],
            ),
          ),

          ),
        ),
      ),
    );
  }
}
