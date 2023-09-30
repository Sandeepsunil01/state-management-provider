// It takes little bit time to understand this ProxyProvider
// When a CounterProvider needs the value of a ColorProvider
// A Provider that build a value based on other providers

// When to use proxyprovider and when to use ChangeNotifierProxyProvider?

// What are the best practices for use?

// Creates the value depending on the values provided by other providers

// When is the update callback called?
//    When ProxyProvider first obtaines the value of the provider it depends on the following
//    When the value of the provider that proxyprovider depends on changes
//    Whenever ProxyProvider rebuilds

import 'package:flutter/material.dart';
import 'package:state_management/screen/proxy_provider_update.dart';

import '../screen/chgnotifier_chgnotifierproxy.dart';
import '../screen/chnagenotioprov_proxyprov.dart';
import '../screen/proxy_provider_create_update.dart';
import '../screen/proxyprov_proxyprov.dart';
import '../screen/why_proxy_provider.dart';

class ProviderOverview15 extends StatefulWidget {
  const ProviderOverview15({super.key});

  @override
  State<ProviderOverview15> createState() => _ProviderOverview15State();
}

class _ProviderOverview15State extends State<ProviderOverview15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Proxy Provider Example"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            shrinkWrap: true,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WhyProxyProvider()));
                },
                child: const Text(
                  "Why\nProxy Provider",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProxyProviderUpdate()));
                },
                child: const Text(
                  "Proxy Provider\nUpdate",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ProxyProviderCreateUpdate()));
                },
                child: const Text(
                  "Proxy Provider\nCreate/Update",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProxyProvProxyProv()));
                },
                child: const Text(
                  "ProxyProvider\nProxyProvider",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ChangeNotifierChangeNotifierProxyProvider()));
                },
                child: const Text(
                  "ChangeNotifierProxyProvider\nChangeNotifierProvider",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ChangeNotifierProxyProvider()));
                },
                child: const Text(
                  "ChangeNotifierProvider\nProxyProvider",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
