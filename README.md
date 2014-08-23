# Kimono iOS SDK
*Turn websites data into iOS apps in seconds*

Kimono 

> For more information about how to use Kimono iOS SDK, check out [this article](http://www.yiqin.info/).

---
## Requirements
- Xcode 5+
- iOS 7.0+

---

## Installation
Kimono iOS SDK is built based on **AFNetworking**. You can simply drag the `AFNetworking` foler and `Kimono` folder into your Xcode project.

## Initializing the SDK
To start to use Kimono, you must first initialize it with your api key. You can find in your settings on the [Kimono website](https://www.kimonolabs.com/).

Open up your `AppDelegate.m` file and add the following import to the top of the file:
```Objective-C
#import "Kimono.h"
```
Then call `setAPIKey:` inside the `application:didFinishLaunchingWithOptions:` function:
```Objective-C
NSString *yourAPIKey = @"8541e9ff8ff5291b4d84b9f75550c9b8";
[Kimono setAPIKey:yourAPIKey];
```

---
## Usage
Once you've initilized Kimono, you can make an API request now.

### Create a Kimono Operation
```Objective-C
NSString *yourAPIId = @"2wwctra6";
KimonoOperation *operation = [KimonoOperation createWithAPIId:yourAPIId];
```

### Get Kimono API Data
```Objective-C
[operation getDataCompletionBlockWithSuccess:^(KimonoObject *kimonoObject, NSDictionary *responseResults) {
    NSLog(@"Success - Get Data");
    // do something with the data
} failure:^(NSError *error) {
    NSLog(@"Error: %@", error);
}];
```

### Get Kimono API Data with Target URL
```Objective-C
// Set your target url here.
NSString *targeturl = @"http://www.mywebsite.com/products/3467721";

[operation getDataFromTargeturl:targeturl success:^(KimonoObject *newKimonoObject, NSDictionary *responseResults) {
    NSLog(@"Success - Get Data from Targeturl");
    // do something with the data
} failure:^(NSError *error) {
    NSLog(@"Error: %@", error);
}];
```

### Retrieve an API
```Objective-C
[operation retrieveAPICompletionBlockWithSuccess:^(KimonoObject *kimonoObject) {
    NSLog(@"Success - Retrieve API");
    // do something with the data
} failure:^(NSError *error) {
    NSLog(@"Error: %@", error);
}];
```

### List All APIs
```Objective-C
[operation listAllAPIsCompletionBlockWithSuccess:^(KimonoQuery *kimonoQuery) {
    NSLog(@"Success - List All API");
    // do something with the data
} failure:^(NSError *error) {
    NSLog(@"Error: %@", error);
}];
```

### Set Target URL
```Objective-C
// Set your target url here.
NSString *targeturl = @"http://www.mywebsite.com/products/3467721";

[operation setTargeturl:targeturl success:^(KimonoObject *newKimonoObject) {
    NSLog(@"Success - Set Target URL");
    // do something with the data
} failure:^(NSError *error) {
    NSLog(@"Error: %@", error);
}];
```

### Set Frequency
```Objective-C
[operation setFrequency:@"daily" success:^(KimonoObject *newKimonoObject) {
    NSLog(@"Success - Set Frequency");
    // do something with the data
} failure:^(NSError *error) {
    NSLog(@"Error: %@", error);
}];
```


---
## Inventory

### Kimono

Instants Methods
- `+ (void)setAPIKey:(NSString *) KimonoAPIKey;`
- `+ (NSString *)getAPIKey;`

### KimonoOperation

Properties
- `@property (nonatomic, strong) NSString *apiid;`

- `apikey`
- `apiobject`


---

## Communication

- If you **need help** about how to use Kimono iOS SDK, email me (yiqin.mems@gmail.com).
- If you'd like to **ask a general question** about Kimono, use [Kimono Support](https://www.kimonolabs.com/support).
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

---

## Contact

Yi Qin

- http://github.com/yiqin
- http://yiqin.info