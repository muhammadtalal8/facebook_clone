
import 'package:facbook_clone/models/marketplace_model.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Marketplace',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: IconButton(
                  onPressed: () {
                    print("Search Clicked");
                  },
                  icon: const Icon(Icons.search_outlined),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[300]),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
            child: GridView.count(
          crossAxisCount: 2,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: (2 / 3),
          children: [
            for (int i = 0; i < marketplaceData.length; i++) ...[
              InkWell(
                  child: Card(
                    child: Column(
                      children: [
                        Expanded(
                            child: Image(
                                image: AssetImage(marketplaceData[i].photo))),
                        Text(
                          marketplaceData[i].title,
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          marketplaceData[i].price.toString(),
                          style: const TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => {print("Bike 2 months Old Clicked")})
            ]
          ],
        )),
      ],
    );
  }
}
