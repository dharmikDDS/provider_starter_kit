import 'package:flutter/material.dart';
import 'package:flutter_provider_starter_kit/providers/demo_provider.dart';
import 'package:flutter_provider_starter_kit/utils/app_toaster.dart';
import 'package:flutter_provider_starter_kit/utils/extensions/context_ext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<DemoProvider>(builder: (context, provider, _) {
              return Text(
                '${provider.count}',
                style: context.theme.textTheme.headlineMedium,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: context.read<DemoProvider>().increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          20.verticalSpace,
          FloatingActionButton(
            onPressed: () {
              context.read<DemoProvider>().decrement(ifLessThenZero: () {
                AppToaster().showToast('Can\'t go less than zero');
              });
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
