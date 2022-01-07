class showProducts {
  String? message;
  List<Products>? products;

  showProducts({this.message, this.products});

  showProducts.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? id;
  int? brandId;
  int? categoryId;
  int? subcategoryId;
  int? subsubcategoryId;
  String? productName;
  String? productCode;
  String? productQty;
  String? productTags;
  String? productSize;
  String? productColor;
  String? sellingPrice;
  String? discountPrice;
  String? productShortDescp;
  String? productLongDescp;
  String? productThambnail;
  int? hotDeals;
  int? featured;
  int? specialOffer;
  int? specialDeals;
  int? status;
  int? productViews;
  String? vedio;
  String? createdAt;
  String? updatedAt;

  Products(
      {this.id,
        this.brandId,
        this.categoryId,
        this.subcategoryId,
        this.subsubcategoryId,
        this.productName,
        this.productCode,
        this.productQty,
        this.productTags,
        this.productSize,
        this.productColor,
        this.sellingPrice,
        this.discountPrice,
        this.productShortDescp,
        this.productLongDescp,
        this.productThambnail,
        this.hotDeals,
        this.featured,
        this.specialOffer,
        this.specialDeals,
        this.status,
        this.productViews,
        this.vedio,
        this.createdAt,
        this.updatedAt});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brandId = json['brand_id'];
    categoryId = json['category_id'];
    subcategoryId = json['subcategory_id'];
    subsubcategoryId = json['subsubcategory_id'];
    productName = json['product_name'];
    productCode = json['product_code'];
    productQty = json['product_qty'];
    productTags = json['product_tags'];
    productSize = json['product_size'];
    productColor = json['product_color'];
    sellingPrice = json['selling_price'];
    discountPrice = json['discount_price'];
    productShortDescp = json['product_short_descp'];
    productLongDescp = json['product_long_descp'];
    productThambnail = json['product_thambnail'];
    hotDeals = json['hot_deals'];
    featured = json['featured'];
    specialOffer = json['special_offer'];
    specialDeals = json['special_deals'];
    status = json['status'];
    productViews = json['product_views'];
    vedio = json['vedio'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['brand_id'] = this.brandId;
    data['category_id'] = this.categoryId;
    data['subcategory_id'] = this.subcategoryId;
    data['subsubcategory_id'] = this.subsubcategoryId;
    data['product_name'] = this.productName;
    data['product_code'] = this.productCode;
    data['product_qty'] = this.productQty;
    data['product_tags'] = this.productTags;
    data['product_size'] = this.productSize;
    data['product_color'] = this.productColor;
    data['selling_price'] = this.sellingPrice;
    data['discount_price'] = this.discountPrice;
    data['product_short_descp'] = this.productShortDescp;
    data['product_long_descp'] = this.productLongDescp;
    data['product_thambnail'] = this.productThambnail;
    data['hot_deals'] = this.hotDeals;
    data['featured'] = this.featured;
    data['special_offer'] = this.specialOffer;
    data['special_deals'] = this.specialDeals;
    data['status'] = this.status;
    data['product_views'] = this.productViews;
    data['vedio'] = this.vedio;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}