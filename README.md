This Package is for Prebuilt Awesome OTP Verification Screen with Custom Keyboard

## Features

## Getting started

SDK: >=2.18.2 <3.0.0
Flutter: >=1.17.0

## Usage

Short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
 AwesomeOtpScreen.withGradientBackground(
        topColor: Colors.green.shade200,
        bottomColor: Colors.greenAccent.shade700,
        otpLength: 4,
        validateOtp: validateOtp,
        routeCallback: moveToNextScreen,
        themeColor: Colors.white,
        titleColor: Colors.white,
        title: "Phone Number Verification",
        subTitle: "Enter the code sent to \n +880170020020",
        icon: Image.asset(
          'assets/images/phone_logo.png',
          fit: BoxFit.fill,
        ),
      ),
```

## Additional information
