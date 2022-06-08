

import 'current_booking_model.dart';

class Post{
  final int id;
  final String cName;
  final int dogImage;
  final String catImage;
  //final List<SubCatListData> subCatListDataList;



  Post({ this.id,  this.cName, this.dogImage, this.catImage, });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as int,
      cName: json['package_name'] as String,
      dogImage: json['price'] as int,
      catImage: json['description'] as String,
     /* subCatListDataList: (json['packages'] as Iterable).map<SubCatListData>(
            (value) => SubCatListData.fromJson(value as Map<String, dynamic>),
      ),
*/
    );
  }
}
