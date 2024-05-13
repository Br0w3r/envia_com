import 'dart:convert';
import 'package:envia_com/core/values/globals.dart';

// Convertir de JSON String a ProductModel
ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

// Convertir de ProductModel a JSON String
String productModelToJson(ProductModel data) => json.encode(data.toJson());

// Convertir de Product a Map<String, String>
Map<String, String> productModelToMap(Product product) {
  return {
    'id': product.id ?? '',
    'sku': product.sku ?? '',
    'name': product.name ?? 'S/N',
    'description': product.description ?? 'Sin detalle...',
    'currency': product.currency ?? '',
    'quantity': product.quantity ?? '',
    'price': product.price ?? '0.00',
    'totalCart': (product.totalCart ?? 0.0).toString(),
    'weight': product.dimensions?.weight ?? '',
    'vendor': product.vendor ?? 'S/N',
    'imageUrl': product.imageUrl ?? Globals.imageNotFound,
    // Serializando 'options' como una lista de mapas y luego a String
    'options':
        jsonEncode(product.options?.map((x) => x.toJson()).toList() ?? []),
  };
}

// Modelo principal que contiene la lista de productos y la información de paginación
class ProductModel {
  bool? success;
  List<Product>? products;
  Page? page;

  ProductModel({this.success, this.products, this.page});

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        success: json["success"],
        products: json["products"] == null
            ? []
            : List<Product>.from(
                json["products"].map((x) => Product.fromJson(x))),
        page: json["page"] == null ? null : Page.fromJson(json["page"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
        "page": page?.toJson(),
      };
}

// Clase para manejar la paginación
class Page {
  dynamic next;
  dynamic previous;

  Page({this.next, this.previous});

  factory Page.fromJson(Map<String, dynamic> json) => Page(
        next: json["next"],
        previous: json["previous"],
      );

  Map<String, dynamic> toJson() => {
        "next": next,
        "previous": previous,
      };
}

// Clase para representar cada producto
class Product {
  String? id;
  dynamic productUserId;
  String? sku;
  String? name;
  dynamic subName;
  dynamic upc;
  dynamic gtin;
  String? description;
  String? currency;
  dynamic productType;
  String? quantity;
  String? price;
  String? totalCart;
  dynamic cost;
  dynamic discount;
  Dimensions? dimensions;
  Dimensions? units;
  List<dynamic>? tags;
  ProductStatus? status;
  List<Variant>? variants;
  List<Option>? options;
  List<dynamic>? associatedItems;
  Logistic? logistic;
  List<ImageModel>? images;
  String? imageUrl;
  dynamic condition;
  String? link;
  String? vendor;
  dynamic sellOutStock;
  List<dynamic>? locations;
  List<dynamic>? internationalShipment;

  Product({
    this.id,
    this.productUserId,
    this.sku,
    this.name,
    this.subName,
    this.upc,
    this.gtin,
    this.description,
    this.currency,
    this.productType,
    this.quantity,
    this.price,
    this.cost,
    this.totalCart,
    this.discount,
    this.dimensions,
    this.units,
    this.tags,
    this.status,
    this.variants,
    this.options,
    this.associatedItems,
    this.logistic,
    this.images,
    this.imageUrl,
    this.condition,
    this.link,
    this.vendor,
    this.sellOutStock,
    this.locations,
    this.internationalShipment,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        productUserId: json["productUserId"],
        sku: json["sku"],
        name: json["name"],
        subName: json["subName"],
        upc: json["upc"],
        gtin: json["gtin"],
        description: json["description"],
        currency: json["currency"],
        productType: json["productType"],
        quantity: json["quantity"],
        price: json["price"],
        totalCart: json["totalCart"],
        cost: json["cost"],
        discount: json["discount"],
        dimensions: json["dimensions"] == null
            ? null
            : Dimensions.fromJson(json["dimensions"]),
        units:
            json["units"] == null ? null : Dimensions.fromJson(json["units"]),
        tags: json["tags"] == null
            ? []
            : List<dynamic>.from(json["tags"].map((x) => x)),
        status: json["status"] == null
            ? null
            : ProductStatus.fromJson(json["status"]),
        variants: json["variants"] == null
            ? []
            : List<Variant>.from(
                json["variants"].map((x) => Variant.fromJson(x))),
        options: _parseOptions(json["options"]),
        associatedItems: json["associatedItems"] == null
            ? []
            : List<dynamic>.from(json["associatedItems"].map((x) => x)),
        logistic: json["logistic"] == null
            ? null
            : Logistic.fromJson(json["logistic"]),
        images: json["images"] == null
            ? []
            : List<ImageModel>.from(
                json["images"].map((x) => ImageModel.fromJson(x))),
        imageUrl: json["imageUrl"],
        condition: json["condition"],
        link: json["link"],
        vendor: json["vendor"],
        sellOutStock: json["sellOutStock"],
        locations: json["locations"] == null
            ? []
            : List<dynamic>.from(json["locations"].map((x) => x)),
        internationalShipment: json["internationalShipment"] == null
            ? []
            : List<dynamic>.from(json["internationalShipment"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "productUserId": productUserId,
        "sku": sku,
        "name": name,
        "subName": subName,
        "upc": upc,
        "gtin": gtin,
        "description": description,
        "currency": currency,
        "productType": productType,
        "quantity": quantity,
        "price": price,
        "cost": cost,
        "totalCart": totalCart,
        "discount": discount,
        "dimensions": dimensions?.toJson(),
        "units": units?.toJson(),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "status": status?.toJson(),
        "variants": variants == null
            ? []
            : List<dynamic>.from(variants!.map((x) => x.toJson())),
        "options": jsonEncode(options?.map((x) => x.toJson()).toList() ?? []),
        "associatedItems": associatedItems == null
            ? []
            : List<dynamic>.from(associatedItems!.map((x) => x)),
        "logistic": logistic?.toJson(),
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "imageUrl": imageUrl,
        "condition": condition,
        "link": link,
        "vendor": vendor,
        "sellOutStock": sellOutStock,
        "locations": locations == null
            ? []
            : List<dynamic>.from(locations!.map((x) => x)),
        "internationalShipment": internationalShipment == null
            ? []
            : List<dynamic>.from(internationalShipment!.map((x) => x)),
      };
}

List<Option> _parseOptions(dynamic jsonOptions) {
  if (jsonOptions == null) {
    return [];
  } else if (jsonOptions is String) {
    // Decode the JSON string before processing
    return List<Option>.from(
        jsonDecode(jsonOptions).map((x) => Option.fromJson(x)));
  } else if (jsonOptions is List) {
    // Directly process the list
    return List<Option>.from(jsonOptions.map((x) => Option.fromJson(x)));
  } else {
    return [];
  }
}

// Clase para manejar las dimensiones de productos y variantes
class Dimensions {
  dynamic width;
  dynamic height;
  dynamic length;
  String? weight;

  Dimensions({
    this.width,
    this.height,
    this.length,
    this.weight,
  });

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        width: json["width"],
        height: json["height"],
        length: json["length"],
        weight: json["weight"],
      );

  Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "length": length,
        "weight": weight,
      };
}

// Clase para manejar información de imágenes asociadas a productos
class ImageModel {
  String? id;
  String? url;
  List<dynamic>? variantIds;
  String? ecartapiUrl;

  ImageModel({
    this.id,
    this.url,
    this.variantIds,
    this.ecartapiUrl,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json["id"],
        url: json["url"],
        variantIds: json["variantIds"] == null
            ? []
            : List<dynamic>.from(json["variantIds"].map((x) => x)),
        ecartapiUrl: json["ecartapiUrl"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "variantIds": variantIds == null
            ? []
            : List<dynamic>.from(variantIds!.map((x) => x)),
        "ecartapiUrl": ecartapiUrl,
      };
}

// Clase para manejar la logística asociada a los productos
class Logistic {
  dynamic me1Suported;
  dynamic mode;
  dynamic type;
  String? free;
  dynamic direction;
  dynamic dimensions;
  List<dynamic>? rates;

  Logistic({
    this.me1Suported,
    this.mode,
    this.type,
    this.free,
    this.direction,
    this.dimensions,
    this.rates,
  });

  factory Logistic.fromJson(Map<String, dynamic> json) => Logistic(
        me1Suported: json["me1Suported"],
        mode: json["mode"],
        type: json["type"],
        free: json["free"],
        direction: json["direction"],
        dimensions: json["dimensions"],
        rates: json["rates"] == null
            ? []
            : List<dynamic>.from(json["rates"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "me1Suported": me1Suported,
        "mode": mode,
        "type": type,
        "free": free,
        "direction": direction,
        "dimensions": dimensions,
        "rates": rates == null ? [] : List<dynamic>.from(rates!.map((x) => x)),
      };
}

// Clase para representar opciones disponibles para productos
class Option {
  String? id;
  String? name;
  List<String>? values;

  Option({
    this.id,
    this.name,
    this.values,
  });

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        id: json["id"],
        name: json["name"],
        values: json["values"] == null
            ? []
            : List<String>.from(json["values"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "values":
            values == null ? [] : List<dynamic>.from(values!.map((x) => x)),
      };
}

// Clase para manejar el estado del producto
class ProductStatus {
  dynamic id;
  String? visibility;
  String? active;
  String? status;
  String? ecartapiId;
  String? ecartapi;
  dynamic hasOptions;
  dynamic inStock;

  ProductStatus({
    this.id,
    this.visibility,
    this.active,
    this.status,
    this.ecartapiId,
    this.ecartapi,
    this.hasOptions,
    this.inStock,
  });

  factory ProductStatus.fromJson(Map<String, dynamic> json) => ProductStatus(
        id: json["id"],
        visibility: json["visibility"],
        active: json["active"],
        status: json["status"],
        ecartapiId: json["ecartapiId"],
        ecartapi: json["ecartapi"],
        hasOptions: json["hasOptions"],
        inStock: json["inStock"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "visibility": visibility,
        "active": active,
        "status": status,
        "ecartapiId": ecartapiId,
        "ecartapi": ecartapi,
        "hasOptions": hasOptions,
        "inStock": inStock,
      };
}

// Clase para manejar las variantes de productos
class Variant {
  String? id;
  String? productId;
  dynamic productUserId;
  dynamic barcode;
  String? name;
  String? price;
  dynamic currency;
  String? sku;
  String? fulfillmentService;
  String? option1;
  dynamic option2;
  dynamic option3;
  Dimensions? dimensions;
  Dimensions? units;
  Inventory? inventory;
  VariantStatus? status;
  String? requireShipping;
  String? bundled;
  dynamic countryCodeOrigin;
  dynamic provinceCodeOrigin;
  dynamic harmonizedSystemCode;
  List<dynamic>? countryHarmonizedSystemCode;
  dynamic imageId;
  dynamic imageUrl;
  String? ecartapiUrl;

  Variant({
    this.id,
    this.productId,
    this.productUserId,
    this.barcode,
    this.name,
    this.price,
    this.currency,
    this.sku,
    this.fulfillmentService,
    this.option1,
    this.option2,
    this.option3,
    this.dimensions,
    this.units,
    this.inventory,
    this.status,
    this.requireShipping,
    this.bundled,
    this.countryCodeOrigin,
    this.provinceCodeOrigin,
    this.harmonizedSystemCode,
    this.countryHarmonizedSystemCode,
    this.imageId,
    this.imageUrl,
    this.ecartapiUrl,
  });

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
        id: json["id"],
        productId: json["productId"],
        productUserId: json["productUserId"],
        barcode: json["barcode"],
        name: json["name"],
        price: json["price"],
        currency: json["currency"],
        sku: json["sku"],
        fulfillmentService: json["fulfillmentService"],
        option1: json["option1"],
        option2: json["option2"],
        option3: json["option3"],
        dimensions: json["dimensions"] == null
            ? null
            : Dimensions.fromJson(json["dimensions"]),
        units:
            json["units"] == null ? null : Dimensions.fromJson(json["units"]),
        inventory: json["inventory"] == null
            ? null
            : Inventory.fromJson(json["inventory"]),
        status: json["status"] == null
            ? null
            : VariantStatus.fromJson(json["status"]),
        requireShipping: json["requireShipping"],
        bundled: json["bundled"],
        countryCodeOrigin: json["countryCodeOrigin"],
        provinceCodeOrigin: json["provinceCodeOrigin"],
        harmonizedSystemCode: json["harmonizedSystemCode"],
        countryHarmonizedSystemCode: json["countryHarmonizedSystemCode"] == null
            ? []
            : List<dynamic>.from(
                json["countryHarmonizedSystemCode"].map((x) => x)),
        imageId: json["imageId"],
        imageUrl: json["imageUrl"],
        ecartapiUrl: json["ecartapiUrl"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "productId": productId,
        "productUserId": productUserId,
        "barcode": barcode,
        "name": name,
        "price": price,
        "currency": currency,
        "sku": sku,
        "fulfillmentService": fulfillmentService,
        "option1": option1,
        "option2": option2,
        "option3": option3,
        "dimensions": dimensions?.toJson(),
        "units": units?.toJson(),
        "inventory": inventory?.toJson(),
        "status": status?.toJson(),
        "requireShipping": requireShipping,
        "bundled": bundled,
        "countryCodeOrigin": countryCodeOrigin,
        "provinceCodeOrigin": provinceCodeOrigin,
        "harmonizedSystemCode": harmonizedSystemCode,
        "countryHarmonizedSystemCode": countryHarmonizedSystemCode == null
            ? []
            : List<dynamic>.from(countryHarmonizedSystemCode!.map((x) => x)),
        "imageId": imageId,
        "imageUrl": imageUrl,
        "ecartapiUrl": ecartapiUrl,
      };
}

// Clase para manejar el inventario de variantes
class Inventory {
  String? itemId;
  String? quantity;

  Inventory({
    this.itemId,
    this.quantity,
  });

  factory Inventory.fromJson(Map<String, dynamic> json) => Inventory(
        itemId: json["itemId"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "itemId": itemId,
        "quantity": quantity,
      };
}

// Clase para manejar el estado de las variantes
class VariantStatus {
  String? active;

  VariantStatus({
    this.active,
  });

  factory VariantStatus.fromJson(Map<String, dynamic> json) => VariantStatus(
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "active": active,
      };
}
