# Kimono iOS SDK
*Get websites data into iOS apps in seconds*

Kimono iOS SDK is the most powerful way to make a Kimono API call in iOS. You can easily extract live data from websites using Kimono without writing any code. Kimono iOS SDK helps you get data into the native iOS apps quickly. It totally eliminates the need for writing web scraping for your iOS development.

> For more information about how to use Kimono iOS SDK, check out [this article](http://www.yiqin.info/).

---
## Requirements
- Xcode 5+
- iOS 7.0+

---

## Installation
Kimono iOS SDK is built on top of the **[AFNetworking](http://afnetworking.com/)**,  a delightful iOS and OSX networking framework. You can simply drag the `AFNetworking` foler and `Kimono` folder into your Xcode project.

---

## Initializing the SDK
To start to use Kimono, you must first initialize it with your api key. You can find it in your APIs settings on the [Kimono website](https://www.kimonolabs.com/).

Open up your `AppDelegate.m` file and add the following import to the top of the file:
```Objective-C
#import "Kimono.h"
```
Then call `setAPIKey:` inside the `application:didFinishLaunchingWithOptions:` function:
```Objective-C
// Set your api key here.
NSString *yourAPIKey = @"8541e9ff8ff5291b4d84b9f75550c9b8";
[Kimono setAPIKey:yourAPIKey];
```

---
## Usage
Once you've initilized Kimono, you can create a Kimono operation and make an API request.

### Kimono Object
`KimonoObject` is a local representation of data that contains metadata about the API. Response data is built about the `KimonoObject`. This is the main class that is used to interact with data in your app.

| property          | name |
| ------------- | ----------- |
| `apiid`           |unique 8 character identifier for the API |
| `name`            |user defined name for the API |

- `targeturl`       target url from which the API extracts data
- `frequency`       frequnecy with kimono fetaches new data
- `crawlingenabled` whether or not pagination/targeted crawling is enabled
- `instructions`
- `lastrun`
- `lastsuccess`
- `thisversionrun`
- `nextrun`
- `lastrunstatus`
- `lastversion`
- `version`
- `newdata`
- `meta`
- `online`
- `webhookuris`
- `alerteamils`
- `count`
- `results`


### Kimono Operation
`KimonoOperation` encapsulates the common patterns of communicating with Kimono, including getting data, retrieving an API, and updating API settings.

### Create a Kimono Operation
```Objective-C
// Set your api id here.
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

## Contact & Maintainers

Yi Qin

- http://github.com/yiqin
- http://yiqin.info