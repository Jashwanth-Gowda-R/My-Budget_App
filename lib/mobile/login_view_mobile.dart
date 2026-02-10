import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginViewMobile extends HookConsumerWidget {
  const LoginViewMobile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(child: Text('Login View Mobile')),
      ),
    );
  }
}
