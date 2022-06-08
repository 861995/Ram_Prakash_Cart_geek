class SubCatListData{
  final String subCatId;
  final String catId;
  final String subCategoryName;
  final String banner;
  final String image;

  SubCatListData({ this.subCatId,  this.catId,  this.subCategoryName,  this.banner, this.image});

  factory SubCatListData.fromJson(Map<String, dynamic> json) {
    return SubCatListData(
      subCatId: json['id'] as String,
      catId: json['package_name'] as String,
      subCategoryName: json['price'] as String,
      banner: json['description'] as String,
      image: json['image'] as String,
    );
  }
}