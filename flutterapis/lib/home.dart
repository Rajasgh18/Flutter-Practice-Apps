import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterapis/models/product.dart';
import 'package:http/http.dart' as http;

class ShopApi extends StatefulWidget {
  const ShopApi({super.key});

  @override
  State<ShopApi> createState() => _ShopApiState();
}

class _ShopApiState extends State<ShopApi> {
  List<Products> productList = [];
  Future<List<Products>> getProducts() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    dynamic data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      productList.clear();
      for (int i = 0; i < data.length; i++) {
        productList.add(Products.fromJson(data[i]));
      }
      return productList;
    } else {
      return productList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Shop",
        style: TextStyle(color: Colors.white, fontSize: 30),
      )),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return const Text("Loading...");
                } else {
                  return ListView.builder(
                      itemCount: productList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              border: Border.symmetric(
                                  horizontal: BorderSide(
                                      width: 0.5, color: Colors.grey))),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Image(
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.contain,
                                      image: NetworkImage(
                                          productList[index].image.toString())),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        productList[index].title.toString(),
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        productList[index].category.toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                          'Rating : ${productList[index].rating!.rate}'),
                                      const SizedBox(height: 5),
                                      Text(
                                        '\$ ${productList[index].price}',
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                          '${productList[index].description!.substring(0, 75)}...'),
                                    ],
                                  )),
                            ],
                          ),
                        );
                      });
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
