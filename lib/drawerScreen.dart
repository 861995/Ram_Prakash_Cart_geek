import 'package:Ram_prakash_cart_geek/color_and_dimension/colors.dart';
import 'package:flutter/material.dart';
import 'package:Ram_prakash_cart_geek/configuration.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_and_dimension/dimension.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorResources.BACKGROUND_COLOR,
      padding: EdgeInsets.only(top:60,bottom: 50,left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 80,),
          ///Profile section
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 53.0,
                    height: 53.0,
                    decoration: BoxDecoration(
                      color: ColorResources.COLOR_PRIMARY,
                      borderRadius: BorderRadius.all( Radius.circular(100.0)),
                      border: Border.all(
                        color:ColorResources.COLOR_PRIMARY,
                        width: 1.0,
                      ),
                    ),
                    child: Image.asset(
                      'images/image 1.png',
                      height: 20.0,
                      width: 30.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text("Emily Cyrus",style: GoogleFonts.alegreyaSans(
                      fontSize: Dimensions.fontSizeOverLarge,fontWeight: FontWeight.w700,
                      color: ColorResources.COLOR_DIMTEXT
                  )
                  ),
                ],
              ),
              SizedBox(width: 160,)
            ],
          ),
          SizedBox(height: 20,),

          Column(
            children: drawerItems.map((element) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text(element['title'],style: GoogleFonts.alegreyaSans(color: ColorResources.COLOR_BLUETEXT,fontWeight: FontWeight.w500,fontSize: 20))
                    ],

                  ),
                  Divider(color: ColorResources.COLOR_CONTAINER_PINK,thickness: 0.5,indent: 10,endIndent: 180,),
                ],
              ),

            )).toList(),

          ),




        ],
      ),

    );
  }
}
