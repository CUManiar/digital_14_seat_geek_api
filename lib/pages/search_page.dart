import 'package:digital_14/components/event_list_details.dart';
import 'package:digital_14/constants/constants.dart';
import 'package:digital_14/providers/like_provider.dart';
import 'package:digital_14/providers/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
                flex: 4,
                child: SizedBox(
                  height: 40.0,
                  child: Consumer<SearchProvider>(
                    builder: (context, value, child) {
                      return TextField(
                        controller: value.searchController,
                        cursorColor: whiteColor,
                        textAlignVertical: TextAlignVertical.center,
                        onChanged: (val) {
                          value.fetchSearchEvents(val); // Geek Seat API Call
                          var data = context.read<LikeProvider>();
                          data.getLikedItems();
                          if (value.searchController.text.isEmpty) {
                            value.clearData();
                          }
                        },
                        style: const TextStyle(color: whiteColor),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: textfieldBackgroundColor,
                          focusColor: mainBgColor.withOpacity(0.5),
                          contentPadding: const EdgeInsets.only(top: 0.0),
                          hintText: "Search Events",
                          hintStyle: TextStyle(
                            color: whiteColor.withOpacity(0.5)
                          ),
                          prefixIcon: const Icon(Icons.search, color: whiteColor,),
                          suffixIcon: value.searchController.text.isEmpty ?
                              const SizedBox(
                                height: 5.0,
                                width: 5.0,
                              ) :
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                    Icons.close_outlined,
                                  size: 18.0,
                                  color: whiteColor,
                                ),
                              ),
                          focusedBorder: const OutlineInputBorder(),
                        ),
                      );
                    },
                  ),
                ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  var providerData = context.read<SearchProvider>();
                  providerData.clearData();
                },
                child: const Text(
                  "cancel",
                  style: TextStyle(
                    color: whiteColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Consumer2<SearchProvider, LikeProvider>(
          builder: (context, value, likeProvider, child) {
            return value.searchModel == null ?
                Center(
                  child: Text(
                    "Nothing to show. Search events ...",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ) :
                value.isLoading ?
                    const Center(
                      child: CircularProgressIndicator(),
                    ) :
                    value.searchModel!.events!.isEmpty ?
                        Center(
                          child: Text(
                            "No Events!",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ) :
                        ListView.builder(
                          itemCount: value.searchModel!.events!.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                context.pushNamed(
                                  'detailsScreen',
                                  params: {
                                    'title': value.searchModel!.events![index].title!,
                                    'image': value.searchModel!.events![index].performers![0].image!,
                                    'date': '${DateFormat('EEE').format(value.searchModel!.events![index].announceDate!)}, ${DateFormat('dd MMM yyyy').format(value.searchModel!.events![index].announceDate!)} ${DateFormat.jm().format(value.searchModel!.events![index].announceDate!)} ',
                                    'location': '${value.searchModel!.events![index].venue!.city}, ${value.searchModel!.events![index].venue!.country}',
                                    'eventId': value.searchModel!.events![index].id.toString()
                                  }
                                );
                              },
                              child: EventListDetails(
                                 title: value.searchModel!.events![index].title!,
                                 image: value.searchModel!.events![index].performers![0].image!,
                                 date: '${DateFormat('EEE').format(value.searchModel!.events![index].announceDate!)}, ${DateFormat('dd MMM yyyy').format(value.searchModel!.events![index].announceDate!)} ${DateFormat.jm().format(value.searchModel!.events![index].announceDate!)} ',
                                 location: '${value.searchModel!.events![index].venue!.city}, ${value.searchModel!.events![index].venue!.country}',
                                 eventId: value.searchModel!.events![index].id.toString()
                              ),
                            );
                          },
                        );
          },
        ),
      ),
    );
  }
}
