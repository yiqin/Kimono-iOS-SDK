# Kimono iOS SDK
*Turn websites data into iOS apps in seconds*

Kimono iOS SDK provides easy programmatic access to Kimono APIs. 

> For more information about how to use Kimono iOS SDK, check out [this article](http://www.yiqin.info/).

---
## Requirements
- Xcode 5+
- iOS 7.0+

---

## Installation
Kimono iOS SDK is built based on **AFNetworking**. You can simply drag the `AFNetworking` foler and `Kimono` folder into your Xcode project.

---
## Usage

### Get Kimono API Data
```Objective-C
[operation getDataCompletionBlockWithSuccess:^(KimonoObject *kimonoObject, NSDictionary *responseResults) {
    NSLog(@"Success - Get Data");
    
} failure:^(NSError *error) {
    
}];
```

### Get Kimono API Data with Target URL
```Objective-C
// Set your target url here.
NSString *targeturl = @"http://www.mywebsite.com/products/3467721";

[operation getDataFromTargeturl:targeturl success:^(KimonoObject *newKimonoObject, NSDictionary *responseResults) {
    NSLog(@"Success - Get Data from Targeturl");
    
} failure:^(NSError *error) {
    
}];
```

### Retrieve an API
```Objective-C
[operation retrieveAPICompletionBlockWithSuccess:^(KimonoObject *kimonoObject) {
    NSLog(@"Success - Retrieve API");
    
} failure:^(NSError *error) {
    
}];
```

### List All APIs
```Objective-C
[operation listAllAPIsCompletionBlockWithSuccess:^(KimonoQuery *kimonoQuery) {
    NSLog(@"Success - List All API");
    
} failure:^(NSError *error) {
    
}];
```

### Set Target URL
```Objective-C
// Set your target url here.
NSString *targeturl = @"http://www.mywebsite.com/products/3467721";

[operation setTargeturl:targeturl success:^(KimonoObject *newKimonoObject) {
    NSLog(@"Success - Set Target URL");
    
} failure:^(NSError *error) {
    
}];
```

### Set Frequency
```Objective-C
[operation setFrequency:@"daily" success:^(KimonoObject *newKimonoObject) {
    NSLog(@"Success - Set Frequency");
    
} failure:^(NSError *error) {
    
}];
```


---
## Inventory

### Kimono

- `NSCharacterSet`

### KimonoObject

- `NSCharacterSet`


---

## Communication

- If you need help about how to use Kimono iOS SDK, email me. (yiqin.mems@gmail.com).
- If you'd like to ask a general question about Kimono, use [Kimono Support](https://www.kimonolabs.com/support).
- If you found a bug, open an issue.
- If you have a feature request, open an issue.
- If you want to contribute, submit a pull request.

---

## Contact

Yi Qin

- http://github.com/yiqin
- http://yiqin.info