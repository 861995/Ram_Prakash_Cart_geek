import 'package:Ram_prakash_cart_geek/color_and_dimension/colors.dart';
import 'package:Ram_prakash_cart_geek/color_and_dimension/dimension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavItem extends StatelessWidget {
  final String assetName;
  final String buttonText;
  final bool isSelected;
  BottomNavItem({ this.assetName,  this.buttonText,  this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  assetName,
                  height: 20.0,
                  width: 30.0,
                  color: isSelected? ColorResources.COLOR_TEXT : ColorResources.COLOR_BLACK,
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(buttonText,style: GoogleFonts.alegreyaSans(color:isSelected? ColorResources.COLOR_TEXT : ColorResources.COLOR_BLACK,fontWeight: isSelected ? FontWeight.normal:FontWeight.w100 ,fontSize: Dimensions.fontSizeExtraSmall),),
              ],
            ),
            isSelected?  Icon(Icons.circle,size: Dimensions.RADIUS_SMALL,color:ColorResources.COLOR_TEXT ,):SizedBox.shrink()

          ],
        ),
      ),
    );
  }
}
