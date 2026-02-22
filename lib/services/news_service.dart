import '../models/article_model.dart';

/// Mock news API service that returns static article data.
class NewsService {
  /// Simulates fetching articles from a remote API.
  /// Set [shouldFail] to `true` to simulate an error response.
  Future<List<Article>> fetchArticles({bool shouldFail = false}) async {
    // Simulate network latency
    await Future.delayed(const Duration(seconds: 2));

    if (shouldFail) {
      throw Exception('Failed to load articles. Please try again.');
    }

    return _mockArticles;
  }

  // ── Mock data ──────────────────────────────────────────────────────────

  static final List<Article> _mockArticles = [
    Article(
      id: '1',
      title: 'Flutter 4.0 Released with Major Performance Improvements',
      description:
          'Google announces Flutter 4.0 with significant rendering engine upgrades, better hot-reload performance, and new Material 3 widgets.',
      content:
          'Google has officially released Flutter 4.0, the latest major version of its cross-platform UI toolkit. '
          'This release brings a completely rewritten rendering engine that delivers up to 60% better performance on low-end devices.',
      imageUrl: 'https://picsum.photos/seed/flutter4/800/400',
      source: 'Flutter Dev Blog',
      publishedAt: DateTime(2026, 2, 20),
    ),
    Article(
      id: '2',
      title: 'Dart 3.8 Introduces Pattern Matching Enhancements',
      description:
          'The latest Dart release brings exhaustive pattern matching, improved type inference, and new collection utilities.',
      content:
          'Dart 3.8 has been released alongside Flutter 4.0, introducing powerful new language features. '
          'The enhanced pattern matching system now supports deeply nested destructuring with guard clauses.',
      imageUrl: 'https://picsum.photos/seed/dart38/800/400',
      source: 'Dart Blog',
      publishedAt: DateTime(2026, 2, 19),
    ),
    Article(
      id: '3',
      title: 'State Management in 2026: What Has Changed?',
      description:
          'A deep dive into the evolving landscape of state management solutions in Flutter and how Provider continues to be relevant.',
      content:
          'State management remains one of the most discussed topics in the Flutter community. '
          'While new solutions emerge regularly, Provider and Riverpod continue to dominate adoption metrics.',
      imageUrl: 'https://picsum.photos/seed/state2026/800/400',
      source: 'Medium – Flutter Community',
      publishedAt: DateTime(2026, 2, 18),
    ),
    Article(
      id: '4',
      title: 'Building Accessible Apps with Flutter',
      description:
          'Learn best practices for making your Flutter apps accessible to users with disabilities, including screen readers and high-contrast modes.',
      content:
          'Accessibility is no longer optional — it is a legal requirement in many markets. '
          'Flutter provides robust semantics support that makes it straightforward to build inclusive applications.',
      imageUrl: 'https://picsum.photos/seed/a11y/800/400',
      source: 'Google Developers',
      publishedAt: DateTime(2026, 2, 17),
    ),
    Article(
      id: '5',
      title: 'Top 10 VS Code Extensions for Flutter Developers',
      description:
          'Boost your productivity with these must-have VS Code extensions tailored for Flutter and Dart development.',
      content:
          'Visual Studio Code remains the editor of choice for many Flutter developers. '
          'Here are the top extensions that will supercharge your workflow, from code generation to debugging.',
      imageUrl: 'https://picsum.photos/seed/vscode/800/400',
      source: 'Dev.to',
      publishedAt: DateTime(2026, 2, 16),
    ),
    Article(
      id: '6',
      title: 'Firebase Integration Best Practices for Flutter',
      description:
          'A comprehensive guide on integrating Firebase services into your Flutter app the right way, covering auth, Firestore, and Cloud Functions.',
      content:
          'Firebase and Flutter are a natural pair for rapid application development. '
          'This guide covers best practices for structuring your Firebase integration to keep your codebase clean and testable.',
      imageUrl: 'https://picsum.photos/seed/firebase/800/400',
      source: 'Firebase Blog',
      publishedAt: DateTime(2026, 2, 15),
    ),
    Article(
      id: '7',
      title: 'Understanding Isolates and Concurrency in Dart',
      description:
          'Master Dart isolates to offload expensive computations and keep your Flutter UI smooth and responsive.',
      content:
          'Dart uses a single-threaded event-loop model, but that does not mean you are limited to one thread. '
          'Isolates provide true parallelism by running code in separate memory-isolated threads.',
      imageUrl: 'https://picsum.photos/seed/isolates/800/400',
      source: 'Dart Academy',
      publishedAt: DateTime(2026, 2, 14),
    ),
    Article(
      id: '8',
      title: 'Deploying Flutter Web Apps to Production',
      description:
          'Step-by-step guide on deploying Flutter web applications with optimized bundle sizes and proper caching strategies.',
      content:
          'Flutter web has matured significantly and is now production-ready for many use cases. '
          'This article walks through the complete deployment pipeline from build optimisation to CDN configuration.',
      imageUrl: 'https://picsum.photos/seed/webdeploy/800/400',
      source: 'LogRocket Blog',
      publishedAt: DateTime(2026, 2, 13),
    ),
    Article(
      id: '9',
      title: 'Flutter Animation Deep Dive: Implicit vs Explicit',
      description:
          'A thorough comparison of implicit and explicit animations in Flutter with practical examples and performance benchmarks.',
      content:
          'Flutter offers two main animation approaches: implicit widgets like AnimatedContainer and explicit controllers. '
          'Understanding when to use each can dramatically simplify your code and improve frame rates.',
      imageUrl: 'https://picsum.photos/seed/animation/800/400',
      source: 'Flutter Community',
      publishedAt: DateTime(2026, 2, 12),
    ),
    Article(
      id: '10',
      title: 'Riverpod 3.0: The Next Evolution of State Management',
      description:
          'Riverpod 3.0 ships with code generation improvements, async notifiers, and a dramatically simplified API.',
      content:
          'Remi Rousselet has released Riverpod 3.0, a landmark update to the popular state management library. '
          'The new release fully embraces code generation and ships with a streamlined provider syntax.',
      imageUrl: 'https://picsum.photos/seed/riverpod3/800/400',
      source: 'Pub.dev Blog',
      publishedAt: DateTime(2026, 2, 11),
    ),
    Article(
      id: '11',
      title: 'Writing Unit Tests for Flutter Widgets',
      description:
          'A practical guide to writing meaningful widget tests in Flutter, covering finders, matchers, and golden file testing.',
      content:
          'Testing is a core part of building reliable Flutter apps. '
          'Widget tests allow you to verify UI behavior without running on a real device, making them fast and repeatable.',
      imageUrl: 'https://picsum.photos/seed/testing/800/400',
      source: 'Flutter Docs',
      publishedAt: DateTime(2026, 2, 10),
    ),
    Article(
      id: '12',
      title: 'Custom Painters in Flutter: Drawing from Scratch',
      description:
          'Learn how to use CustomPainter to draw complex graphics, charts, and shapes directly on the canvas.',
      content:
          'Flutter\'s CustomPainter API gives you full control over pixel-level rendering. '
          'With it, you can create charts, illustrations, and interactive drawing surfaces that go beyond standard widgets.',
      imageUrl: 'https://picsum.photos/seed/painter/800/400',
      source: 'Medium – Flutter',
      publishedAt: DateTime(2026, 2, 9),
    ),
    Article(
      id: '13',
      title: 'Mastering Navigator 2.0 and GoRouter',
      description:
          'Understand declarative routing in Flutter using GoRouter, deep links, and nested navigation patterns.',
      content:
          'GoRouter has become the de-facto routing solution for Flutter applications. '
          'This guide covers route guards, deep linking, and how to handle complex nested navigation hierarchies.',
      imageUrl: 'https://picsum.photos/seed/gorouter/800/400',
      source: 'GoRouter Docs',
      publishedAt: DateTime(2026, 2, 8),
    ),
    Article(
      id: '14',
      title: 'Flutter on Desktop: Windows, macOS, and Linux',
      description:
          'An honest review of Flutter desktop support in 2026, covering platform channels, native APIs, and known limitations.',
      content:
          'Flutter desktop has reached stable maturity across Windows, macOS, and Linux. '
          'While some edge cases remain, the vast majority of apps can ship to desktop with minimal additional effort.',
      imageUrl: 'https://picsum.photos/seed/desktop/800/400',
      source: 'Flutter Blog',
      publishedAt: DateTime(2026, 2, 7),
    ),
    Article(
      id: '15',
      title: 'Optimizing Flutter App Startup Time',
      description:
          'Techniques to reduce cold and warm startup time in Flutter, including deferred loading and splash screen best practices.',
      content:
          'Startup time is critical for first impressions. Flutter provides several tools to profile and reduce startup latency, '
          'including deferred component loading and native splash screen integration.',
      imageUrl: 'https://picsum.photos/seed/startup/800/400',
      source: 'Performance Guild',
      publishedAt: DateTime(2026, 2, 6),
    ),
    Article(
      id: '16',
      title: 'Exploring Dart Macros: The Future of Code Generation',
      description:
          'Dart macros are here — discover how they replace build_runner and provide compile-time metaprogramming capabilities.',
      content:
          'Dart macros allow developers to generate and transform code at compile time without external tools. '
          'This replaces the traditional build_runner workflow with a more integrated and type-safe approach.',
      imageUrl: 'https://picsum.photos/seed/macros/800/400',
      source: 'Dart Blog',
      publishedAt: DateTime(2026, 2, 5),
    ),
    Article(
      id: '17',
      title: 'Flutter Flavors: Managing Multiple Environments',
      description:
          'Set up development, staging, and production environments in your Flutter app using flavors and environment variables.',
      content:
          'Managing multiple environments is essential for professional app development. '
          'Flutter flavors let you define separate configurations for dev, staging, and prod — including different API endpoints and feature flags.',
      imageUrl: 'https://picsum.photos/seed/flavors/800/400',
      source: 'Very Good Ventures Blog',
      publishedAt: DateTime(2026, 2, 4),
    ),
    Article(
      id: '18',
      title: 'In-App Purchases with Flutter: A Complete Guide',
      description:
          'Implement subscriptions and one-time purchases in your Flutter app using the in_app_purchase package.',
      content:
          'Monetizing your Flutter app through in-app purchases requires careful integration with both the App Store and Play Store. '
          'The in_app_purchase package abstracts platform differences and simplifies the purchase flow.',
      imageUrl: 'https://picsum.photos/seed/iap/800/400',
      source: 'Revenue Cat Blog',
      publishedAt: DateTime(2026, 2, 3),
    ),
    Article(
      id: '19',
      title: 'Flutter Camera Plugin: Building a Custom Camera App',
      description:
          'Use the camera plugin to capture photos and video, implement zoom, flash control, and real-time image filters.',
      content:
          'The camera plugin gives Flutter apps direct access to device cameras. '
          'Combined with image processing packages, you can build feature-rich camera experiences that rival native apps.',
      imageUrl: 'https://picsum.photos/seed/camera/800/400',
      source: 'Dev.to',
      publishedAt: DateTime(2026, 2, 2),
    ),
    Article(
      id: '20',
      title: 'Hive vs Isar vs Drift: Choosing a Local Database',
      description:
          'Compare Flutter\'s top local database options in 2026 — performance benchmarks, API ergonomics, and migration support.',
      content:
          'Local data persistence is a common requirement in mobile apps. '
          'Hive offers simplicity, Isar brings speed, and Drift provides a full SQL experience with type safety.',
      imageUrl: 'https://picsum.photos/seed/localdb/800/400',
      source: 'Flutter Gems',
      publishedAt: DateTime(2026, 2, 1),
    ),
    Article(
      id: '21',
      title: 'Building a Chat App with Flutter and WebSockets',
      description:
          'Create a real-time chat application using WebSockets, Riverpod, and a Node.js backend.',
      content:
          'Real-time communication is at the heart of modern apps. '
          'Flutter\'s WebSocket support, combined with a lightweight Node.js server, makes it straightforward to build scalable chat features.',
      imageUrl: 'https://picsum.photos/seed/chat/800/400',
      source: 'Smashing Magazine',
      publishedAt: DateTime(2026, 1, 31),
    ),
    Article(
      id: '22',
      title: 'Push Notifications in Flutter with FCM',
      description:
          'A step-by-step tutorial on setting up Firebase Cloud Messaging for both foreground and background push notifications.',
      content:
          'Push notifications keep users engaged with timely updates. '
          'Firebase Cloud Messaging is the most reliable way to deliver notifications across Android and iOS from a Flutter app.',
      imageUrl: 'https://picsum.photos/seed/fcm/800/400',
      source: 'Firebase Blog',
      publishedAt: DateTime(2026, 1, 30),
    ),
    Article(
      id: '23',
      title: 'Flutter and GraphQL: A Practical Introduction',
      description:
          'Learn how to connect your Flutter app to a GraphQL API using the graphql_flutter package and manage cache efficiently.',
      content:
          'GraphQL is gaining traction as an alternative to REST in mobile applications. '
          'The graphql_flutter package provides a familiar Apollo-like experience with built-in caching and subscription support.',
      imageUrl: 'https://picsum.photos/seed/graphql/800/400',
      source: 'Apollo Blog',
      publishedAt: DateTime(2026, 1, 29),
    ),
    Article(
      id: '24',
      title: 'Theming Your Flutter App: Dark Mode and Beyond',
      description:
          'Implement dynamic theming, custom color schemes, and seamless dark mode switching in Flutter using ThemeExtension.',
      content:
          'Flutter\'s theming system has matured significantly. '
          'ThemeExtension allows you to add custom design tokens to the global theme, ensuring consistency across your entire app.',
      imageUrl: 'https://picsum.photos/seed/theming/800/400',
      source: 'Material Design Blog',
      publishedAt: DateTime(2026, 1, 28),
    ),
    Article(
      id: '25',
      title: 'CI/CD for Flutter with GitHub Actions',
      description:
          'Automate testing, building, and deploying your Flutter app to Google Play and the App Store using GitHub Actions.',
      content:
          'Continuous integration keeps your codebase healthy. '
          'GitHub Actions provides a free and powerful platform for automating Flutter workflows, from linting to store deployment.',
      imageUrl: 'https://picsum.photos/seed/cicd/800/400',
      source: 'GitHub Blog',
      publishedAt: DateTime(2026, 1, 27),
    ),
    Article(
      id: '26',
      title: 'Internationalization (i18n) in Flutter Apps',
      description:
          'Support multiple languages and locales in your Flutter app using the intl package and ARB files.',
      content:
          'Reaching a global audience requires proper internationalization. '
          'Flutter\'s built-in intl support, combined with ARB files, makes it easy to manage translations across dozens of languages.',
      imageUrl: 'https://picsum.photos/seed/i18n/800/400',
      source: 'Google Developers',
      publishedAt: DateTime(2026, 1, 26),
    ),
    Article(
      id: '27',
      title: 'Error Handling and Logging Best Practices in Flutter',
      description:
          'Implement structured error handling, crash reporting with Sentry, and structured logging in production Flutter apps.',
      content:
          'Robust error handling separates hobby projects from production apps. '
          'Combining Flutter\'s error zone with Sentry gives you detailed crash reports and context for every exception.',
      imageUrl: 'https://picsum.photos/seed/errors/800/400',
      source: 'Sentry Blog',
      publishedAt: DateTime(2026, 1, 25),
    ),
    Article(
      id: '28',
      title: 'Gesture Detection and Touch Handling in Flutter',
      description:
          'Deep dive into GestureDetector, Listener, and custom gesture recognizers to build highly interactive UIs.',
      content:
          'Flutter\'s gesture system is powerful yet nuanced. '
          'Understanding the gesture arena and how recognizers compete allows you to build interactions that feel natural and responsive.',
      imageUrl: 'https://picsum.photos/seed/gesture/800/400',
      source: 'Flutter Docs',
      publishedAt: DateTime(2026, 1, 24),
    ),
    Article(
      id: '29',
      title: 'Flutter Bloc Pattern: Clean Architecture in Practice',
      description:
          'Implement the BLoC pattern with flutter_bloc to build scalable, testable, and maintainable Flutter applications.',
      content:
          'BLoC remains one of the most widely adopted state management patterns in enterprise Flutter apps. '
          'The flutter_bloc package provides a clean API that encourages separation of business logic from UI code.',
      imageUrl: 'https://picsum.photos/seed/bloc/800/400',
      source: 'Felix Angelov Blog',
      publishedAt: DateTime(2026, 1, 23),
    ),
    Article(
      id: '30',
      title: 'Maps and Geolocation in Flutter',
      description:
          'Integrate Google Maps, display real-time user location, and implement geofencing in your Flutter application.',
      content:
          'Location-aware apps create unique value for users. '
          'Flutter\'s google_maps_flutter and geolocator packages make it straightforward to build map-centric features with rich interactivity.',
      imageUrl: 'https://picsum.photos/seed/maps/800/400',
      source: 'Google Maps Platform Blog',
      publishedAt: DateTime(2026, 1, 22),
    ),
    Article(
      id: '31',
      title: 'Biometric Authentication in Flutter',
      description:
          'Add fingerprint and face recognition login to your Flutter app using the local_auth package.',
      content:
          'Biometric authentication provides a seamless and secure login experience. '
          'The local_auth package supports Face ID, Touch ID, and Android\'s BiometricPrompt with a unified Dart API.',
      imageUrl: 'https://picsum.photos/seed/biometric/800/400',
      source: 'Medium – Mobile Dev',
      publishedAt: DateTime(2026, 1, 21),
    ),
    Article(
      id: '32',
      title: 'File Upload and Download in Flutter',
      description:
          'Handle file picking, upload progress tracking, and downloading files with the dio and file_picker packages.',
      content:
          'File operations are a staple of modern apps. '
          'Dio provides granular progress callbacks for uploads and downloads, while file_picker handles the platform-specific file selection UI.',
      imageUrl: 'https://picsum.photos/seed/fileupload/800/400',
      source: 'Dev.to',
      publishedAt: DateTime(2026, 1, 20),
    ),
    Article(
      id: '33',
      title: 'Building a Video Player App with Flutter',
      description:
          'Use the video_player and chewie packages to build a full-featured video player with custom controls.',
      content:
          'Video playback is a highly requested feature in modern mobile apps. '
          'The video_player plugin provides low-level control while chewie wraps it with a polished, customizable UI.',
      imageUrl: 'https://picsum.photos/seed/video/800/400',
      source: 'Flutter Community',
      publishedAt: DateTime(2026, 1, 19),
    ),
    Article(
      id: '34',
      title: 'Introduction to Flame: Game Development with Flutter',
      description:
          'Start building 2D games in Flutter using the Flame game engine — sprites, collision detection, and game loops.',
      content:
          'Flame is a lightweight game engine built on top of Flutter. '
          'It provides a component-based architecture, sprite sheets, tiled map support, and a fixed-timestep game loop.',
      imageUrl: 'https://picsum.photos/seed/flame/800/400',
      source: 'Flame Engine Docs',
      publishedAt: DateTime(2026, 1, 18),
    ),
    Article(
      id: '35',
      title: 'Flutter Performance Profiling with DevTools',
      description:
          'Use Flutter DevTools to identify jank, memory leaks, and excessive widget rebuilds in your application.',
      content:
          'DevTools is an indispensable companion for Flutter development. '
          'The performance overlay, timeline, and memory profiler give you deep insight into how your app behaves at runtime.',
      imageUrl: 'https://picsum.photos/seed/devtools/800/400',
      source: 'Flutter Docs',
      publishedAt: DateTime(2026, 1, 17),
    ),
    Article(
      id: '36',
      title: 'Drag and Drop Interfaces in Flutter',
      description:
          'Build intuitive drag-and-drop UIs using Draggable, DragTarget, and the new SliverReorderableList widget.',
      content:
          'Drag-and-drop interactions add a tactile quality to apps like task managers and kanban boards. '
          'Flutter\'s Draggable and DragTarget widgets provide a flexible foundation for these interactions.',
      imageUrl: 'https://picsum.photos/seed/draganddrop/800/400',
      source: 'Flutter Community',
      publishedAt: DateTime(2026, 1, 16),
    ),
    Article(
      id: '37',
      title: 'Secure Storage and Encryption in Flutter',
      description:
          'Protect sensitive user data using flutter_secure_storage, AES encryption, and certificate pinning.',
      content:
          'Security is non-negotiable for apps handling personal or financial data. '
          'flutter_secure_storage uses the Keychain on iOS and Keystore on Android to protect data from extraction.',
      imageUrl: 'https://picsum.photos/seed/security/800/400',
      source: 'OWASP Mobile',
      publishedAt: DateTime(2026, 1, 15),
    ),
    Article(
      id: '38',
      title: 'Integrating Stripe Payments in Flutter',
      description:
          'Accept credit card and wallet payments in your Flutter app using the Stripe Flutter SDK.',
      content:
          'Stripe is one of the most developer-friendly payment platforms available. '
          'Their official Flutter SDK wraps the native Stripe SDKs and provides pre-built payment sheet UI components.',
      imageUrl: 'https://picsum.photos/seed/stripe/800/400',
      source: 'Stripe Blog',
      publishedAt: DateTime(2026, 1, 14),
    ),
    Article(
      id: '39',
      title: 'Building a Social Login with Google and Apple',
      description:
          'Implement Google Sign-In and Sign in with Apple in your Flutter app using Firebase Authentication.',
      content:
          'Social login reduces friction for new users and increases conversion rates. '
          'Firebase Authentication handles token exchange and session management for both Google and Apple providers.',
      imageUrl: 'https://picsum.photos/seed/sociallogin/800/400',
      source: 'Firebase Blog',
      publishedAt: DateTime(2026, 1, 13),
    ),
    Article(
      id: '40',
      title: 'Responsive UI Design in Flutter',
      description:
          'Build adaptive layouts that look great on phones, tablets, and desktops using LayoutBuilder and MediaQuery.',
      content:
          'A responsive app adapts gracefully to any screen size. '
          'Flutter\'s LayoutBuilder and MediaQuery give you the building blocks to create adaptive layouts without third-party libraries.',
      imageUrl: 'https://picsum.photos/seed/responsive/800/400',
      source: 'Google Developers',
      publishedAt: DateTime(2026, 1, 12),
    ),
    Article(
      id: '41',
      title: 'Background Tasks and WorkManager in Flutter',
      description:
          'Schedule and run background tasks on Android and iOS using the workmanager plugin.',
      content:
          'Background processing is essential for tasks like syncing data or sending reminders. '
          'The workmanager plugin provides a consistent interface to schedule periodic and one-shot background tasks on both platforms.',
      imageUrl: 'https://picsum.photos/seed/background/800/400',
      source: 'Medium – Flutter Dev',
      publishedAt: DateTime(2026, 1, 11),
    ),
    Article(
      id: '42',
      title: 'Creating PDF Reports in Flutter',
      description:
          'Generate and print professional PDF documents in Flutter using the pdf and printing packages.',
      content:
          'PDF generation is a common requirement in business applications. '
          'The pdf package lets you compose rich documents with images, tables, and custom fonts, while printing handles device-level printing.',
      imageUrl: 'https://picsum.photos/seed/pdf/800/400',
      source: 'Pub.dev',
      publishedAt: DateTime(2026, 1, 10),
    ),
    Article(
      id: '43',
      title: 'QR Code Scanning and Generation in Flutter',
      description:
          'Build QR code scanner and generator functionality into your Flutter app with mobile_scanner and qr_flutter.',
      content:
          'QR codes are ubiquitous in modern apps — from onboarding flows to payments. '
          'mobile_scanner provides fast, camera-based scanning while qr_flutter handles customizable QR code rendering.',
      imageUrl: 'https://picsum.photos/seed/qrcode/800/400',
      source: 'Dev.to',
      publishedAt: DateTime(2026, 1, 9),
    ),
    Article(
      id: '44',
      title: 'Audio Playback and Recording in Flutter',
      description:
          'Implement music playback, voice recording, and audio streaming in Flutter using just_audio and record.',
      content:
          'Audio features open up a wide range of app possibilities, from podcast players to voice memo tools. '
          'just_audio handles complex playback scenarios including playlists and audio effects, while record simplifies microphone capture.',
      imageUrl: 'https://picsum.photos/seed/audio/800/400',
      source: 'Flutter Community',
      publishedAt: DateTime(2026, 1, 8),
    ),
    Article(
      id: '45',
      title: 'Infinite Scroll and Pagination in Flutter',
      description:
          'Implement smooth infinite scrolling with the infinite_scroll_pagination package and a REST backend.',
      content:
          'Paginating large data sets is essential for performance and UX. '
          'The infinite_scroll_pagination package handles loading states, error pages, and page keys so you can focus on your data layer.',
      imageUrl: 'https://picsum.photos/seed/pagination/800/400',
      source: 'Medium – Flutter',
      publishedAt: DateTime(2026, 1, 7),
    ),
    Article(
      id: '46',
      title: 'Using WebView in Flutter Apps',
      description:
          'Embed web content in your Flutter app using webview_flutter, handle JavaScript interop, and manage cookies.',
      content:
          'Sometimes you need to display web content within your native app. '
          'webview_flutter provides a rich API for loading URLs, injecting JavaScript, and intercepting navigation events.',
      imageUrl: 'https://picsum.photos/seed/webview/800/400',
      source: 'Flutter Docs',
      publishedAt: DateTime(2026, 1, 6),
    ),
    Article(
      id: '47',
      title: 'Social Media Sharing from Flutter',
      description:
          'Share text, images, and files to social media apps using the share_plus package on Android and iOS.',
      content:
          'Letting users share content directly from your app can significantly grow your user base. '
          'share_plus wraps the native share sheet on both platforms and supports sharing files, URLs, and rich text.',
      imageUrl: 'https://picsum.photos/seed/share/800/400',
      source: 'Pub.dev Blog',
      publishedAt: DateTime(2026, 1, 5),
    ),
    Article(
      id: '48',
      title: 'Shimmer Loading Effects in Flutter',
      description:
          'Add polished shimmer skeleton loading animations to your Flutter app for a better perceived performance.',
      content:
          'Skeleton screens communicate that content is loading without a jarring spinner. '
          'The shimmer package makes it trivial to wrap any widget in an animated shimmer effect that matches your app\'s layout.',
      imageUrl: 'https://picsum.photos/seed/shimmer/800/400',
      source: 'UX Collective',
      publishedAt: DateTime(2026, 1, 4),
    ),
    Article(
      id: '49',
      title: 'Flutter Clean Architecture: A Practical Walkthrough',
      description:
          'Structure your Flutter project with Clean Architecture — separating data, domain, and presentation layers.',
      content:
          'Clean Architecture enforces a strict separation of concerns that makes large Flutter codebases maintainable. '
          'By isolating your domain logic from UI and data layers, you gain testability and flexibility to swap implementations.',
      imageUrl: 'https://picsum.photos/seed/cleanarch/800/400',
      source: 'Reso Coder Blog',
      publishedAt: DateTime(2026, 1, 3),
    ),
    Article(
      id: '50',
      title: '2026 Flutter Roadmap: What to Expect This Year',
      description:
          'The Flutter team shares their 2026 roadmap, including Wasm support, improved tooling, and new rendering targets.',
      content:
          'The Flutter team has published their 2026 roadmap, outlining ambitious goals for the framework. '
          'Key highlights include full WebAssembly (Wasm) production support, AI-assisted widget generation, and a revamped DevTools experience.',
      imageUrl: 'https://picsum.photos/seed/roadmap2026/800/400',
      source: 'Flutter Blog',
      publishedAt: DateTime(2026, 1, 2),
    ),
  ];
}
