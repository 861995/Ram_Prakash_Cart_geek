import 'package:Ram_prakash_cart_geek/color_and_dimension/colors.dart';
import 'package:Ram_prakash_cart_geek/color_and_dimension/dimension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrentBooking extends StatefulWidget {
  const CurrentBooking({Key key}) : super(key: key);

  @override
  State<CurrentBooking> createState() => _CurrentBookingState();
}

class _CurrentBookingState extends State<CurrentBooking> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 161,width: 303,
    decoration: BoxDecoration(
      color: ColorResources.BACKGROUND_COLOR,
      borderRadius: BorderRadius.circular(1.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[300], //New
          blurRadius: 3.0,
        )
      ],
    ),
      child:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("One Day Package",style: GoogleFonts.alegreyaSans(
                  color: ColorResources.COLOR_DIMTEXT,fontWeight: FontWeight.w500,
                  fontSize: Dimensions.fontSizeLarge
                ),),
                Container(
                  height: 19,width: 70,
                  decoration: BoxDecoration(
                    color: ColorResources.COLOR_DIMTEXT,
                    borderRadius: BorderRadius.circular(15.0),

                  ),
                  child: Center(
                    child: Text("Start",style: GoogleFonts.alegreyaSans(
                        color: ColorResources.BACKGROUND_COLOR,fontSize: Dimensions.fontSizeExtraSmall,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            ///From and to
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("From",style: GoogleFonts.alegreyaSans(
                    color: ColorResources.COLOR_GREY_BUNKER,fontWeight: FontWeight.w400,
                    fontSize: Dimensions.fontSizeSmall
                ),),
                Text("To",style: GoogleFonts.alegreyaSans(
                    color: ColorResources.COLOR_GREY_BUNKER,fontWeight: FontWeight.w400,
                    fontSize: Dimensions.fontSizeSmall
                ),),
                SizedBox(),

              ],
            ),

            ///Date
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'images/Path 1849.png',
                      height: 10.0,
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(width: 4,),
                    Text("12.08.2020",style: GoogleFonts.alegreyaSans(
                        color: ColorResources.COLOR_GREY_BUNKER,fontWeight: FontWeight.w500,
                        fontSize: Dimensions.fontSizeLarge
                    ),),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'images/Path 1849.png',
                      height: 10.0,
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(width: 4,),
                    Text("13.08.2020",style: GoogleFonts.alegreyaSans(
                        color: ColorResources.COLOR_GREY_BUNKER,fontWeight: FontWeight.w500,
                        fontSize: Dimensions.fontSizeLarge
                    ),),
                  ],
                ),
                SizedBox(),

              ],
            ),


            ///Time
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'images/Path 1838.png',
                      height: 10.0,
                      fit: BoxFit.fitHeight,
                      color: ColorResources.COLOR_DIMTEXT,
                    ),
                    SizedBox(width: 4,),
                    Text("11 pm",style: GoogleFonts.alegreyaSans(
                        color: ColorResources.COLOR_GREY_BUNKER,fontWeight: FontWeight.w500,
                        fontSize: Dimensions.fontSizeLarge
                    ),),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'images/Path 1838.png',
                      height: 10.0,
                      fit: BoxFit.fitHeight,
                      color: ColorResources.COLOR_DIMTEXT,
                    ),
                    SizedBox(width: 4,),
                    Text("7 am",style: GoogleFonts.alegreyaSans(
                        color: ColorResources.COLOR_GREY_BUNKER,fontWeight: FontWeight.w500,
                        fontSize: Dimensions.fontSizeLarge
                    ),),
                  ],
                ),
                SizedBox(),

              ],
            ),
            SizedBox(height: 9,),
            /// last button container
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                height: 19,width: 70,
                decoration: BoxDecoration(
                  color: ColorResources.COLOR_BLUETEXT,
                  borderRadius: BorderRadius.circular(15.0),

                ),
                child: Center(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star_border,color: ColorResources.BACKGROUND_COLOR,size: 13,),
                      Text("Rate Us",style: GoogleFonts.alegreyaSans(
                          color: ColorResources.BACKGROUND_COLOR,fontSize: Dimensions.fontSizeExtraSmall,
                          fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ),
              ),
              Container(
                height: 19,width: 70,
                decoration: BoxDecoration(
                  color: ColorResources.COLOR_BLUETEXT,
                  borderRadius: BorderRadius.circular(15.0),

                ),
                child: Center(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on_outlined,color: ColorResources.BACKGROUND_COLOR,size: 13,),
                      Text("Geolocation",style: GoogleFonts.alegreyaSans(
                          color: ColorResources.BACKGROUND_COLOR,fontSize: Dimensions.fontSizeExtraSmall,
                          fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ),
              ),
              Container(
                height: 19,width: 70,
                decoration: BoxDecoration(
                  color: ColorResources.COLOR_BLUETEXT,
                  borderRadius: BorderRadius.circular(15.0),

                ),
                child: Center(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mic_rounded,color: ColorResources.BACKGROUND_COLOR,size: 13,),
                      Text("Survilence",style: GoogleFonts.alegreyaSans(
                          color: ColorResources.BACKGROUND_COLOR,fontSize: Dimensions.fontSizeExtraSmall,
                          fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ),
              )
            ],)
          ],
        ),
      ),
    );
  }
}
