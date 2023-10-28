import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:productive/constants/colors.dart';
import 'package:productive/constants/icons.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body:const Center(
        child: TextField(

          style: TextStyle(color: Colors.white),
          autofocus: true,
          cursorColor: Colors.yellow,
          cursorWidth: 5,
          cursorHeight: 20,
          cursorRadius: Radius.circular(5),
          decoration: InputDecoration(
            hintText: 'Ismni kiriting' ,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.edit),

            border: OutlineInputBorder(
                borderSide: BorderSide(width:3, color: Colors.white)
            )
          ),

        ),

      ),
      drawer: const Drawer(),
      appBar: AppBar(
        
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 16,

            ),
            child: GestureDetector(
              onTap: (){
              },
              child: SvgPicture.asset(AppIcons.chart),

            ),
          ),


        ],
        backgroundColor: dark,
        automaticallyImplyLeading: false,
        title: Builder(
          builder: (context) {
            return Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer(

                    );

                  },
                  child: SvgPicture.asset(AppIcons.hamburger),
                ),
              ],


            );
          }

        ),
        // leading: SvgPicture.asset(
        //   AppIcons.hamburger,
        //   width: 24,
        //   height: 24,
        // ),

      ),

      bottomNavigationBar: Container(


        width: double.maxFinite,
        height: MediaQuery.of(context).padding.bottom + 70,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -4),
              blurRadius: 12,
              color: Color.fromRGBO(0, 0, 0, .25),
            ),

          ],

          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: Color(0xFF1C1E2D),

        ),

        child:  Row(

          children: [
            const SizedBox(
              height: 70,
              width: 72,

            ),
            Padding(
              padding: const EdgeInsets.only(
              ),
              child: GestureDetector(
                onTap: (){
                },
                child: SvgPicture.asset(AppIcons.calendar),

              ),
            ),
          ],
        ),
      ),
    );
  }

}


