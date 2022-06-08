import 'package:Ram_prakash_cart_geek/base/current_booking_container.dart';
import 'package:Ram_prakash_cart_geek/base/header.dart';
import 'package:Ram_prakash_cart_geek/base/top_container.dart';
import 'package:Ram_prakash_cart_geek/color_and_dimension/colors.dart';
import 'package:Ram_prakash_cart_geek/color_and_dimension/dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'base/bottom_nav_item.dart';
import 'base/list_container.dart';
import 'configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)..rotateY(isDrawerOpen? -0.5:0),
      duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
              color: Colors.grey, //New
              blurRadius: 15.0,
            )
          ],
          borderRadius: BorderRadius.circular(isDrawerOpen?25:0)

      ),
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 5,
          notchMargin: 5,
          clipBehavior: Clip.antiAlias,
          shape: CircularNotchedRectangle(),

          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(children: [
              BottomNavItem(assetName: 'images/home-run (2).png', buttonText: "Home ", isSelected: true,),
              BottomNavItem(assetName: 'images/Path 1833.png', buttonText: "Packages ", isSelected: false,),
              BottomNavItem(assetName: 'images/Path 1838.png', buttonText: "Bookings ", isSelected: false,),
              BottomNavItem(assetName: 'images/Path 1839.png', buttonText: "Profile ", isSelected: false,),
            ]),
          ),
        ),
        body: PageView(
          children: [
            SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderWidget(),
                  ///Profile widget
                  Container(height: 60,
                    // color: Colors.pink,
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 36),
                        child: InkWell( onTap: () {
                          setState(() {
                            if (isDrawerOpen==false) {
                              xOffset = 230;
                              yOffset = 150;
                              scaleFactor = 0.6;
                              isDrawerOpen=true;
                            }else{
                              xOffset=0;
                              yOffset=0;
                              scaleFactor=1;
                              isDrawerOpen=false;
                            }
                          });
                        },
                          child: Container(
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welcome",style: GoogleFonts.alegreyaSans(
                                fontSize: Dimensions.fontSizeExtraLarge,fontWeight: FontWeight.w700
                            ),),

                            Text("Emily Cyrus",style: GoogleFonts.alegreyaSans(
                                fontSize: Dimensions.fontSizeOverLarge,fontWeight: FontWeight.w700,
                                color: ColorResources.COLOR_DIMTEXT
                            )
                            ),
                          ],
                        ),
                      )
                    ],),
                  ),
                  SizedBox(height: 10,),
                  TopContainer(),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 36),
                    child: Text("Your Current Booking",style: GoogleFonts.alegreyaSans(
                        color: ColorResources.COLOR_BLUETEXT,fontSize: Dimensions.fontSizeOverLarge,fontWeight: FontWeight.w700
                    ),),
                  ),
                  SizedBox(height: 10,),
                  ///Current booking container
                  Padding(
                    padding: const EdgeInsets.only(left: 36,right: 36),
                    child: CurrentBooking(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 36,top: 15),
                    child: Text("Packages",style: GoogleFonts.alegreyaSans(
                        color: ColorResources.COLOR_BLUETEXT,fontSize: Dimensions.fontSizeOverLarge,fontWeight: FontWeight.w700
                    ),),
                  ),
                  ///List container
                  Padding(
                    padding: const EdgeInsets.only(left: 36.0,top: 10),
                    child: ListContainer(),
                  )

                ],
              ),
            ),
          ],
        )

      )
    );
  }
}
