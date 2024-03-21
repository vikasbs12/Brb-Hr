import '../../../core/app_export.dart';

/// This class is used in the [iphonesetwo_item_widget] screen.
class IphonesetwoItemModel {
  IphonesetwoItemModel({
    this.image,
    this.news,
    this.id,
  }) {
    image = image ?? ImageConstant.imgIconBriefcaseOutline;
    news = news ?? "News";
    id = id ?? "";
  }

  String? image;

  String? news;

  String? id;
}
