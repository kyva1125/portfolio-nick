import 'package:meedu/provider/provider.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/controller/home_notifier.dart';
import 'package:portfolio_nick_flutter/app/presentation/modules/home/controller/home_state.dart';

final homeProvider = Provider.state<HomeNotifier, HomeState>(
  (_) => HomeNotifier(HomeState.initialState),
);