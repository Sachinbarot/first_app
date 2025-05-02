import 'dart:convert';

import 'package:first_app/responsemodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:http/http.dart' as http;

class Productlist extends StatefulWidget {
  const Productlist({super.key});

  @override
  State<Productlist> createState() => _ProductlistState();
}

class _ProductlistState extends State<Productlist> {
  Future<ProductResponseModel> _getProducts() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      // print("Response =>> ${response.body}");
      // print("Status Code =>> ${response.statusCode}");
      return ProductResponseModel.fromJson(jsonDecode(response.body));
    } else {
      return ProductResponseModel.fromJson(jsonDecode(response.body));
    }
  }

  @override
  void initState() {
    _getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.back_hand)),
        title: const Text("Product List"),
        actions: [
          InkWell(onTap: () {}, child: Icon(LucideIcons.shopping_cart))
        ],
      ),
      body: FutureBuilder(
          future: _getProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      //On tap action
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage("assets/c1.png"),
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "JBL Headphones",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        //   fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 18.0),
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    textAlign: TextAlign.start,
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                    maxLines: 2,
                                    style: TextStyle(color: Colors.black54),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    "₹1999/-",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator.adaptive());
            }
          }),
    );
  }
}
