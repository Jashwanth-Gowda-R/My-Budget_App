import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_budget_app/mobile/expense_view_mobile.dart';
import 'package:my_budget_app/mobile/login_view_mobile.dart';
import 'package:my_budget_app/providers/auth_providers.dart';
import 'package:my_budget_app/web/expense_view_web.dart';
import 'package:my_budget_app/web/login_view_web.dart';

class ResponsiveHandler extends ConsumerWidget {
  const ResponsiveHandler({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<User?> authState = ref.watch(authStateProvider);

    return authState.when(
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        body: Center(child: Text('Error: $e')),
      ),
      data: (User? user) {
        final bool isSignedIn = user != null;

        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return isSignedIn
                  ? const ExpenseViewWeb()
                  : const LoginViewWeb();
            } else {
              return isSignedIn
                  ? const ExpenseViewMobile()
                  : const LoginViewMobile();
            }
          },
        );
      },
    );
  }
}
