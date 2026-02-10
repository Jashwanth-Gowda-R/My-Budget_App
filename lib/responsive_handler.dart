import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_budget_app/mobile/expense_view_mobile.dart';
import 'package:my_budget_app/mobile/login_view_mobile.dart';
import 'package:my_budget_app/providers/auth_providers.dart';
import 'package:my_budget_app/view_model.dart';
import 'package:my_budget_app/web/expense_view_web.dart';
import 'package:my_budget_app/web/login_view_web.dart';

// class ResponsiveHandler extends HookConsumerWidget {
//   const ResponsiveHandler({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final viewModelProvider = ref.watch(viewModel);
//     viewModelProvider.isLoggedIn();

//     if (viewModelProvider.isSignedIn == true) {
//       return LayoutBuilder(
//         builder: (context, constraints) {
//           if (constraints.maxWidth > 600) {
//             return ExpenseViewWeb();
//           } else {
//             return ExpenseViewMobile();
//           }
//         },
//       );
//     } else {
//       return LayoutBuilder(
//         builder: (context, constraints) {
//           if (constraints.maxWidth > 600) {
//             return LoginViewWeb();
//           } else {
//             return LoginViewMobile();
//           }
//         },
//       );
//     }
//   }
// }
class ResponsiveHandler extends ConsumerWidget {
  const ResponsiveHandler({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    return authState.when(
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(body: Center(child: Text('Error: $e'))),
      data: (user) {
        final isSignedIn = user != null;

        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return isSignedIn ? ExpenseViewWeb() : LoginViewWeb();
            } else {
              return isSignedIn ? ExpenseViewMobile() : LoginViewMobile();
            }
          },
        );
      },
    );
  }
}
