// It takes little bit time to understand this ProxyProvider 
// When a CounterProvider needs the value of a ColorProvider
// A Proivder that build a value based on other providers

// When to use proxyprovider and when to use ChangeNotifierProxyProvider?

// What are the best practices for use?

// Creates the value depending on the values provided by other providers

// When is the update callback called?
//    When ProxyProvider first obtaines the value of the provider it depends on
//    When the value of the provider that proxyprovider depends on changes
//    Whenever ProxyProvider rebuilds

