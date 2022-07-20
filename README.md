___
<a href="https://flutter.dev/">
  <h1 align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://storage.googleapis.com/cms-storage-bucket/6e19fee6b47b36ca613f.png">
      <img alt="Flutter" src="https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png">
    </picture>
  </h1>
</a>
___
# clean_template

Clean architecture template project for new flutter applications.
___

## Implemented app logic

+ `RestClient` - rest API client-server networking using [dio](https://pub.dev/packages/dio) package;
+ `DIContainer` - dependency injection container using [get_it](https://pub.dev/packages/get_it) package;
+ `Service` - abstraction for implementing specific app logic;
  Implementations of `Service`:
  + `AppRouter` -  app navigation using flutter navigation with ``Routes`` enum. Supports nested navigator;
  + `ModalBottomSheetService` - service for showing modal bottom sheet;

## Project structure:

+ config
+ core
  + app
  + services
    + router
+ data
  + models
  + storage
+ domain
  + models
    + requests
    + responses
  + network
  + repositories
+ presentation
  + components
  + screens
  + styles
+ utils
  + extensions

## Structure description

+ **config** -
+ **core** -
  + **app** -
  + **services** -
    + **router** -
+ **data** -
  + **models** -
  + **storage** -
+ **domain** -
  + **models** -
    + **requests** -
    + **responses** -
  + **network** -
  + **repositories** -
+ **presentation** -
  + **components** -
  + **screens** -
  + **styles** -
+ **utils** -
  + **extensions** -

## Used dependencies

#### Necessary
- [bloc](https://pub.dev/packages/bloc) - implementation of BLoC pattern in *dart*
- [flutter_bloc]() - implementation of [bloc](https://pub.dev/packages/bloc) for *flutter*, main app **state manager**
- [get_it](https://pub.dev/packages/get_it) - service locator and dependency injection container for app **business logic**
- [dio]() - a powerful http client for *flutter* applications, also has many other useful functions
- [flutter_secure_storage]() -
- [shared_preferences]() -
- [json_annotation](https://pub.dev/packages/json_annotation) - required by [json_serializable](https://pub.dev/packages/json_serializable) package, helps to generate `JsonSerializable` classes, also has many other useful annotation settings
___

#### Additional useful dependencies
- [http](https://pub.dev/packages/http) - library for making http requests, has many useful functions and classes
- [freezed_annotation](https://pub.dev/packages/freezed_annotation) - required when using [freezed](https://pub.dev/packages/freezed) package, helps to generate `freezed` classes
- [easy_localization](https://pub.dev/packages/easy_localization) - very simple for implement localization library with support of *json* configs and localization keys generator
- [permission_handler](https://pub.dev/packages/permission_handler) - helps to request any permissions from app users

## Used dev dependencies

#### Necessary
- [build_runner](https://pub.dev/packages/build_runner) - required for packages that generates code, like [json_serializable](), [freezed](https://pub.dev/packages/freezed), [easy_localiztion](https://pub.dev/packages/easy_localization) and etc.
- [json_serializable](https://pub.dev/packages/json_serializable) - helps to create classes that can be encoded to *json* and decoded from *json* by generating code **(requires [json_annotation](https://pub.dev/packages/json_annotation) dependency and dev  dependency to generate code)**
___
#### Additional
- [freezed](https://pub.dev/packages/freezed) **(recommended)** - very useful code generator that helps to save many work time and significantly reduces lines of code

## TODOS

- [ ] fill project structure directories description
- [ ] add more dependency packages
  - [ ] add UI dependencies bloc
- [ ] implement `DialogSerivce`
- [ ] implement `OverlayService`
- [ ] implement [auto_route](https://pub.dev/packages/auto_route) package 

