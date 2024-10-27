class MarketplaceModel {
  final String title;
  final String photo;
  final double price;

  MarketplaceModel({
    required this.title,
    required this.photo,
    required this.price,
  });
}

List<MarketplaceModel> marketplaceData = [
  MarketplaceModel(
    title: "Bike 5 months old",
    photo: "images/download (2).jpeg",
    price: 1200.00,
  ),
  MarketplaceModel(
    title: "Bike 6 months old",
    photo: "images/download (3).jpeg",
    price: 1300.00,
  ),
  MarketplaceModel(
    title: "Bike 1 year old",
    photo: "images/download (4).jpeg",
    price: 1400.00,
  ),
  MarketplaceModel(
    title: "Bike New",
    photo: "images/download (2).jpeg",
    price: 1100.00,
  ),
  MarketplaceModel(
    title: "Bike 2 year old",
    photo: "images/download (3).jpeg",
    price: 2000.00,
  ),
  MarketplaceModel(
    title: "Bike 2 months old",
    photo: "images/download (4).jpeg",
    price: 1500.00,
  ),
  MarketplaceModel(
    title: "Bike 2 decade old",
    photo: "images/download (3).jpeg",
    price: 1800.00,
  ),
];
