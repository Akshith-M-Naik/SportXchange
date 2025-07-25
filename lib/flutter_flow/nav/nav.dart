import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart'
    show generateCurrentPageLink;

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier, [Widget? entryPage]) =>
    GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => _RouteErrorBuilder(
        state: state,
        child: appStateNotifier.loggedIn
            ? entryPage ?? NavBarPage()
            : LoginWidget(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? entryPage ?? NavBarPage()
              : LoginWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Home')
              : NavBarPage(
                  initialPage: 'Home',
                  page: HomeWidget(),
                ),
        ),
        FFRoute(
          name: 'Shop',
          path: '/shop',
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'Shop') : ShopWidget(),
        ),
        FFRoute(
          name: 'News',
          path: '/news',
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'News') : NewsWidget(),
        ),
        FFRoute(
          name: 'Editprofile',
          path: '/editprofile',
          builder: (context, params) => EditprofileWidget(),
        ),
        FFRoute(
          name: 'Football',
          path: '/football',
          builder: (context, params) => FootballWidget(),
        ),
        FFRoute(
          name: 'Forgetpass',
          path: '/forgetpass',
          builder: (context, params) => ForgetpassWidget(),
        ),
        FFRoute(
          name: 'Cricket',
          path: '/cricket',
          builder: (context, params) => CricketWidget(),
        ),
        FFRoute(
          name: 'Badminton',
          path: '/badminton',
          builder: (context, params) => BadmintonWidget(),
        ),
        FFRoute(
          name: 'Tabletennis',
          path: '/tabletennis',
          builder: (context, params) => TabletennisWidget(),
        ),
        FFRoute(
          name: 'Boxing',
          path: '/boxing',
          builder: (context, params) => BoxingWidget(),
        ),
        FFRoute(
          name: 'Basketball',
          path: '/basketball',
          builder: (context, params) => BasketballWidget(),
        ),
        FFRoute(
          name: 'Swimming',
          path: '/swimming',
          builder: (context, params) => SwimmingWidget(),
        ),
        FFRoute(
          name: 'Kabbadi',
          path: '/kabbadi',
          builder: (context, params) => KabbadiWidget(),
        ),
        FFRoute(
          name: 'Signup',
          path: '/signup',
          builder: (context, params) => SignupWidget(),
        ),
        FFRoute(
          name: 'fgrounds',
          path: '/fgrounds',
          builder: (context, params) => FgroundsWidget(),
        ),
        FFRoute(
          name: 'fevents',
          path: '/fevents',
          builder: (context, params) => FeventsWidget(),
        ),
        FFRoute(
          name: 'cevents',
          path: '/cevents',
          builder: (context, params) => CeventsWidget(),
        ),
        FFRoute(
          name: 'kevents',
          path: '/kevents',
          builder: (context, params) => KeventsWidget(),
        ),
        FFRoute(
          name: 'BEVENTS',
          path: '/bevents',
          builder: (context, params) => BeventsWidget(),
        ),
        FFRoute(
          name: 'sevents',
          path: '/sevents',
          builder: (context, params) => SeventsWidget(),
        ),
        FFRoute(
          name: 'boevent',
          path: '/boevent',
          builder: (context, params) => BoeventWidget(),
        ),
        FFRoute(
          name: 'ttevent',
          path: '/ttevent',
          builder: (context, params) => TteventWidget(),
        ),
        FFRoute(
          name: 'bbevent',
          path: '/bbevent',
          builder: (context, params) => BbeventWidget(),
        ),
        FFRoute(
          name: 'sgrounds',
          path: '/sgrounds',
          builder: (context, params) => SgroundsWidget(),
        ),
        FFRoute(
          name: 'bogrounds',
          path: '/bogrounds',
          builder: (context, params) => BogroundsWidget(),
        ),
        FFRoute(
          name: 'BCOURT',
          path: '/bcourt',
          builder: (context, params) => BcourtWidget(),
        ),
        FFRoute(
          name: 'bbcourt',
          path: '/bbcourt',
          builder: (context, params) => BbcourtWidget(),
        ),
        FFRoute(
          name: 'ttcourt',
          path: '/ttcourt',
          builder: (context, params) => TtcourtWidget(),
        ),
        FFRoute(
          name: 'cgrounds',
          path: '/cgrounds',
          builder: (context, params) => CgroundsWidget(),
        ),
        FFRoute(
          name: 'KCOURT',
          path: '/kcourt',
          builder: (context, params) => KcourtWidget(),
        ),
        FFRoute(
          name: 'Djokovic',
          path: '/djokovic',
          builder: (context, params) => DjokovicWidget(),
        ),
        FFRoute(
          name: 'cricket_rules',
          path: '/cricketRules',
          builder: (context, params) => CricketRulesWidget(),
        ),
        FFRoute(
          name: 'football_rules',
          path: '/footballRules',
          builder: (context, params) => FootballRulesWidget(),
        ),
        FFRoute(
          name: 'Anderson',
          path: '/anderson',
          builder: (context, params) => AndersonWidget(),
        ),
        FFRoute(
          name: 'kohli_retire',
          path: '/kohliRetire',
          builder: (context, params) => KohliRetireWidget(),
        ),
        FFRoute(
          name: 'zimbabwe',
          path: '/zimbabwe',
          builder: (context, params) => ZimbabweWidget(),
        ),
        FFRoute(
          name: 't20worldwin',
          path: '/t20worldwin',
          builder: (context, params) => T20worldwinWidget(),
        ),
        FFRoute(
          name: 'moroccan',
          path: '/moroccan',
          builder: (context, params) => MoroccanWidget(),
        ),
        FFRoute(
          name: 'football_league',
          path: '/footballLeague',
          builder: (context, params) => FootballLeagueWidget(),
        ),
        FFRoute(
          name: 'shaw',
          path: '/shaw',
          builder: (context, params) => ShawWidget(),
        ),
        FFRoute(
          name: 'hawks_nba',
          path: '/hawks_Nba',
          builder: (context, params) => HawksNbaWidget(),
        ),
        FFRoute(
          name: 'garcia',
          path: '/garcia',
          builder: (context, params) => GarciaWidget(),
        ),
        FFRoute(
          name: 'basketball_rulrs',
          path: '/basketballRules',
          builder: (context, params) => BasketballRulrsWidget(),
        ),
        FFRoute(
          name: 'batminton_rules',
          path: '/batmintonRules',
          builder: (context, params) => BatmintonRulesWidget(),
        ),
        FFRoute(
          name: 'boxing_rules',
          path: '/boxingRules',
          builder: (context, params) => BoxingRulesWidget(),
        ),
        FFRoute(
          name: 'kabbadi_rules',
          path: '/kabbadiRules',
          builder: (context, params) => KabbadiRulesWidget(),
        ),
        FFRoute(
          name: 'swimming_rules',
          path: '/swimmingRules',
          builder: (context, params) => SwimmingRulesWidget(),
        ),
        FFRoute(
          name: 'tabletennis_rules',
          path: '/tabletennisRules',
          builder: (context, params) => TabletennisRulesWidget(),
        ),
        FFRoute(
          name: 'Cart',
          path: '/cart',
          builder: (context, params) => CartWidget(
            finalprice: params.getParam(
              'finalprice',
              ParamType.double,
            ),
            finalmrp: params.getParam(
              'finalmrp',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: 'profile',
          path: '/profile',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profile')
              : ProfileWidget(),
        ),
        FFRoute(
          name: 'football_tutorials',
          path: '/footballTutorials',
          builder: (context, params) => FootballTutorialsWidget(),
        ),
        FFRoute(
          name: 'cricket_tutorials',
          path: '/cricketTutorials',
          builder: (context, params) => CricketTutorialsWidget(),
        ),
        FFRoute(
          name: 'kabbadi_tutorials',
          path: '/kabbadiTutorials',
          builder: (context, params) => KabbadiTutorialsWidget(),
        ),
        FFRoute(
          name: 'basket_tutorials',
          path: '/basketTutorials',
          builder: (context, params) => BasketTutorialsWidget(),
        ),
        FFRoute(
          name: 'tennis_tutorials',
          path: '/tennis_tutorials',
          builder: (context, params) => TennisTutorialsWidget(),
        ),
        FFRoute(
          name: 'boxing_tutorial',
          path: '/boxingTutorial',
          builder: (context, params) => BoxingTutorialWidget(),
        ),
        FFRoute(
          name: 'swimming_tutorials',
          path: '/swimmingTutorials',
          builder: (context, params) => SwimmingTutorialsWidget(),
        ),
        FFRoute(
          name: 'batminton_tutorials',
          path: '/batmintonTutorials',
          builder: (context, params) => BatmintonTutorialsWidget(),
        ),
        FFRoute(
          name: 'Password',
          path: '/password',
          builder: (context, params) => PasswordWidget(),
        ),
        FFRoute(
          name: 'OrderSummary',
          path: '/orderSummary',
          builder: (context, params) => OrderSummaryWidget(
            lastprice: params.getParam(
              'lastprice',
              ParamType.double,
            ),
            price: params.getParam(
              'price',
              ParamType.double,
            ),
            mrp: params.getParam(
              'mrp',
              ParamType.double,
            ),
            lastmrp: params.getParam(
              'lastmrp',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: 'support',
          path: '/support',
          builder: (context, params) => SupportWidget(),
        ),
        FFRoute(
          name: 'Payment',
          path: '/payment',
          builder: (context, params) => PaymentWidget(
            paymentsessionid: params.getParam(
              'paymentsessionid',
              ParamType.String,
            ),
            amount: params.getParam(
              'amount',
              ParamType.double,
            ),
            ref: params.getParam<DocumentReference>(
              'ref',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['cart'],
            ),
          ),
        ),
        FFRoute(
          name: 'successfulpayment',
          path: '/successfulpayment',
          builder: (context, params) => SuccessfulpaymentWidget(),
        ),
        FFRoute(
          name: 'failedtransaction',
          path: '/failedtransaction',
          builder: (context, params) => FailedtransactionWidget(),
        ),
        FFRoute(
          name: 'WEBVIEW',
          path: '/webview',
          builder: (context, params) => WebviewWidget(
            pA: params.getParam(
              'pA',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'pay',
          path: '/pay',
          builder: (context, params) => PayWidget(),
        ),
        FFRoute(
          name: 'termsandconditions',
          path: '/termsandconditions',
          builder: (context, params) => TermsandconditionsWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  child: Image.asset(
                    'assets/images/Screenshot_2024-06-03_223039-removebg-preview.png',
                    fit: BoxFit.fitWidth,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    Key? key,
    required this.state,
    required this.child,
  }) : super(key: key);

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();
    // Handle erroneous links from Firebase Dynamic Links.
    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.toString().contains('request_ip_version')) {
      SchedulerBinding.instance.addPostFrameCallback((_) => context.go('/'));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
