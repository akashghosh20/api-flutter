// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.data,
    this.links,
    this.meta,
  });

  List<Datum> ? data;
  Links  ?links;
  Meta  ?meta;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    links: json["links"] == null ? null : Links.fromJson(json["links"]),
    meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toJson())),
    "links": links == null ? null : links!.toJson(),
    "meta": meta == null ? null : meta!.toJson(),
  };
}

class Datum {
  Datum({
    this.id,
    this.name,
    this.hasDiscount,
    this.outOfStock,
    this.unitPrice,
    this.unit,
    this.quantity,
    this.cartId,
    this.image,
    this.slug,
  });

  int ? id;
  String ? name;
  bool ? hasDiscount;
  bool ? outOfStock;
  String ? unitPrice;
  String  ?unit;
  int ? quantity;
  dynamic cartId;
  String ? image;
  String ? slug;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    hasDiscount: json["has_discount"] == null ? null : json["has_discount"],
    outOfStock: json["out_of_stock"] == null ? null : json["out_of_stock"],
    unitPrice: json["unit_price"] == null ? null : json["unit_price"],
    unit: json["unit"] == null ? null : json["unit"],
    quantity: json["quantity"] == null ? null : json["quantity"],
    cartId: json["cart_id"],
    image: json["image"] == null ? null : json["image"],
    slug: json["slug"] == null ? null : json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "has_discount": hasDiscount == null ? null : hasDiscount,
    "out_of_stock": outOfStock == null ? null : outOfStock,
    "unit_price": unitPrice == null ? null : unitPrice,
    "unit": unit == null ? null : unit,
    "quantity": quantity == null ? null : quantity,
    "cart_id": cartId,
    "image": image == null ? null : image,
    "slug": slug == null ? null : slug,
  };
}

class Links {
  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  String ? first;
  String ? last;
  dynamic ? prev;
  String? next;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    first: json["first"] == null ? null : json["first"],
    last: json["last"] == null ? null : json["last"],
    prev: json["prev"],
    next: json["next"] == null ? null : json["next"],
  );

  Map<String, dynamic> toJson() => {
    "first": first == null ? null : first,
    "last": last == null ? null : last,
    "prev": prev,
    "next": next == null ? null : next,
  };
}

class Meta {
  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  int ? currentPage;
  int  ?from;
  int ?lastPage;
  List<Link>  ?links;
  String ? path;
  int ? perPage;
  int ? to;
  int ? total;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    currentPage: json["current_page"] == null ? null : json["current_page"],
    from: json["from"] == null ? null : json["from"],
    lastPage: json["last_page"] == null ? null : json["last_page"],
    links: json["links"] == null ? null : List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    path: json["path"] == null ? null : json["path"],
    perPage: json["per_page"] == null ? null : json["per_page"],
    to: json["to"] == null ? null : json["to"],
    total: json["total"] == null ? null : json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage == null ? null : currentPage,
    "from": from == null ? null : from,
    "last_page": lastPage == null ? null : lastPage,
    "links": links == null ? null : List<dynamic>.from(links!.map((x) => x.toJson())),
    "path": path == null ? null : path,
    "per_page": perPage == null ? null : perPage,
    "to": to == null ? null : to,
    "total": total == null ? null : total,
  };
}

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String ?url;
  String  ?label;
  bool ?active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"] == null ? null : json["url"],
    label: json["label"] == null ? null : json["label"],
    active: json["active"] == null ? null : json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url == null ? null : url,
    "label": label == null ? null : label,
    "active": active == null ? null : active,
  };
}
