# Example App for `@capgo/capacitor-appsflyer`

This Vite project links directly to the local plugin source so you can validate AppsFlyer initialization, startup, and SDK-version calls while developing.

## Getting started

```bash
bun install
bun run start
```

To test on native shells:

```bash
bunx cap add ios
bunx cap add android
bunx cap sync
```

Fill in your real `devKey` and iOS `appID` in [`src/main.js`](./src/main.js) before testing native startup flows.
