# Kimono iOS SDK
*Get websites data into iOS apps in seconds*

---
## What is Kimono
Kimono lets you turn websites into structured APIs from your brower in seconds. You don't need to write any code or install any software to extract data with Kimono. The easiest way to use Kimono is to add our bookmarklet to your browser's bookmark bar. Then go to the website you want to get data from and click the bookmarklet. Select the data you want and Kimono does the rest. Kimono takes care of hosting the APIs that you build and running them on the schedule you specify. Use the API output in JSON or as CSV files that you can easily paste into a spreadsheet. 

> Check out [Kimono](https://www.kimonolabs.com/).

---
## What does Kimono iOS SDK do
Kimono iOS SDK is the most powerful way to make a Kimono API call in iOS. You can easily extract live data from websites using Kimono without writing any code. Kimono iOS SDK helps you get data into the native iOS apps quickly. It totally eliminates the need for writing web scraping for your iOS development.

> For more information about how to use Kimono iOS SDK, check out [this article](http://www.yiqin.info/).



---
## Requirements
- Xcode 5+
- iOS 7.0+

---

## Installation
Kimono iOS SDK is built on top of the [AFNetworking](http://afnetworking.com/),  a delightful iOS and OSX networking framework. You can simply drag the `AFNetworking` foler and `Kimono` folder into your Xcode project.

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
| :------------- | :----------- |
| `apiid`           |unique 8 character identifier for the API |
| `name`            |user defined name for the API |
| `targeturl`       |target url from which the API extracts data|
| `frequency`       |frequnecy with kimono fetaches new data|
| `crawlingenabled` |whether or not pagination/targeted crawling is enabled|
| `instructions`    |list of urls and maximum number of pages to visit|
| `lastrun`         |the last time kimono attempted to fecth data|
| `lastsuccess`     |the last time kimono successfully fetched data|
| `lastrunstatus`   |result status for the last attempted run|
| `nextrun`         |the next time kimono will attempt to fecth data|
| `version`         |version number of the result set|
| `lastversion`     |version number of this particular result set|
| `newdata`         |version number of this particular result set|
| `meta`            |whether or not the most recent fetch of this data returned results different from the last time you called this API|
| `online`          |whether or not the API is set to run on automatically on a schedule|
| `webhookuris`     |list of urls to which the API posts successfully fetched of new data|
| `alerteamils`     |list of email address to which the API posts successfully fetched of new data|
| `collectionnames` |list of names of the collections contained in the results object when calling the API endpoint|
| `count`           |the number you called the API|
| `results`         |the response results (`NSDictionary` Class) of the API|


### Kimono Operation
`KimonoOperation` encapsulates the common patterns of communicating with Kimono, including getting data, retrieving an API, and updating API settings. It contains instant methods that have the property with a block that executes either `success` or `failure`. If `error` returns a value, which can be caused by an unacceptable status code, then `failure` is executed. Otherwise, `success` is executed.

### Create a Kimono Operation
```Objective-C
// Set your api id here.
NSString *yourAPIId = @"2wwctra6";
KimonoOperation *operation = [KimonoOperation createWithAPIId:yourAPIId];
```

### Get Kimono API Data
Sends an API request and gets a Kimono API response.
```Objective-C
[operation getDataCompletionBlockWithSuccess:^(KimonoObject *kimonoObject, NSDictionary *responseResults) {
    NSLog(@"Success - Get Data");
    // do something with the data
} failure:^(NSError *error) {
    NSLog(@"Error: %@", error);
}];
```

### Get Kimono API Data with Target URL
Sends an API request and gets a Kimono API response with the target url. The target url is updated.
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
Retrives a Kimono object for the API that matches the specific API id.
```Objective-C
[operation retrieveAPICompletionBlockWithSuccess:^(KimonoObject *kimonoObject) {
    NSLog(@"Success - Retrieve API");
    // do something with the data
} failure:^(NSError *error) {
    NSLog(@"Error: %@", error);
}];
```

### List All APIs
Gets a list of all APIs for the specified user.
```Objective-C
[operation listAllAPIsCompletionBlockWithSuccess:^(KimonoQuery *kimonoQuery) {
    NSLog(@"Success - List All API");
    // do something with the data
} failure:^(NSError *error) {
    NSLog(@"Error: %@", error);
}];
```

### Set Target URL
Sets the target url for the API. If successful, it returns the new Kimono object for the API.
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
Sets the update frequency for the API. If successful, it returns the new Kimono object for the API.
```Objective-C
[operation setFrequency:@"daily" success:^(KimonoObject *newKimonoObject) {
    NSLog(@"Success - Set Frequency");
    // do something with the data
} failure:^(NSError *error) {
    NSLog(@"Error: %@", error);
}];
```

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
- http://twitter.com/YiQin1
- http://yiqin.info