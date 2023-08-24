# state_management

This is a State Management with Provider 

A Simpler Way to Understand Provider

Provider Overview

Provider = Provider.of<Type>(context)\n
ChangeNotifierProvider = Provider.of<Type>(context, listen: false)\n
MultiProvider = context.read<Type>();\n
FutureProvider = context.watch<Type>();\n
StreamProvider = context.select<Type, R>(R selector(Type value));