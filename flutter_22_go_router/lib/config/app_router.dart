import 'package:flutter/cupertino.dart';
import 'package:flutter_22_go_router/screens/category_screen.dart';
import 'package:flutter_22_go_router/screens/product_list.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      name: 'category',
      builder: (BuildContext context, GoRouterState state) {
        return const CategoryScreen();
      },
      routes: <GoRoute>[
        GoRoute(
          path: 'product_list/:category',
          name: 'product_list',
          builder: (BuildContext context, GoRouterState state) {
            return ProductListScreen(
              category: state.params['category'] ?? "",
              asc: state.queryParams['sort'] == 'asc',
              quantity: int.parse(state.queryParams['filter'] ?? '0'),
            );
          },
        ),
      ],
    ),
    // GoRoute(
    //   path: '/product_list',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const ProductListScreen();
    //   },
    // ),
  ],
);
