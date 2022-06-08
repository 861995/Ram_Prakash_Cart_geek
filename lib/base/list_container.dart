import 'package:Ram_prakash_cart_geek/Model/post_model.dart';
import 'package:Ram_prakash_cart_geek/Repo/http_service.dart';
import 'package:Ram_prakash_cart_geek/color_and_dimension/colors.dart';
import 'package:Ram_prakash_cart_geek/color_and_dimension/dimension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;



class ListContainer extends StatefulWidget {
  const ListContainer({Key key}) : super(key: key);

  @override
  State<ListContainer> createState() => _ListContainerState();
}

class _ListContainerState extends State<ListContainer> {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
        future: httpService.dashboardDataAPI(http.Client()),
      builder: (context, snapshot) {
    if(snapshot.hasError) {
      List<Post> posts = snapshot.data;

      return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 36),
              child: Container(height: 124, width: 303,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: i % 2 == 0
                      ? ColorResources.COLOR_CONTAINER_PINK
                      : ColorResources.COLOR_CONTAINER_BLUE,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                'images/XMLID_691_.png',
                                height: 24.5,
                                width: 24.5,
                                fit: BoxFit.contain,
                                color: i % 2 == 0
                                    ? ColorResources.COLOR_PRIMARY
                                    : ColorResources.BACKGROUND_COLOR,
                              ),

                              Positioned(top: 6,left: 6,
                                  child: Text("0"+(i+1).toString(),style: GoogleFonts.alegreyaSans(
                                      color: ColorResources.BACKGROUND_COLOR,
                                      fontSize: Dimensions.fontSizeSmall,
                                      fontWeight: FontWeight.w500
                                  ) ,))
                            ],
                          ),
                          Container(
                            height: 22, width: 72,
                            decoration: BoxDecoration(
                              color: i % 2 == 0
                                  ? ColorResources.COLOR_DIMTEXT
                                  : ColorResources.COLOR_BUTTON_BLUE,
                              borderRadius: BorderRadius.circular(15.0),

                            ),
                            child: Center(
                              child: Text(
                                "Book Now", style: GoogleFonts.alegreyaSans(
                                  color: ColorResources.BACKGROUND_COLOR,
                                  fontSize: Dimensions.fontSizeSmall,
                                  fontWeight: FontWeight.w500
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment
                          .spaceBetween,
                        children: [
                          Text(i==0?"One Day Package":i==1?"Three Days Package":i==2?"Five Days Package":"Weekend Package",
                            style: GoogleFonts.alegreyaSans(
                                color: ColorResources.COLOR_BLUETEXT,
                                fontWeight: FontWeight.w500,
                                fontSize: Dimensions.fontSizeLarge
                            ),),
                          Text(i==0?("₹ " + "2799"):i==2?("₹ " + "11495"):("₹ " + "7497"), style: GoogleFonts.alegreyaSans(
                              color: ColorResources.COLOR_BLUETEXT,
                              fontWeight: FontWeight.w700,
                              fontSize: Dimensions.fontSizeLarge
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0,right: 5),
                      child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. LoremIpsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of typeand scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap intoelectronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrasetsheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMakerincluding versions of Lorem Ipsum....",
                        maxLines: 2,
                      ),
                    ),

                  ],
                ),
              ),
            );
          }
      );
    }
    return Center(child: CircularProgressIndicator());
      }
    );

  }
}
