## Quick Start

### Step 1 - Add Dependency

1. SDK is available through [CocoaPods](https://cocoapods.org/pods/faceguard). To install it, simply add the following line to your Podfile:

```ruby
# Podfile
pod 'Faceguard'

```
### Step 2 - Initialise SDK

The SDK is initialized in the client app.

```swift
let config = FaceguardConfiguration(credentialId: <<CREDENTIAL-ID>>, basicAuthKey: <<BASICAUTHKEY>>, cypherKey: <<CYPHER-KEY>>, userId: <<USER-ID>>, environment: <<ENVIRONMENT>>, thresholdConfig: <<THRESHOLD-OBJ>>, theme: <<THEME-OBJ>>, servicesConfiguration: <<ServicesConfiguratio>>)

// Init SDK
let faceguardSDK = FaceguardSDK.initialize(with configuration: Faceguard.FaceguardConfiguration, delegate: Faceguard.FaceguardDelegate) -> Faceguard.FaceguardSDK?


//Create helper congiguration objects
<<THRESHOLD-OBJ>>
let thresholdConfig = FaceguardThresholdConfig(hijab: Double, mask: Double, headgear: Double, clothing: Double, glasses: Double, skinOrChest: Double)

values of hijab, mask, headgear, clothing, glasses & skinOrChest would be between 0-1


<<THEME-OBJ>>
let theme = FaceguardTheme(primaryTextColor: <<CUSTOM-PRIMARY-COLOER>>, secondaryTextColor: <<CUSTOM-PRIMARY-COLOER>>, primaryBackgroundColor: <<CUSTOM-BG-COLOER>>, fontName: <<CUSTOM-FONT-NAME>>)


<<ServicesConfiguratio>>
let serviceConfig = FaceguardServicesConfiguration(retryEnabled: Bool, statusScreenRequired: Bool, enableFaceMatch: Bool, enableFaceAnalyser: Bool, enableFaceDedupe: Bool, enableFaceEntityEnrollment: Bool, imageURL: String?)
```



### Step 3 - Start the faceguard process

```swift

faceguardSDK.start(from: self)

```

#### Response returned from the SDK
To get the response from liveness you need to confirm to 'FaceguardDelegate'.
ex-


```swift

extension ViewController: FaceguardDelegate {
    func faceguardProcessDidCompleteWith(success: Bool, error: Faceguard.NetworkError?, image: UIImage?, faceguardResponse: FaceguardResponse?) {
        //Handle the result here
   }
}
```



