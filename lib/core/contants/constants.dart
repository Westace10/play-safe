// strings
import 'package:flutter/material.dart';
import 'package:play_safe/core/models/chart_data.dart';

const String kAppName = 'Play Safe';
const String kNotesDescription =
    'Are you sure you want to clear this note? Cleared notes cannot be retrieved.';
const String passwordDescription =
    'Password created would be used to access saved servers in the application';
const String savePassword = 'Save password';

// integers
const int pinLength = 6;

// durations
const Duration shortDuration = Duration(milliseconds: 200);
const Duration mediumDuration = Duration(milliseconds: 500);
const Duration longDuration = Duration(seconds: 1);
const Duration veryLongDuration = Duration(seconds: 3);

//onboarding images
const List<String> kOnboardingImages = [
  "assets/images/onboarding_image_1.png",
  "assets/images/onboarding_image_2.png"
];

const topKeys = [
  ['1', '2', '3'],
  ['4', '5', '6'],
  ['7', '8', '9'],
  [Icon(Icons.keyboard_backspace), '0', 'Show'],
];

const secretPhrase = [
  ['Trust', 'Done', 'Baby', 'Crazy'],
  ['Twelve', 'Enter', 'Treasure', 'Happy'],
  ['Phase', 'Recovery', 'Secret', 'Make'],
];

const data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];

final chartdata = [
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 0)).hour.toString()}: ${DateTime.now().minute.toString()}",
      43.90,
      50.89,
      10.09,
      50.89),
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 1)).hour.toString()}: ${DateTime.now().minute.toString()}",
      51.20,
      78.54,
      2.30,
      90.89),
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 2)).hour.toString()}: ${DateTime.now().minute.toString()}",
      72.3,
      65.34,
      5.9,
      102.43),
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 3)).hour.toString()}: ${DateTime.now().minute.toString()}",
      11.23,
      99.4,
      12.43,
      68.90),
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 4)).hour.toString()}: ${DateTime.now().minute.toString()}",
      81.23,
      89.5,
      10.21,
      56.09),
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 5)).hour.toString()}: ${DateTime.now().minute.toString()}",
      82.12,
      56.4,
      19.89,
      120.45),
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 6)).hour.toString()}: ${DateTime.now().minute.toString()}",
      90.43,
      109.4,
      15.32,
      99.0),
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 7)).hour.toString()}: ${DateTime.now().minute.toString()}",
      87.23,
      123.9,
      9.87,
      98.54),
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 8)).hour.toString()}: ${DateTime.now().minute.toString()}",
      32.45,
      78.34,
      43.23,
      199.9),
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 9)).hour.toString()}: ${DateTime.now().minute.toString()}",
      98.73,
      321.32,
      75.23,
      203.43),
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 10)).hour.toString()}: ${DateTime.now().minute.toString()}",
      23.67,
      98.3,
      21.22,
      123.43),
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 11)).hour.toString()}: ${DateTime.now().minute.toString()}",
      56.43,
      89.45,
      10.23,
      98.03),
  ChartData(
      "${DateTime.now().subtract(const Duration(minutes: 30 * 12)).hour.toString()}: ${DateTime.now().minute.toString()}",
      88.54,
      81.23,
      12.34,
      88.99),
];
