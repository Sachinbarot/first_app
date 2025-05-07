import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerClass extends StatefulWidget {
  const ShimmerClass({super.key});

  @override
  State<ShimmerClass> createState() => _ShimmerClassState();
}

class _ShimmerClassState extends State<ShimmerClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Shimmer Effect"),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ShimmerBox(
                        height: 100.0,
                        width: 100.0,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShimmerBox(
                            height: 12,
                            width: 120.0,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ShimmerBox(
                            height: 8.0,
                            width: 250.0,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          ShimmerBox(
                            height: 8.0,
                            width: 250.0,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}

class ShimmerBox extends StatelessWidget {
  ShimmerBox({super.key, required this.height, required this.width});

  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        // color: Colors.grey,
        width: width,
        height: height,
      ),
    );
  }
}
