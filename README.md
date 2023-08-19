# state_management

This is a State Management with Provider 

A Simpler Way to Understand Provider

Provider Overview

Provider = Provider.of<Type>(context)
ChangeNotifierProvider = Provider.of<Type>(context, listen: false)
MultiProvider = context.read<Type>();
FutureProvider = context.watch<Type>();
StreamProvider = context.select<Type, R>(R selector(Type value));