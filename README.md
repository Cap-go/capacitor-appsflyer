# @capgo/capacitor-appsflyer
 <a href="https://capgo.app/"><img src='https://raw.githubusercontent.com/Cap-go/capgo/main/assets/capgo_banner.png' alt='Capgo - Instant updates for capacitor'/></a>

<div align="center">
  <h2><a href="https://capgo.app/?ref=plugin_appsflyer"> ➡️ Get Instant updates for your App with Capgo</a></h2>
  <h2><a href="https://capgo.app/consulting/?ref=plugin_appsflyer"> Missing a feature? We’ll build the plugin for you 💪</a></h2>
</div>

AppsFlyer attribution and deep-linking support for Capacitor 8 apps, packaged in Capgo's plugin layout with CocoaPods and Swift Package Manager support.

This package is based on the official AppsFlyer Capacitor plugin and the Capacitor 8 / SPM update work from [AppsFlyerSDK/appsflyer-capacitor-plugin#185](https://github.com/AppsFlyerSDK/appsflyer-capacitor-plugin/pull/185).

Edit: the Capacitor 8 has been resolved you can now consider this fork deprecated.

## Documentation

The most complete doc is available here: https://capgo.app/docs/plugins/appsflyer/

## Compatibility

| Plugin version | Capacitor compatibility | Maintained |
| -------------- | ----------------------- | ---------- |
| v8.*.*         | v8.*.*                  | ✅         |

> **Note:** The major version of this plugin follows the major version of Capacitor. Use the version that matches your Capacitor installation.

## Install

```bash
bun add @capgo/capacitor-appsflyer
bunx cap sync
```

## Usage

```ts
import { AppsFlyer, AFConstants } from '@capgo/capacitor-appsflyer';

AppsFlyer.addListener(AFConstants.CONVERSION_CALLBACK, (event) => {
  console.log('AppsFlyer conversion event', event);
});

await AppsFlyer.initSDK({
  devKey: 'YOUR_DEV_KEY',
  appID: 'YOUR_IOS_APP_ID',
  registerConversionListener: true,
  registerOnDeepLink: true,
});
```

Call `initSDK()` as early as possible during app startup. Use `manualStart: true` if you want to separate initialization from `startSDK()`.

## Notes

- `appID` is required for iOS and should match your Apple App Store numeric app ID.
- Deep link callbacks are emitted through Capacitor listeners using the `AFConstants` channel names exported by the package.
- `disableSKAdNetwork()` is iOS-only and `disableAppSetId()` is Android-only.

## API

<docgen-index>

* [`addListener(AFConstants.CONVERSION_CALLBACK, ...)`](#addlistenerafconstantsconversion_callback-)
* [`addListener(AFConstants.OAOA_CALLBACK, ...)`](#addlistenerafconstantsoaoa_callback-)
* [`addListener(AFConstants.UDL_CALLBACK, ...)`](#addlistenerafconstantsudl_callback-)
* [`initSDK(...)`](#initsdk)
* [`startSDK()`](#startsdk)
* [`logEvent(...)`](#logevent)
* [`setCustomerUserId(...)`](#setcustomeruserid)
* [`setCurrencyCode(...)`](#setcurrencycode)
* [`updateServerUninstallToken(...)`](#updateserveruninstalltoken)
* [`setAppInviteOneLink(...)`](#setappinviteonelink)
* [`setOneLinkCustomDomain(...)`](#setonelinkcustomdomain)
* [`appendParametersToDeepLinkingURL(...)`](#appendparameterstodeeplinkingurl)
* [`setResolveDeepLinkURLs(...)`](#setresolvedeeplinkurls)
* [`addPushNotificationDeepLinkPath(...)`](#addpushnotificationdeeplinkpath)
* [`setSharingFilter(...)`](#setsharingfilter)
* [`setSharingFilterForAllPartners()`](#setsharingfilterforallpartners)
* [`setSharingFilterForPartners(...)`](#setsharingfilterforpartners)
* [`setAdditionalData(...)`](#setadditionaldata)
* [`getAppsFlyerUID()`](#getappsflyeruid)
* [`anonymizeUser(...)`](#anonymizeuser)
* [`stop(...)`](#stop)
* [`disableSKAdNetwork(...)`](#disableskadnetwork)
* [`disableAdvertisingIdentifier(...)`](#disableadvertisingidentifier)
* [`disableCollectASA(...)`](#disablecollectasa)
* [`setHost(...)`](#sethost)
* [`generateInviteLink(...)`](#generateinvitelink)
* [`validateAndLogInAppPurchaseAndroid(...)`](#validateandloginapppurchaseandroid)
* [`validateAndLogInAppPurchaseIos(...)`](#validateandloginapppurchaseios)
* [`getSdkVersion()`](#getsdkversion)
* [`enableFacebookDeferredApplinks(...)`](#enablefacebookdeferredapplinks)
* [`sendPushNotificationData(...)`](#sendpushnotificationdata)
* [`setCurrentDeviceLanguage(...)`](#setcurrentdevicelanguage)
* [`logCrossPromoteImpression(...)`](#logcrosspromoteimpression)
* [`setUserEmails(...)`](#setuseremails)
* [`logLocation(...)`](#loglocation)
* [`setPhoneNumber(...)`](#setphonenumber)
* [`setPartnerData(...)`](#setpartnerdata)
* [`logInvite(...)`](#loginvite)
* [`setDisableNetworkData(...)`](#setdisablenetworkdata)
* [`enableTCFDataCollection(...)`](#enabletcfdatacollection)
* [`setConsentData(...)`](#setconsentdata)
* [`logAdRevenue(...)`](#logadrevenue)
* [`setConsentDataV2(...)`](#setconsentdatav2)
* [`isSDKStarted()`](#issdkstarted)
* [`isSDKStopped()`](#issdkstopped)
* [`disableAppSetId()`](#disableappsetid)
* [`validateAndLogInAppPurchaseV2(...)`](#validateandloginapppurchasev2)
* [Interfaces](#interfaces)
* [Enums](#enums)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### addListener(AFConstants.CONVERSION_CALLBACK, ...)

```typescript
addListener(eventName: AFConstants.CONVERSION_CALLBACK, listenerFunc: (event: OnConversionDataResult) => void) => PluginListenerHandle
```

| Param              | Type                                                                                          |
| ------------------ | --------------------------------------------------------------------------------------------- |
| **`eventName`**    | <code><a href="#afconstants">AFConstants.CONVERSION_CALLBACK</a></code>                       |
| **`listenerFunc`** | <code>(event: <a href="#onconversiondataresult">OnConversionDataResult</a>) =&gt; void</code> |

**Returns:** <code><a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener(AFConstants.OAOA_CALLBACK, ...)

```typescript
addListener(eventName: AFConstants.OAOA_CALLBACK, listenerFunc: (event: OnAppOpenAttribution) => void) => PluginListenerHandle
```

| Param              | Type                                                                                      |
| ------------------ | ----------------------------------------------------------------------------------------- |
| **`eventName`**    | <code><a href="#afconstants">AFConstants.OAOA_CALLBACK</a></code>                         |
| **`listenerFunc`** | <code>(event: <a href="#onappopenattribution">OnAppOpenAttribution</a>) =&gt; void</code> |

**Returns:** <code><a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### addListener(AFConstants.UDL_CALLBACK, ...)

```typescript
addListener(eventName: AFConstants.UDL_CALLBACK, listenerFunc: (event: OnDeepLink) => void) => PluginListenerHandle
```

| Param              | Type                                                                  |
| ------------------ | --------------------------------------------------------------------- |
| **`eventName`**    | <code><a href="#afconstants">AFConstants.UDL_CALLBACK</a></code>      |
| **`listenerFunc`** | <code>(event: <a href="#ondeeplink">OnDeepLink</a>) =&gt; void</code> |

**Returns:** <code><a href="#pluginlistenerhandle">PluginListenerHandle</a></code>

--------------------


### initSDK(...)

```typescript
initSDK(options: AFInit) => Promise<AFRes>
```

Use this method to initialize and start AppsFlyer SDK. This API should be called as soon as the app launched.

| Param         | Type                                      |
| ------------- | ----------------------------------------- |
| **`options`** | <code><a href="#afinit">AFInit</a></code> |

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### startSDK()

```typescript
startSDK() => Promise<AFRes>
```

Use this method to start AppsFlyer SDK, only on manual start mode.

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### logEvent(...)

```typescript
logEvent(data: AFEvent) => Promise<AFRes>
```

Log an in-app event.

| Param      | Type                                        |
| ---------- | ------------------------------------------- |
| **`data`** | <code><a href="#afevent">AFEvent</a></code> |

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### setCustomerUserId(...)

```typescript
setCustomerUserId(cuid: AFCuid) => Promise<void>
```

Setting your own customer ID enables you to cross-reference your own unique ID with AppsFlyer's unique ID and other devices' IDs.
This ID is available in raw-data reports and in the Postback APIs for cross-referencing with your internal IDs.

| Param      | Type                                      |
| ---------- | ----------------------------------------- |
| **`cuid`** | <code><a href="#afcuid">AFCuid</a></code> |

--------------------


### setCurrencyCode(...)

```typescript
setCurrencyCode(currencyCode: AFCurrency) => Promise<void>
```

Sets the currency for in-app purchases. The currency code should be a 3 character ISO 4217 code

| Param              | Type                                              |
| ------------------ | ------------------------------------------------- |
| **`currencyCode`** | <code><a href="#afcurrency">AFCurrency</a></code> |

--------------------


### updateServerUninstallToken(...)

```typescript
updateServerUninstallToken(token: AFUninstall) => Promise<void>
```

(Android) Allows to pass GCM/FCM Tokens that where collected by third party plugins to the AppsFlyer server. Can be used for Uninstall log.
(iOS) Allows to pass APN Tokens that where collected by third party plugins to the AppsFlyer server. Can be used for log Uninstall.

| Param       | Type                                                |
| ----------- | --------------------------------------------------- |
| **`token`** | <code><a href="#afuninstall">AFUninstall</a></code> |

--------------------


### setAppInviteOneLink(...)

```typescript
setAppInviteOneLink(id: AFOnelinkID) => Promise<void>
```

Set the OneLink ID that should be used for attributing user-Invite. The link that is generated for the user invite will use this OneLink as the base link.

| Param    | Type                                                |
| -------- | --------------------------------------------------- |
| **`id`** | <code><a href="#afonelinkid">AFOnelinkID</a></code> |

--------------------


### setOneLinkCustomDomain(...)

```typescript
setOneLinkCustomDomain(domains: AFOnelinkDomain) => Promise<void>
```

In order for AppsFlyer SDK to successfully resolve hidden (decoded in shortlink ID) attribution parameters, any domain that is configured as a branded domain in the AppsFlyer Dashboard should be provided to this method.

| Param         | Type                                                        |
| ------------- | ----------------------------------------------------------- |
| **`domains`** | <code><a href="#afonelinkdomain">AFOnelinkDomain</a></code> |

--------------------


### appendParametersToDeepLinkingURL(...)

```typescript
appendParametersToDeepLinkingURL(data: AFAppendToDeepLink) => Promise<void>
```

Enables app owners using App Links for deep linking (without OneLink) to attribute sessions initiated via a domain associated with their app. Call this method before calling start.
You must provide the following parameters in the parameters Map:
pid
is_retargeting must be set to true

| Param      | Type                                                              |
| ---------- | ----------------------------------------------------------------- |
| **`data`** | <code><a href="#afappendtodeeplink">AFAppendToDeepLink</a></code> |

--------------------


### setResolveDeepLinkURLs(...)

```typescript
setResolveDeepLinkURLs(urls: AFUrls) => Promise<void>
```

Advertisers can wrap an AppsFlyer OneLink within another Universal Link. This Universal Link will invoke the app but any deep linking data will not propagate to AppsFlyer.
 setResolveDeepLinkURLs enables you to configure the SDK to resolve the wrapped OneLink URLs, so that deep linking can occur correctly.

| Param      | Type                                      |
| ---------- | ----------------------------------------- |
| **`urls`** | <code><a href="#afurls">AFUrls</a></code> |

--------------------


### addPushNotificationDeepLinkPath(...)

```typescript
addPushNotificationDeepLinkPath(path: AFPath) => Promise<void>
```

Configures how the SDK extracts deep link values from push notification payloads.

| Param      | Type                                      |
| ---------- | ----------------------------------------- |
| **`path`** | <code><a href="#afpath">AFPath</a></code> |

--------------------


### setSharingFilter(...)

```typescript
setSharingFilter(filters: AFFilters) => Promise<void>
```

Stops events from propagating to the specified AppsFlyer partners.

| Param         | Type                                            |
| ------------- | ----------------------------------------------- |
| **`filters`** | <code><a href="#affilters">AFFilters</a></code> |

--------------------


### setSharingFilterForAllPartners()

```typescript
setSharingFilterForAllPartners() => Promise<void>
```

Stops events from propagating to all AppsFlyer partners. Overwrites setSharingFilter.

--------------------


### setSharingFilterForPartners(...)

```typescript
setSharingFilterForPartners(filters: AFFilters) => Promise<void>
```

Stops events from propagating to the specified AppsFlyer partners.

| Param         | Type                                            |
| ------------- | ----------------------------------------------- |
| **`filters`** | <code><a href="#affilters">AFFilters</a></code> |

--------------------


### setAdditionalData(...)

```typescript
setAdditionalData(additionalData: AFData) => Promise<void>
```

Set additional data to be sent to AppsFlyer. See

| Param                | Type                                      |
| -------------------- | ----------------------------------------- |
| **`additionalData`** | <code><a href="#afdata">AFData</a></code> |

--------------------


### getAppsFlyerUID()

```typescript
getAppsFlyerUID() => Promise<AFUid>
```

Get AppsFlyer's unique device ID (created for every new install of an app).

**Returns:** <code>Promise&lt;<a href="#afuid">AFUid</a>&gt;</code>

--------------------


### anonymizeUser(...)

```typescript
anonymizeUser(anonymize: AFAnonymizeUser) => Promise<void>
```

End User Opt-Out from AppsFlyer analytics (Anonymize user data).

| Param           | Type                                                        |
| --------------- | ----------------------------------------------------------- |
| **`anonymize`** | <code><a href="#afanonymizeuser">AFAnonymizeUser</a></code> |

--------------------


### stop(...)

```typescript
stop(stop?: AFStop | undefined) => Promise<AFIsStopped>
```

Once this API is invoked, our SDK no longer communicates with our servers and stops functioning.
Useful when implementing user opt-in/opt-out.

| Param      | Type                                      |
| ---------- | ----------------------------------------- |
| **`stop`** | <code><a href="#afstop">AFStop</a></code> |

**Returns:** <code>Promise&lt;<a href="#afisstopped">AFIsStopped</a>&gt;</code>

--------------------


### disableSKAdNetwork(...)

```typescript
disableSKAdNetwork(stop: AFDisable) => Promise<void>
```

Opt-out of SKAdNetwork

| Param      | Type                                            |
| ---------- | ----------------------------------------------- |
| **`stop`** | <code><a href="#afdisable">AFDisable</a></code> |

--------------------


### disableAdvertisingIdentifier(...)

```typescript
disableAdvertisingIdentifier(stop: AFDisable) => Promise<void>
```

Disables collection of various Advertising IDs by the SDK. This includes Apple Identity for Advertisers (IDFA), Google Advertising ID (GAID), OAID and Amazon Advertising ID (AAID).

| Param      | Type                                            |
| ---------- | ----------------------------------------------- |
| **`stop`** | <code><a href="#afdisable">AFDisable</a></code> |

--------------------


### disableCollectASA(...)

```typescript
disableCollectASA(stop: AFDisable) => Promise<void>
```

Opt-out of Apple Search Ads attributions.

| Param      | Type                                            |
| ---------- | ----------------------------------------------- |
| **`stop`** | <code><a href="#afdisable">AFDisable</a></code> |

--------------------


### setHost(...)

```typescript
setHost(hostName: AFHost) => Promise<void>
```

Set a custom host.

| Param          | Type                                      |
| -------------- | ----------------------------------------- |
| **`hostName`** | <code><a href="#afhost">AFHost</a></code> |

--------------------


### generateInviteLink(...)

```typescript
generateInviteLink(params: AFLinkGenerator) => Promise<AFLink>
```

Allowing your existing users to invite their friends and contacts as new users to your app

| Param        | Type                                                        |
| ------------ | ----------------------------------------------------------- |
| **`params`** | <code><a href="#aflinkgenerator">AFLinkGenerator</a></code> |

**Returns:** <code>Promise&lt;<a href="#aflink">AFLink</a>&gt;</code>

--------------------


### validateAndLogInAppPurchaseAndroid(...)

```typescript
validateAndLogInAppPurchaseAndroid(purchaseData: AFAndroidInAppPurchase) => Promise<AFRes>
```

API for server verification of in-app purchases. An af_purchase event with the relevant values will be automatically logged if the validation is successful.

| Param              | Type                                                                      |
| ------------------ | ------------------------------------------------------------------------- |
| **`purchaseData`** | <code><a href="#afandroidinapppurchase">AFAndroidInAppPurchase</a></code> |

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### validateAndLogInAppPurchaseIos(...)

```typescript
validateAndLogInAppPurchaseIos(purchaseData: AFIosInAppPurchase) => Promise<AFRes>
```

| Param              | Type                                                              |
| ------------------ | ----------------------------------------------------------------- |
| **`purchaseData`** | <code><a href="#afiosinapppurchase">AFIosInAppPurchase</a></code> |

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### getSdkVersion()

```typescript
getSdkVersion() => Promise<AFRes>
```

Get the AppsFlyer SDK version used in app.

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### enableFacebookDeferredApplinks(...)

```typescript
enableFacebookDeferredApplinks(enable: AFFbDAL) => Promise<AFRes>
```

Enable the collection of Facebook Deferred AppLinks. Requires Facebook SDK and Facebook app on target/client device.
This API must be invoked before initializing the AppsFlyer SDK in order to function properly.

| Param        | Type                                        |
| ------------ | ------------------------------------------- |
| **`enable`** | <code><a href="#affbdal">AFFbDAL</a></code> |

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### sendPushNotificationData(...)

```typescript
sendPushNotificationData(payload: AFPushPayload) => Promise<void>
```

Measure and get data from push-notification campaigns.

| Param         | Type                                                    |
| ------------- | ------------------------------------------------------- |
| **`payload`** | <code><a href="#afpushpayload">AFPushPayload</a></code> |

--------------------


### setCurrentDeviceLanguage(...)

```typescript
setCurrentDeviceLanguage(language: AFLanguage) => Promise<AFRes>
```

Set the language of the device. The data will be displayed in Raw Data Reports

| Param          | Type                                              |
| -------------- | ------------------------------------------------- |
| **`language`** | <code><a href="#aflanguage">AFLanguage</a></code> |

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### logCrossPromoteImpression(...)

```typescript
logCrossPromoteImpression(data: AFPromotion) => Promise<AFRes>
```

logs an impression as part of a cross-promotion campaign. Make sure to use the promoted App ID as it appears within the AppsFlyer dashboard.

| Param      | Type                                                |
| ---------- | --------------------------------------------------- |
| **`data`** | <code><a href="#afpromotion">AFPromotion</a></code> |

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### setUserEmails(...)

```typescript
setUserEmails(emails: AFEmails) => Promise<AFRes>
```

Set the user emails and encrypt them.

| Param        | Type                                          |
| ------------ | --------------------------------------------- |
| **`emails`** | <code><a href="#afemails">AFEmails</a></code> |

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### logLocation(...)

```typescript
logLocation(latLng: AFLatLng) => Promise<AFRes>
```

Manually log the location of the user

| Param        | Type                                          |
| ------------ | --------------------------------------------- |
| **`latLng`** | <code><a href="#aflatlng">AFLatLng</a></code> |

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### setPhoneNumber(...)

```typescript
setPhoneNumber(phone: AFPhone) => Promise<AFRes>
```

Will be sent as an SHA-256 encrypted string.

| Param       | Type                                        |
| ----------- | ------------------------------------------- |
| **`phone`** | <code><a href="#afphone">AFPhone</a></code> |

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### setPartnerData(...)

```typescript
setPartnerData(data: AFPartnerData) => Promise<AFRes>
```

Allows sending custom data for partner integration purposes.

| Param      | Type                                                    |
| ---------- | ------------------------------------------------------- |
| **`data`** | <code><a href="#afpartnerdata">AFPartnerData</a></code> |

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### logInvite(...)

```typescript
logInvite(data: AFLogInvite) => Promise<AFRes>
```

Use to log a user-invite in-app event (af_invite).

| Param      | Type                                                |
| ---------- | --------------------------------------------------- |
| **`data`** | <code><a href="#afloginvite">AFLogInvite</a></code> |

**Returns:** <code>Promise&lt;<a href="#afres">AFRes</a>&gt;</code>

--------------------


### setDisableNetworkData(...)

```typescript
setDisableNetworkData(disable: AFDisable) => Promise<void>
```

Use to opt-out of collecting the network operator name (carrier) and sim operator name from the device.

| Param         | Type                                            | Description       |
| ------------- | ----------------------------------------------- | ----------------- |
| **`disable`** | <code><a href="#afdisable">AFDisable</a></code> | Defaults to false |

--------------------


### enableTCFDataCollection(...)

```typescript
enableTCFDataCollection(shouldEnableTCFDataCollection: AFEnableTCFDataCollection) => Promise<void>
```

Use to opt-in/out the automatic collection of consent data, for users who use a CMP.
Flag value will be persisted between app sessions.

| Param                               | Type                                                                            |
| ----------------------------------- | ------------------------------------------------------------------------------- |
| **`shouldEnableTCFDataCollection`** | <code><a href="#afenabletcfdatacollection">AFEnableTCFDataCollection</a></code> |

--------------------


### setConsentData(...)

```typescript
setConsentData(data: AFConsentData) => Promise<void>
```

Use to set user consent data manualy.
if your app doesn't use a CMP compatible with TCF v2.2, use the following method to manualy provide the consent data directly to the SDK.

| Param      | Type                                                    | Description                |
| ---------- | ------------------------------------------------------- | -------------------------- |
| **`data`** | <code><a href="#afconsentdata">AFConsentData</a></code> | : AppsFlyerConsent object. |

--------------------


### logAdRevenue(...)

```typescript
logAdRevenue(data: AFAdRevenueData) => Promise<void>
```

By attributing ad revenue, app owners gain the complete view of user LTV and campaign ROI.
Ad revenue is generated by displaying ads on rewarded videos, offer walls, interstitials, and banners in an app.
You can use this method to log your ad revenue.

| Param      | Type                                                        |
| ---------- | ----------------------------------------------------------- |
| **`data`** | <code><a href="#afadrevenuedata">AFAdRevenueData</a></code> |

--------------------


### setConsentDataV2(...)

```typescript
setConsentDataV2(options: AFConsentOptions) => Promise<void>
```

Use this to set user consent data manualy.
if your app doesn't use a CMP compatible with TCF v2.2, use the following method to manualy provide the consent data directly to the SDK.

| Param         | Type                                                          | Description                                                                                                                            |
| ------------- | ------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| **`options`** | <code><a href="#afconsentoptions">AFConsentOptions</a></code> | : <a href="#afconsentoptions">AFConsentOptions</a> that consists with all the possible options for consent collection, boolean params. |

--------------------


### isSDKStarted()

```typescript
isSDKStarted() => Promise<AFIsStarted>
```

Use this method to check whether the AppsFlyer SDK has already been started in the current session.

**Returns:** <code>Promise&lt;<a href="#afisstarted">AFIsStarted</a>&gt;</code>

--------------------


### isSDKStopped()

```typescript
isSDKStopped() => Promise<AFIsStopped>
```

Use this method to check whether the AppsFlyer SDK is currently stopped.

**Returns:** <code>Promise&lt;<a href="#afisstopped">AFIsStopped</a>&gt;</code>

--------------------


### disableAppSetId()

```typescript
disableAppSetId() => Promise<void>
```

Disables AppSet ID collection. If called before SDK init, App Set ID will not be collected.
If called after init, App Set ID will be collected but not sent in request payloads.
Android only.

--------------------


### validateAndLogInAppPurchaseV2(...)

```typescript
validateAndLogInAppPurchaseV2(data: AFPurchaseDetailsV2) => Promise<{ [key: string]: any; }>
```

API for server verification of in-app purchases V2.
An af_purchase event with the relevant values will be automatically logged if the validation is successful.

| Param      | Type                                                                | Description                                                           |
| ---------- | ------------------------------------------------------------------- | --------------------------------------------------------------------- |
| **`data`** | <code><a href="#afpurchasedetailsv2">AFPurchaseDetailsV2</a></code> | - Object containing purchaseDetails and optional additionalParameters |

**Returns:** <code>Promise&lt;{ [key: string]: any; }&gt;</code>

--------------------


### Interfaces


#### PluginListenerHandle

| Prop         | Type                                      |
| ------------ | ----------------------------------------- |
| **`remove`** | <code>() =&gt; Promise&lt;void&gt;</code> |


#### OnConversionDataResult

| Prop               | Type                |
| ------------------ | ------------------- |
| **`callbackName`** | <code>string</code> |
| **`errorMessage`** | <code>string</code> |
| **`data`**         | <code>any</code>    |


#### OnAppOpenAttribution

| Prop               | Type                |
| ------------------ | ------------------- |
| **`callbackName`** | <code>string</code> |
| **`errorMessage`** | <code>string</code> |
| **`data`**         | <code>any</code>    |


#### OnDeepLink

| Prop           | Type                |
| -------------- | ------------------- |
| **`status`**   | <code>string</code> |
| **`error`**    | <code>string</code> |
| **`deepLink`** | <code>any</code>    |


#### AFRes

| Prop      | Type                |
| --------- | ------------------- |
| **`res`** | <code>string</code> |


#### AFInit

| Prop                               | Type                 |
| ---------------------------------- | -------------------- |
| **`devKey`**                       | <code>string</code>  |
| **`appID`**                        | <code>string</code>  |
| **`isDebug`**                      | <code>boolean</code> |
| **`waitForATTUserAuthorization`**  | <code>number</code>  |
| **`registerConversionListener`**   | <code>boolean</code> |
| **`registerOnAppOpenAttribution`** | <code>boolean</code> |
| **`registerOnDeepLink`**           | <code>boolean</code> |
| **`useUninstallSandbox`**          | <code>boolean</code> |
| **`useReceiptValidationSandbox`**  | <code>boolean</code> |
| **`minTimeBetweenSessions`**       | <code>number</code>  |
| **`deepLinkTimeout`**              | <code>number</code>  |
| **`manualStart`**                  | <code>boolean</code> |


#### AFEvent

| Prop             | Type                |
| ---------------- | ------------------- |
| **`eventName`**  | <code>string</code> |
| **`eventValue`** | <code>any</code>    |


#### AFCuid

| Prop       | Type                |
| ---------- | ------------------- |
| **`cuid`** | <code>string</code> |


#### AFCurrency

| Prop               | Type                |
| ------------------ | ------------------- |
| **`currencyCode`** | <code>string</code> |


#### AFUninstall

| Prop        | Type                |
| ----------- | ------------------- |
| **`token`** | <code>string</code> |


#### AFOnelinkID

| Prop            | Type                |
| --------------- | ------------------- |
| **`onelinkID`** | <code>string</code> |


#### AFOnelinkDomain

| Prop          | Type                  |
| ------------- | --------------------- |
| **`domains`** | <code>string[]</code> |


#### AFAppendToDeepLink

| Prop             | Type                                            |
| ---------------- | ----------------------------------------------- |
| **`contains`**   | <code>string</code>                             |
| **`parameters`** | <code><a href="#stringmap">StringMap</a></code> |


#### StringMap


#### AFUrls

| Prop       | Type                  |
| ---------- | --------------------- |
| **`urls`** | <code>string[]</code> |


#### AFPath

| Prop       | Type                  |
| ---------- | --------------------- |
| **`path`** | <code>string[]</code> |


#### AFFilters

| Prop          | Type                  |
| ------------- | --------------------- |
| **`filters`** | <code>string[]</code> |


#### AFData

| Prop                 | Type             |
| -------------------- | ---------------- |
| **`additionalData`** | <code>any</code> |


#### AFUid

| Prop      | Type                |
| --------- | ------------------- |
| **`uid`** | <code>string</code> |


#### AFAnonymizeUser

| Prop                | Type                 |
| ------------------- | -------------------- |
| **`anonymizeUser`** | <code>boolean</code> |


#### AFIsStopped

| Prop            | Type                 |
| --------------- | -------------------- |
| **`isStopped`** | <code>boolean</code> |


#### AFStop

| Prop       | Type                 |
| ---------- | -------------------- |
| **`stop`** | <code>boolean</code> |


#### AFDisable

| Prop                | Type                 |
| ------------------- | -------------------- |
| **`shouldDisable`** | <code>boolean</code> |


#### AFHost

| Prop                 | Type                |
| -------------------- | ------------------- |
| **`hostPrefixName`** | <code>string</code> |
| **`hostName`**       | <code>string</code> |


#### AFLink

| Prop       | Type                |
| ---------- | ------------------- |
| **`link`** | <code>string</code> |


#### AFLinkGenerator

| Prop                     | Type                                            |
| ------------------------ | ----------------------------------------------- |
| **`brandDomain`**        | <code>string</code>                             |
| **`campaign`**           | <code>string</code>                             |
| **`channel`**            | <code>string</code>                             |
| **`referrerName`**       | <code>string</code>                             |
| **`referrerImageURL`**   | <code>string</code>                             |
| **`referrerCustomerId`** | <code>string</code>                             |
| **`baseDeeplink`**       | <code>string</code>                             |
| **`addParameters`**      | <code><a href="#stringmap">StringMap</a></code> |


#### AFAndroidInAppPurchase

| Prop               | Type                |
| ------------------ | ------------------- |
| **`publicKey`**    | <code>string</code> |
| **`signature`**    | <code>string</code> |
| **`purchaseData`** | <code>string</code> |
| **`price`**        | <code>string</code> |


#### AFIosInAppPurchase

| Prop                | Type                |
| ------------------- | ------------------- |
| **`inAppPurchase`** | <code>string</code> |
| **`price`**         | <code>string</code> |
| **`transactionId`** | <code>string</code> |


#### AFFbDAL

| Prop                    | Type                 |
| ----------------------- | -------------------- |
| **`enableFacebookDAL`** | <code>boolean</code> |


#### AFPushPayload

| Prop              | Type                                            |
| ----------------- | ----------------------------------------------- |
| **`pushPayload`** | <code><a href="#stringmap">StringMap</a></code> |


#### AFLanguage

| Prop           | Type                |
| -------------- | ------------------- |
| **`language`** | <code>string</code> |


#### AFPromotion

| Prop             | Type                                            |
| ---------------- | ----------------------------------------------- |
| **`appID`**      | <code>string</code>                             |
| **`campaign`**   | <code>string</code>                             |
| **`parameters`** | <code><a href="#stringmap">StringMap</a></code> |


#### AFEmails

| Prop         | Type                  |
| ------------ | --------------------- |
| **`emails`** | <code>string[]</code> |
| **`encode`** | <code>boolean</code>  |


#### AFLatLng

| Prop            | Type                |
| --------------- | ------------------- |
| **`latitude`**  | <code>number</code> |
| **`longitude`** | <code>number</code> |


#### AFPhone

| Prop        | Type                |
| ----------- | ------------------- |
| **`phone`** | <code>string</code> |


#### AFPartnerData

| Prop            | Type                |
| --------------- | ------------------- |
| **`data`**      | <code>any</code>    |
| **`partnerId`** | <code>string</code> |


#### AFLogInvite

| Prop                  | Type                                            |
| --------------------- | ----------------------------------------------- |
| **`eventParameters`** | <code><a href="#stringmap">StringMap</a></code> |
| **`channel`**         | <code>string</code>                             |


#### AFEnableTCFDataCollection

| Prop                                | Type                 |
| ----------------------------------- | -------------------- |
| **`shouldEnableTCFDataCollection`** | <code>boolean</code> |


#### AFConsentData

| Prop       | Type                                                            |
| ---------- | --------------------------------------------------------------- |
| **`data`** | <code><a href="#iappsflyerconsent">IAppsFlyerConsent</a></code> |


#### IAppsFlyerConsent

| Prop                                  | Type                 |
| ------------------------------------- | -------------------- |
| **`isUserSubjectToGDPR`**             | <code>boolean</code> |
| **`hasConsentForDataUsage`**          | <code>boolean</code> |
| **`hasConsentForAdsPersonalization`** | <code>boolean</code> |


#### AFAdRevenueData

| Prop                       | Type                                                          |
| -------------------------- | ------------------------------------------------------------- |
| **`monetizationNetwork`**  | <code>string</code>                                           |
| **`mediationNetwork`**     | <code><a href="#mediationnetwork">MediationNetwork</a></code> |
| **`currencyIso4217Code`**  | <code>string</code>                                           |
| **`revenue`**              | <code>number</code>                                           |
| **`additionalParameters`** | <code><a href="#stringmap">StringMap</a></code>               |


#### AFConsentOptions

| Prop                                  | Type                         |
| ------------------------------------- | ---------------------------- |
| **`isUserSubjectToGDPR`**             | <code>boolean \| null</code> |
| **`hasConsentForDataUsage`**          | <code>boolean \| null</code> |
| **`hasConsentForAdsPersonalization`** | <code>boolean \| null</code> |
| **`hasConsentForAdStorage`**          | <code>boolean \| null</code> |


#### AFIsStarted

| Prop            | Type                 |
| --------------- | -------------------- |
| **`isStarted`** | <code>boolean</code> |


#### AFPurchaseDetailsV2

| Prop                       | Type                                                            |
| -------------------------- | --------------------------------------------------------------- |
| **`purchaseDetails`**      | <code><a href="#afpurchasedetails">AFPurchaseDetails</a></code> |
| **`additionalParameters`** | <code><a href="#stringmap">StringMap</a></code>                 |


#### AFPurchaseDetails

| Prop                | Type                                                      |
| ------------------- | --------------------------------------------------------- |
| **`purchaseType`**  | <code><a href="#afpurchasetype">AFPurchaseType</a></code> |
| **`purchaseToken`** | <code>string</code>                                       |
| **`productId`**     | <code>string</code>                                       |


### Enums


#### AFConstants

| Members                       | Value                                  |
| ----------------------------- | -------------------------------------- |
| **`onConversionDataSuccess`** | <code>'onConversionDataSuccess'</code> |
| **`onConversionDataFail`**    | <code>'onConversionDataFail'</code>    |
| **`onAppOpenAttribution`**    | <code>'onAppOpenAttribution'</code>    |
| **`onAttributionFailure`**    | <code>'onAttributionFailure'</code>    |
| **`CONVERSION_CALLBACK`**     | <code>'conversion_callback'</code>     |
| **`OAOA_CALLBACK`**           | <code>'oaoa_callback'</code>           |
| **`UDL_CALLBACK`**            | <code>'udl_callback'</code>            |


#### MediationNetwork

| Members                           | Value                                      |
| --------------------------------- | ------------------------------------------ |
| **`IRONSOURCE`**                  | <code>'ironsource'</code>                  |
| **`APPLOVIN_MAX`**                | <code>'applovin_max'</code>                |
| **`GOOGLE_ADMOB`**                | <code>'google_admob'</code>                |
| **`FYBER`**                       | <code>'fyber'</code>                       |
| **`APPODEAL`**                    | <code>'appodeal'</code>                    |
| **`ADMOST`**                      | <code>'admost'</code>                      |
| **`TOPON`**                       | <code>'topon'</code>                       |
| **`TRADPLUS`**                    | <code>'tradplus'</code>                    |
| **`YANDEX`**                      | <code>'yandex'</code>                      |
| **`CHARTBOOST`**                  | <code>'chartboost'</code>                  |
| **`UNITY`**                       | <code>'unity'</code>                       |
| **`TOPON_PTE`**                   | <code>'topon_pte'</code>                   |
| **`CUSTOM_MEDIATION`**            | <code>'custom_mediation'</code>            |
| **`DIRECT_MONETIZATION_NETWORK`** | <code>'direct_monetization_network'</code> |


#### AFPurchaseType

| Members               | Value                            |
| --------------------- | -------------------------------- |
| **`oneTimePurchase`** | <code>'one_time_purchase'</code> |
| **`subscription`**    | <code>'subscription'</code>      |

</docgen-api>
