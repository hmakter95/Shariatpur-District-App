import 'package:flutter/material.dart';

void main() {
runApp(const ShariatpurApp());
}

class ShariatpurApp extends StatelessWidget {
const ShariatpurApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'শরীয়তপুর জেলা',
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(
seedColor: Colors.green,
),
useMaterial3: true,
),
home: const HomePage(),
);
}
}

class HomePage extends StatelessWidget {
const HomePage({super.key});

static const upazilas = [
'শরীয়তপুর সদর',
'নড়িয়া',
'জাজিরা',
'গোসাইরহাট',
'ভেদরগঞ্জ',
'ডামুড্যা',
];

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
backgroundColor: Colors.green,
foregroundColor: Colors.white,
title: const Text('আমার শরীয়তপুর'),
centerTitle: true,
),
body: ListView(
padding: const EdgeInsets.all(16),
children: [
Container(
padding: const EdgeInsets.all(24),
decoration: BoxDecoration(
color: Colors.green.shade50,
borderRadius: BorderRadius.circular(20),
),
child: const Column(
children: [
Icon(
Icons.location_city,
size: 65,
color: Colors.green,
),
SizedBox(height: 12),
Text(
'শরীয়তপুর জেলা',
style: TextStyle(
fontSize: 26,
fontWeight: FontWeight.bold,
),
),
SizedBox(height: 8),
Text(
'জেলার তথ্য ও সেবাসমূহ',
style: TextStyle(fontSize: 16),
),
],
),
),
const SizedBox(height: 24),
const Text(
'জেলার বিভিন্ন সেবা',
style: TextStyle(
fontSize: 21,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 12),
_serviceCard(
Icons.map,
'উপজেলার তালিকা',
'উপজেলা সম্পর্কে জানুন',
),
_serviceCard(
Icons.local_hospital,
'হাসপাতাল',
'স্বাস্থ্যসেবা প্রতিষ্ঠানের তথ্য',
),
_serviceCard(
Icons.account_balance,
'সরকারি অফিস',
'ঠিকানা ও যোগাযোগের তথ্য',
),
_serviceCard(
Icons.school,
'শিক্ষাপ্রতিষ্ঠান',
'শিক্ষাপ্রতিষ্ঠানের তথ্য',
),
const SizedBox(height: 20),
const Text(
'শরীয়তপুরের উপজেলাসমূহ',
style: TextStyle(
fontSize: 21,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 8),
...upazilas.map(
(name) => Card(
child: ListTile(
leading: const Icon(
Icons.location_on,
color: Colors.green,
),
title: Text(name),
trailing: const Icon(Icons.chevron_right),
),
),
),
],
),
);
}

static Widget _serviceCard(
IconData icon,
String title,
String subtitle,
) {
return Card(
child: ListTile(
leading: CircleAvatar(
backgroundColor: Colors.green.shade50,
child: Icon(
icon,
color: Colors.green,
),
),
title: Text(title),
subtitle: Text(subtitle),
trailing: const Icon(
Icons.arrow_forward_ios,
size: 16,
),
),
);
}
}
