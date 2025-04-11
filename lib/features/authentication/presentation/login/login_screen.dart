import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../constants/assets.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person_outline_outlined),
            onPressed: () {
              throw UnimplementedError();
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.settings_outlined),
          onPressed: () {
            throw UnimplementedError();
          },
        ),
      ),
      body: SafeArea(
          minimum: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Spacer(),
              Center(child: Image.asset(Assets.logo, height: 90, width: 90,)),
              const Gap(30),
              Center(
                child: Text('Welcome to the app',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary)),
              ),
              const Gap(10),
              const Text('You can login with your email and password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  )),
              const Spacer(),
              const Text('Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
              const Gap(10),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                onSubmitted: (String value) {
                  FocusScope.of(context).nextFocus();
                },
                onChanged: (String value) {
                  // Handle email input change
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                    color: Colors.black54,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              const Gap(10),
              const Text('Password',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87)),
              const Gap(10),
              TextField(
                controller: _passwordController,
                obscureText: true,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                onSubmitted: (String value) {
                  FocusScope.of(context).unfocus();
                },
                onChanged: (String value) {
                  // Handle password input change
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                    )),
              ),
              const Gap(10),
              Row(
                children: <Widget>[
                  SizedBox(
                      height: 20,
                      width: 20,
                      child: Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      )),
                  const Gap(5),
                  const Text('Remember me',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54)),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                      // ignore: use_named_constants since they dont allow constant values
                      minimumSize: const Size(0, 0),
                      // ignore: use_named_constants
                      padding: const EdgeInsets.all(0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text('Forgot Password?',
                        style: TextStyle(decoration: TextDecoration.underline)),
                    onPressed: () {
                      throw UnimplementedError();
                    },
                  ),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                onPressed: () {
                  throw UnimplementedError();
                },
                child: const Text('Login'),
              ),
              const Spacer(flex: 4),
            ],
          )),
    );
  }
}
