import 'package:flutter/material.dart';
import 'package:clubmanagement/Colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';


class TaskManager extends StatelessWidget {
   TaskManager({
    Key? key,
    required this.height,
    required this.width, required this.Task, required this.NavigateTo,
  }) : super(key: key);
  final String Task,NavigateTo;

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
              height: height/7,
              child: Card(
                child:Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      Icon(Icons.person,size: width/10,),
                      SizedBox(
                        width: width/20,
                      ),
                      Text(Task,style:GoogleFonts.roboto(
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                        fontSize: width/18,
                      ),)
                      ,IconButton(
                          onPressed: () {

                          },
                          icon: Icon(Icons.arrow_forward_ios,
                          color: secondaryColor,)),
                    ],
                  ),
                )
                  ,
                  color: const Color(0xffEBF2FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(width / 30),
                  )),
              margin: EdgeInsets.all(width / 23),
            )),
      ],
    );
  }
}

