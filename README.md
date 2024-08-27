# flutter_application_1

A new Flutter project.

## Getting Started

# Provider generate
dart run build_runner watch -d


This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## How to use Riverpod generator

1. make a function
2. add @riverpod anotation upside of this function
3. add a part file
4. update declaration function


# Notifre provider

  1. make class and extends with Notifire.
  2. declare it state type
  3. override build function , set here initial value
  4. if you want to make provider without riverpod generator, do with NotifireProvider<classname,stateType>
  - nb: no need ref here