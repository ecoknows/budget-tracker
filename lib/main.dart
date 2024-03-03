import 'package:budget_tracker/features/transaction_tracking/presentation/screens/add_transaction_screen.dart';
import 'package:budget_tracker/features/transaction_tracking/presentation/screens/transaction_overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            name: TransactionOverviewScreen.name,
            builder: (BuildContext context, GoRouterState state) {
              return const TransactionOverviewScreen();
            },
          ),
          GoRoute(
            path: '/add',
            name: AddTransactionScreen.name,
            builder: (BuildContext context, GoRouterState state) {
              return const AddTransactionScreen();
            },
          )
        ],
      ),
    );
  }
}
