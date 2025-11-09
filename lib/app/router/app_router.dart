import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:word_reign/main.dart';
import 'package:word_reign/features/farm/farm_page.dart';
import 'package:word_reign/features/boss/boss_page.dart';
import 'package:word_reign/features/lab/lab_page.dart';
import 'package:word_reign/features/reward/reward_page.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeHub(),
    ),
    GoRoute(
      path: '/farm',
      builder: (context, state) => FarmPage(),
      ),
    GoRoute(
      path: '/boss',
      builder: (context, state) => BossPage(),
      ),
    GoRoute(
      path: '/lab',
      builder: (context, state) => LabPage(),
      ),
    GoRoute(
      path: '/reward',
      builder: (context, state) => RewardPage(),
      ),
  ],
);