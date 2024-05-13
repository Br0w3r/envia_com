class Globals {
  static const String authorizationTokenHeader =
      "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJqNENWdUR6R0RpQTJzeHUwWVlPWW5kaUU0WGtvbnNGYiIsImlhdCI6MTY3NDU4NjI5OTUyN30.W01xe4zYHPf8-n8KlW_OnPe8anXZFzNPLIHHmmYTsDCBIeVqTYhbbYxHvRW3HTrN3nnwD9CSvbnFpvC_655UAQ";

  static const String version = "1.0.0";

  static const String imageNotFound = "https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ=";


  static const jsonResponse = '''
    {
    "success": true,
    "products": [
        {
            "id": "7686206488745",
            "productUserId": null,
            "sku": "GOD1N",
            "name": "EcartAPI Backpack",
            "subName": null,
            "upc": null,
            "gtin": null,
            "description": "test product",
            "currency": "MXN",
            "productType": null,
            "quantity": "171",
            "price": "44.00",
            "cost": null,
            "discount": null,
            "dimensions": {
                "width": null,
                "height": null,
                "length": null,
                "weight": "2"
            },
            "units": {
                "width": null,
                "height": null,
                "length": null,
                "weight": "kg"
            },
            "category": {
                "id": null,
                "name": null,
                "all": []
            },
            "tags": [],
            "status": {
                "id": null,
                "visibility": "web",
                "active": "true",
                "status": "active",
                "ecartapiId": "1",
                "ecartapi": "active",
                "hasOptions": null,
                "inStock": null
            },
            "variants": [
                {
                    "id": "43809742979241",
                    "productId": "7686206488745",
                    "productUserId": null,
                    "barcode": null,
                    "name": "Medium",
                    "price": "44.00",
                    "currency": null,
                    "sku": "GOD1N",
                    "fulfillmentService": "manual",
                    "option1": "Medium",
                    "option2": null,
                    "option3": null,
                    "dimensions": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "2"
                    },
                    "units": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "kg"
                    },
                    "inventory": {
                        "itemId": "45914847510697",
                        "quantity": "84"
                    },
                    "status": {
                        "active": "true"
                    },
                    "requireShipping": "true",
                    "bundled": "false",
                    "countryCodeOrigin": null,
                    "provinceCodeOrigin": null,
                    "harmonizedSystemCode": null,
                    "countryHarmonizedSystemCode": [],
                    "imageId": null,
                    "imageUrl": null,
                    "dates": {
                        "createdAt": "2024-03-28T09:50:15-06:00",
                        "updatedAt": "2024-05-09T14:49:53-06:00"
                    },
                    "ecartapiUrl": "https://eshop-deve.herokuapp.com/api/v2/products/7686206488745/variants/43809742979241"
                },
                {
                    "id": "43809806844073",
                    "productId": "7686206488745",
                    "productUserId": null,
                    "barcode": null,
                    "name": "Large",
                    "price": "44.00",
                    "currency": null,
                    "sku": "GOD1N",
                    "fulfillmentService": "manual",
                    "option1": "Large",
                    "option2": null,
                    "option3": null,
                    "dimensions": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "2"
                    },
                    "units": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "kg"
                    },
                    "inventory": {
                        "itemId": "45914911375529",
                        "quantity": "87"
                    },
                    "status": {
                        "active": "true"
                    },
                    "requireShipping": "true",
                    "bundled": "false",
                    "countryCodeOrigin": null,
                    "provinceCodeOrigin": null,
                    "harmonizedSystemCode": null,
                    "countryHarmonizedSystemCode": [],
                    "imageId": null,
                    "imageUrl": null,
                    "dates": {
                        "createdAt": "2024-03-28T10:00:03-06:00",
                        "updatedAt": "2024-04-17T14:54:20-06:00"
                    },
                    "ecartapiUrl": "https://eshop-deve.herokuapp.com/api/v2/products/7686206488745/variants/43809806844073"
                }
            ],
            "options": [
                {
                    "id": "10066866536617",
                    "name": "Size",
                    "values": [
                        "Medium",
                        "Large"
                    ]
                }
            ],
            "associatedItems": [],
            "logistic": {
                "me1Suported": null,
                "mode": null,
                "type": null,
                "free": "false",
                "direction": null,
                "dimensions": null,
                "rates": []
            },
            "images": [
                {
                    "id": "38783403196585",
                    "url": "https://cdn.shopify.com/s/files/1/0630/2443/1273/files/ecartapi-naranja300x300.png?v=1706142226",
                    "variantIds": [],
                    "ecartapiUrl": "https://eshop-deve.herokuapp.com/api/v2/products/7686206488745/images/38783403196585"
                }
            ],
            "imageUrl": "https://cdn.shopify.com/s/files/1/0630/2443/1273/files/ecartapi-naranja300x300.png?v=1706142226",
            "condition": null,
            "link": "https://xn-1y3em03n.myshopify.com/products/o-trabajanding",
            "dates": {
                "createdAt": "2023-01-09T00:28:52-06:00",
                "updatedAt": "2024-05-09T14:49:53-06:00"
            },
            "vendor": "古着!?-",
            "sellOutStock": null,
            "locations": [],
            "internationalShipment": []
        },
        {
            "id": "7686205407401",
            "productUserId": null,
            "sku": "JSCA1REFGRS",
            "name": "T-shirt webhooks fixed :)",
            "subName": null,
            "upc": null,
            "gtin": null,
            "description": null,
            "currency": "MXN",
            "productType": null,
            "quantity": "195",
            "price": "1000.00",
            "cost": null,
            "discount": null,
            "dimensions": {
                "width": null,
                "height": null,
                "length": null,
                "weight": "1"
            },
            "units": {
                "width": null,
                "height": null,
                "length": null,
                "weight": "kg"
            },
            "category": {
                "id": null,
                "name": null,
                "all": []
            },
            "tags": [],
            "status": {
                "id": null,
                "visibility": "web",
                "active": "false",
                "status": "draft",
                "ecartapiId": "3",
                "ecartapi": "draft",
                "hasOptions": null,
                "inStock": null
            },
            "variants": [
                {
                    "id": "43173189648553",
                    "productId": "7686205407401",
                    "productUserId": null,
                    "barcode": null,
                    "name": "s",
                    "price": "1000.00",
                    "currency": null,
                    "sku": "JSCA1REFGRS",
                    "fulfillmentService": "manual",
                    "option1": "s",
                    "option2": null,
                    "option3": null,
                    "dimensions": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "1"
                    },
                    "units": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "kg"
                    },
                    "inventory": {
                        "itemId": "45273713541289",
                        "quantity": "190"
                    },
                    "status": {
                        "active": "false"
                    },
                    "requireShipping": "true",
                    "bundled": "false",
                    "countryCodeOrigin": null,
                    "provinceCodeOrigin": null,
                    "harmonizedSystemCode": null,
                    "countryHarmonizedSystemCode": [],
                    "imageId": null,
                    "imageUrl": null,
                    "dates": {
                        "createdAt": "2023-08-07T12:57:59-06:00",
                        "updatedAt": "2024-04-19T13:34:50-06:00"
                    },
                    "ecartapiUrl": "https://eshop-deve.herokuapp.com/api/v2/products/7686205407401/variants/43173189648553"
                },
                {
                    "id": "43173189681321",
                    "productId": "7686205407401",
                    "productUserId": null,
                    "barcode": null,
                    "name": "m",
                    "price": "1000.00",
                    "currency": null,
                    "sku": "JSCA1REFGRS-2",
                    "fulfillmentService": "manual",
                    "option1": "m",
                    "option2": null,
                    "option3": null,
                    "dimensions": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "1"
                    },
                    "units": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "kg"
                    },
                    "inventory": {
                        "itemId": "45273713574057",
                        "quantity": null
                    },
                    "status": {
                        "active": "false"
                    },
                    "requireShipping": "true",
                    "bundled": "false",
                    "countryCodeOrigin": null,
                    "provinceCodeOrigin": null,
                    "harmonizedSystemCode": null,
                    "countryHarmonizedSystemCode": [],
                    "imageId": null,
                    "imageUrl": null,
                    "dates": {
                        "createdAt": "2023-08-07T12:57:59-06:00",
                        "updatedAt": "2023-10-27T13:05:55-06:00"
                    },
                    "ecartapiUrl": "https://eshop-deve.herokuapp.com/api/v2/products/7686205407401/variants/43173189681321"
                },
                {
                    "id": "44016150872233",
                    "productId": "7686205407401",
                    "productUserId": null,
                    "barcode": null,
                    "name": "test215455556",
                    "price": "100.00",
                    "currency": null,
                    "sku": "IMAC002",
                    "fulfillmentService": "manual",
                    "option1": "test215455556",
                    "option2": null,
                    "option3": null,
                    "dimensions": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "20"
                    },
                    "units": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "kg"
                    },
                    "inventory": {
                        "itemId": "46121259335849",
                        "quantity": "5"
                    },
                    "status": {
                        "active": "false"
                    },
                    "requireShipping": "true",
                    "bundled": "false",
                    "countryCodeOrigin": null,
                    "provinceCodeOrigin": null,
                    "harmonizedSystemCode": null,
                    "countryHarmonizedSystemCode": [],
                    "imageId": null,
                    "imageUrl": null,
                    "dates": {
                        "createdAt": "2024-04-18T10:50:04-06:00",
                        "updatedAt": "2024-04-19T13:34:50-06:00"
                    },
                    "ecartapiUrl": "https://eshop-deve.herokuapp.com/api/v2/products/7686205407401/variants/44016150872233"
                }
            ],
            "options": [
                {
                    "id": "9743395815593",
                    "name": "Size",
                    "values": [
                        "s",
                        "m",
                        "test215455556"
                    ]
                }
            ],
            "associatedItems": [],
            "logistic": {
                "me1Suported": null,
                "mode": null,
                "type": null,
                "free": "false",
                "direction": null,
                "dimensions": null,
                "rates": []
            },
            "images": [
                {
                    "id": "37473567539369",
                    "url": "https://cdn.shopify.com/s/files/1/0630/2443/1273/products/logoecartapi.jpg?v=1673245613",
                    "variantIds": [],
                    "ecartapiUrl": "https://eshop-deve.herokuapp.com/api/v2/products/7686205407401/images/37473567539369"
                }
            ],
            "imageUrl": "https://cdn.shopify.com/s/files/1/0630/2443/1273/products/logoecartapi.jpg?v=1673245613",
            "condition": null,
            "link": "https://xn-1y3em03n.myshopify.com/products/figures",
            "dates": {
                "createdAt": "2023-01-09T00:26:51-06:00",
                "updatedAt": "2024-04-19T13:34:50-06:00"
            },
            "vendor": "古着!?-",
            "sellOutStock": null,
            "locations": [],
            "internationalShipment": []
        },
        {
            "id": "7799117938857",
            "productUserId": null,
            "sku": "2024",
            "name": "Testing Product",
            "subName": null,
            "upc": null,
            "gtin": null,
            "description": "This is a testing products for the integration",
            "currency": "MXN",
            "productType": null,
            "quantity": "92",
            "price": "150.00",
            "cost": null,
            "discount": null,
            "dimensions": {
                "width": null,
                "height": null,
                "length": null,
                "weight": "1"
            },
            "units": {
                "width": null,
                "height": null,
                "length": null,
                "weight": "kg"
            },
            "category": {
                "id": null,
                "name": null,
                "all": []
            },
            "tags": [],
            "status": {
                "id": null,
                "visibility": "web",
                "active": "true",
                "status": "active",
                "ecartapiId": "1",
                "ecartapi": "active",
                "hasOptions": null,
                "inStock": null
            },
            "variants": [
                {
                    "id": "43290511835305",
                    "productId": "7799117938857",
                    "productUserId": null,
                    "barcode": null,
                    "name": "Default Title",
                    "price": "150.00",
                    "currency": null,
                    "sku": "2024",
                    "fulfillmentService": "manual",
                    "option1": "Default Title",
                    "option2": null,
                    "option3": null,
                    "dimensions": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "1"
                    },
                    "units": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "kg"
                    },
                    "inventory": {
                        "itemId": "45391529181353",
                        "quantity": "92"
                    },
                    "status": {
                        "active": "true"
                    },
                    "requireShipping": "true",
                    "bundled": "false",
                    "countryCodeOrigin": null,
                    "provinceCodeOrigin": null,
                    "harmonizedSystemCode": null,
                    "countryHarmonizedSystemCode": [],
                    "imageId": null,
                    "imageUrl": null,
                    "dates": {
                        "createdAt": "2023-10-13T14:36:12-06:00",
                        "updatedAt": "2024-05-08T14:01:17-06:00"
                    },
                    "ecartapiUrl": "https://eshop-deve.herokuapp.com/api/v2/products/7799117938857/variants/43290511835305"
                }
            ],
            "options": [
                {
                    "id": "9883216707753",
                    "name": "Title",
                    "values": [
                        "Default Title"
                    ]
                }
            ],
            "associatedItems": [],
            "logistic": {
                "me1Suported": null,
                "mode": null,
                "type": null,
                "free": "false",
                "direction": null,
                "dimensions": null,
                "rates": []
            },
            "images": [
                {
                    "id": "38399612059817",
                    "url": "https://cdn.shopify.com/s/files/1/0630/2443/1273/files/AppIcon-512x512.png?v=1698170389",
                    "variantIds": [],
                    "ecartapiUrl": "https://eshop-deve.herokuapp.com/api/v2/products/7799117938857/images/38399612059817"
                }
            ],
            "imageUrl": "https://cdn.shopify.com/s/files/1/0630/2443/1273/files/AppIcon-512x512.png?v=1698170389",
            "condition": null,
            "link": "https://xn-1y3em03n.myshopify.com/products/testing-product",
            "dates": {
                "createdAt": "2023-10-13T14:36:12-06:00",
                "updatedAt": "2024-05-08T14:05:50-06:00"
            },
            "vendor": "古着!?-",
            "sellOutStock": null,
            "locations": [],
            "internationalShipment": []
        },
        {
            "id": "8082548031657",
            "productUserId": null,
            "sku": "34567ASDASD",
            "name": "Vasconcelos product",
            "subName": null,
            "upc": null,
            "gtin": null,
            "description": null,
            "currency": "MXN",
            "productType": null,
            "quantity": "98",
            "price": "0.00",
            "cost": null,
            "discount": null,
            "dimensions": {
                "width": null,
                "height": null,
                "length": null,
                "weight": "1"
            },
            "units": {
                "width": null,
                "height": null,
                "length": null,
                "weight": "kg"
            },
            "category": {
                "id": null,
                "name": null,
                "all": []
            },
            "tags": [],
            "status": {
                "id": null,
                "visibility": "web",
                "active": "true",
                "status": "active",
                "ecartapiId": "1",
                "ecartapi": "active",
                "hasOptions": null,
                "inStock": null
            },
            "variants": [
                {
                    "id": "44126558486697",
                    "productId": "8082548031657",
                    "productUserId": null,
                    "barcode": null,
                    "name": "Default Title",
                    "price": "0.00",
                    "currency": null,
                    "sku": "34567ASDASD",
                    "fulfillmentService": "manual",
                    "option1": "Default Title",
                    "option2": null,
                    "option3": null,
                    "dimensions": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "1"
                    },
                    "units": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "kg"
                    },
                    "inventory": {
                        "itemId": "46231653974185",
                        "quantity": "98"
                    },
                    "status": {
                        "active": "true"
                    },
                    "requireShipping": "true",
                    "bundled": "false",
                    "countryCodeOrigin": null,
                    "provinceCodeOrigin": null,
                    "harmonizedSystemCode": null,
                    "countryHarmonizedSystemCode": [],
                    "imageId": null,
                    "imageUrl": null,
                    "dates": {
                        "createdAt": "2024-05-08T13:56:26-06:00",
                        "updatedAt": "2024-05-08T14:01:18-06:00"
                    },
                    "ecartapiUrl": "https://eshop-deve.herokuapp.com/api/v2/products/8082548031657/variants/44126558486697"
                }
            ],
            "options": [
                {
                    "id": "10215127548073",
                    "name": "Title",
                    "values": [
                        "Default Title"
                    ]
                }
            ],
            "associatedItems": [],
            "logistic": {
                "me1Suported": null,
                "mode": null,
                "type": null,
                "free": "false",
                "direction": null,
                "dimensions": null,
                "rates": []
            },
            "images": [],
            "imageUrl": null,
            "condition": null,
            "link": "https://xn-1y3em03n.myshopify.com/products/vasconcelos-product",
            "dates": {
                "createdAt": "2024-05-08T13:56:25-06:00",
                "updatedAt": "2024-05-08T14:06:07-06:00"
            },
            "vendor": "古着!?-",
            "sellOutStock": null,
            "locations": [],
            "internationalShipment": []
        },
        {
            "id": "7686205997225",
            "productUserId": null,
            "sku": "WEBHOOK1234",
            "name": "Webhook Testing Product",
            "subName": null,
            "upc": null,
            "gtin": null,
            "description": null,
            "currency": "MXN",
            "productType": null,
            "quantity": "89",
            "price": "70.00",
            "cost": null,
            "discount": null,
            "dimensions": {
                "width": null,
                "height": null,
                "length": null,
                "weight": "1.5"
            },
            "units": {
                "width": null,
                "height": null,
                "length": null,
                "weight": "kg"
            },
            "category": {
                "id": null,
                "name": null,
                "all": []
            },
            "tags": [],
            "status": {
                "id": null,
                "visibility": "web",
                "active": "true",
                "status": "active",
                "ecartapiId": "1",
                "ecartapi": "active",
                "hasOptions": null,
                "inStock": null
            },
            "variants": [
                {
                    "id": "42846607212713",
                    "productId": "7686205997225",
                    "productUserId": null,
                    "barcode": null,
                    "name": "Default Title",
                    "price": "70.00",
                    "currency": null,
                    "sku": "WEBHOOK1234",
                    "fulfillmentService": "manual",
                    "option1": "Default Title",
                    "option2": null,
                    "option3": null,
                    "dimensions": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "1.5"
                    },
                    "units": {
                        "width": null,
                        "height": null,
                        "length": null,
                        "weight": "kg"
                    },
                    "inventory": {
                        "itemId": "44942481588393",
                        "quantity": "89"
                    },
                    "status": {
                        "active": "true"
                    },
                    "requireShipping": "true",
                    "bundled": "false",
                    "countryCodeOrigin": null,
                    "provinceCodeOrigin": null,
                    "harmonizedSystemCode": null,
                    "countryHarmonizedSystemCode": [],
                    "imageId": null,
                    "imageUrl": null,
                    "dates": {
                        "createdAt": "2023-01-09T00:27:55-06:00",
                        "updatedAt": "2024-05-08T14:01:17-06:00"
                    },
                    "ecartapiUrl": "https://eshop-deve.herokuapp.com/api/v2/products/7686205997225/variants/42846607212713"
                }
            ],
            "options": [
                {
                    "id": "9743396470953",
                    "name": "Title",
                    "values": [
                        "Default Title"
                    ]
                }
            ],
            "associatedItems": [],
            "logistic": {
                "me1Suported": null,
                "mode": null,
                "type": null,
                "free": "false",
                "direction": null,
                "dimensions": null,
                "rates": []
            },
            "images": [
                {
                    "id": "38782908989609",
                    "url": "https://cdn.shopify.com/s/files/1/0630/2443/1273/files/logo-blanco300.jpg?v=1706125804",
                    "variantIds": [],
                    "ecartapiUrl": "https://eshop-deve.herokuapp.com/api/v2/products/7686205997225/images/38782908989609"
                }
            ],
            "imageUrl": "https://cdn.shopify.com/s/files/1/0630/2443/1273/files/logo-blanco300.jpg?v=1706125804",
            "condition": null,
            "link": "https://xn-1y3em03n.myshopify.com/products/o-casita",
            "dates": {
                "createdAt": "2023-01-09T00:27:55-06:00",
                "updatedAt": "2024-05-08T14:05:40-06:00"
            },
            "vendor": "古着!?-",
            "sellOutStock": null,
            "locations": [],
            "internationalShipment": []
        }
    ],
    "page": {
        "next": null,
        "previous": null
    }
}
    ''';
}
