import 'package:Ram_prakash_cart_geek/color_and_dimension/colors.dart';
import 'package:Ram_prakash_cart_geek/color_and_dimension/dimension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopContainer extends StatefulWidget {
  const TopContainer({Key key}) : super(key: key);

  @override
  State<TopContainer> createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return
      Container(height: 270,width: double.infinity,
        child: Stack(

        children: [
          Center(
            child: Container(height: 180,width: 313,

              decoration: BoxDecoration(
                color: ColorResources.COLOR_CONTAINER_PINK,
                  borderRadius: BorderRadius.circular(15.0),
              ),
              child: Stack(
                children: [
                  Positioned(top: 80,left: 30,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nanny And',style: GoogleFonts.alegreyaSans(
                          fontWeight: FontWeight.w700,fontSize: Dimensions.fontSizeLarge,
                          color: ColorResources.COLOR_BLUETEXT
                        ),
                        ),
                        Text(
                          'Babysitting Services',style: GoogleFonts.alegreyaSans(
                            fontWeight: FontWeight.w700,fontSize: Dimensions.fontSizeLarge,
                            color: ColorResources.COLOR_BLUETEXT
                        ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 20,width: 70,
                          decoration: BoxDecoration(
                            color: ColorResources.COLOR_BLUETEXT,
                            borderRadius: BorderRadius.circular(15.0),

                          ),
                          child: Center(
                            child: Text("Book Now",style: GoogleFonts.alegreyaSans(
                              color: ColorResources.BACKGROUND_COLOR,fontSize: Dimensions.fontSizeExtraSmall,
                              fontWeight: FontWeight.w500
                            ),),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(top: 0,left: 15,bottom: 10,
            child: Image.asset(
            'images/Group 3749 1.png',
              height: 120.0,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
    ),
      );

  }
}
