import 'package:flutter/material.dart';
import 'package:clubmanagement/Colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xffF6F9FE), Color(0xffF6F9FE)],
      )),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                 SizedBox(
                  height: width/30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width / 50,
                    ),
                    Text(
                      "Club Management",
                      style: GoogleFonts.roboto(
                          fontSize: size.width / 15,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: width/10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width / 50,
                    ),
                    Text(
                      "Select the one of the following options",
                      style: GoogleFonts.roboto(
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                        fontSize: width / 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height/30,
                )
            ,
                TaskManager(height: height, width: width, NavigateTo: '', Task: 'Add Member',),
                TaskManager(height: height, width: width, NavigateTo: '', Task: 'Delete Member',),
                TaskManager(height: height, width: width, Task: 'Display Members', NavigateTo: '',),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

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

