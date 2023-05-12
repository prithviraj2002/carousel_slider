import 'dart:convert';

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:passprt_test/widgets/popular-trek-row.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:passprt_test/widgets/trek-detail-list.dart';

import '../model/Tour.dart';
import '../repo/repo.dart';
import '../widgets/star-rating.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            final Tour tour = snapshot.data;
            final bannerTitle = tour.bannerTitle;
            return Scaffold(
              body: NestedScrollView(
                  headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
                    return <Widget>[
                      SliverAppBar(
                        leading: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back, color: Colors.white,)
                        ),
                        actions: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search, color: Colors.white,)
                          ),
                        ],
                        expandedHeight: 175,
                        pinned: true,
                        floating: false,
                        centerTitle: false,
                        flexibleSpace: FlexibleSpaceBar(
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(bannerTitle!,
                                  style: const TextStyle(color: Colors.white),),
                              ],
                            ),
                            background: Stack(
                              fit: StackFit.expand,
                              children: [
                                Positioned.fill(
                                  child: CarouselSlider.builder(
                                    itemCount: tour.bannerImages!.length,
                                    itemBuilder: (ctx, index, realIndex) {
                                      return Image.network(
                                        tour.bannerImages![index],
                                        fit: BoxFit.cover,
                                        width: 1000,
                                      );
                                    },
                                    options: CarouselOptions(
                                        autoPlay: !innerBoxIsScrolled,
                                        viewportFraction: 1.0,
                                        padEnds: false,
                                        onPageChanged: (index, reason) {
                                          setState((){
                                            pageIndex = index;
                                          });
                                        }
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 185,
                                  bottom: 0,
                                  left: 80,
                                  right: 0,
                                  child: CarouselIndicator(
                                    count: tour.bannerImages!.length,
                                    index: pageIndex,
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                    ];
                  },
                  body: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 20, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stars(rating: tour.rating!.abs(), size: 30,),
                  const SizedBox(height: 10,),
                  Text(
                    tour.description.toString(),
                    style: const TextStyle(fontSize: 18),
                    maxLines: null,
                  ),
                  DetailsList(details: tour.details),
                  const Text(
                    "Popular Treks",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const SizedBox(height: 10,),
                  PopularRow(popularList: tour.popularTreks)
                        ],
                      ),
                    ),
                  ),
              )
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
