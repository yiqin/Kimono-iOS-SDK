# Kimono iOS SDK
* short introduction

Long introduction

> For more information about how to use Kimono iOS SDK, check out [this article](http://www.yiqin.info/).

---
## Requirements
- Xcode 5+
- iOS 7.0+

---

## Installation
Kimono iOS SDK is built based on **AFNetworking**. If you can simply drag the `AFNetworking` foler and `Kimono` folder into your Xcode project.

---
## Usage

### Get API Response
```Objective-C
    [kimonoOperation getResponseCompletionBlockWithSuccess:^(KimonoObject *kimonoObject, NSDictionary *responseResults) {
        NSLog(@"Success - Get Response");
        
    } failure:^(NSError *error) {
        
    }];
```

### Get API Response with Target URL
```Objective-C
    [kimonoOperation getResponseFromTargeturl:@"http://challengepost.com/software/carebee" success:^(KimonoObject *newKimonoObject, NSDictionary *responseResults) {
        NSLog(@"Success - Get Response from Targeturl");
        
        
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
