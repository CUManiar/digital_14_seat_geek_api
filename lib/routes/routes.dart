import 'package:digital_14/pages/details_page.dart';
import 'package:digital_14/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
        builder: (BuildContext context, GoRouterState state) => const SearchPage()
      ),
      GoRoute(
        path: '/details/:title/:image/:date/:location/:eventId',
        name: 'detailsScreen',
        builder: (BuildContext context, GoRouterState state) {
          String? title = state.params['title'];
          String? image = state.params['image'];
          String? location = state.params['location'];
          String? date = state.params['date'];
          String? eventId = state.params['eventId'];


          return DetailsPage(
            title: title!,
            image: image!,
            location: location!,
            date: date!,
            eventId: eventId!,
          );
        }
      )

    ]
);