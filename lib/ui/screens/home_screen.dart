import 'package:block_cubit/cubit/theme_changer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    context.read<ThemeChangerCubit>();
    return Scaffold(
      body: Builder(
        builder: (context) {
          return BlocBuilder<ThemeChangerCubit, bool>(
            builder: (context, themeState) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: const Text("Theme Mode"),
                  trailing: Switch.adaptive(
                    value: themeState,
                    onChanged: (bool newValue) {
                      context.read<ThemeChangerCubit>().changeTheme(newValue);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
