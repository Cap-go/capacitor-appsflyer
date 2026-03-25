import './style.css';
import { AppsFlyer } from '@capgo/capacitor-appsflyer';

const output = document.getElementById('plugin-output');
const statusBadge = document.getElementById('status-badge');
const initButton = document.getElementById('init-sdk');
const startButton = document.getElementById('start-sdk');
const sdkVersionButton = document.getElementById('get-sdk-version');
const refreshButton = document.getElementById('refresh-start-state');

const setOutput = (value) => {
  output.textContent = typeof value === 'string' ? value : JSON.stringify(value, null, 2);
};

const setStatus = (started) => {
  statusBadge.textContent = started ? 'Started' : 'Not started';
  statusBadge.dataset.enabled = String(started);
};

const refreshStatus = async () => {
  try {
    const result = await AppsFlyer.isSDKStarted();
    setStatus(result.isStarted);
    setOutput(result);
  } catch (error) {
    setOutput(`Error: ${error?.message ?? error}`);
  }
};

initButton.addEventListener('click', async () => {
  try {
    const result = await AppsFlyer.initSDK({
      devKey: 'YOUR_DEV_KEY',
      appID: 'YOUR_IOS_APP_ID',
      registerConversionListener: true,
      registerOnDeepLink: true,
      manualStart: true,
    });
    setOutput(result);
  } catch (error) {
    setOutput(`Error: ${error?.message ?? error}`);
  }
});

startButton.addEventListener('click', async () => {
  try {
    const result = await AppsFlyer.startSDK();
    setStatus(true);
    setOutput(result);
  } catch (error) {
    setOutput(`Error: ${error?.message ?? error}`);
  }
});

refreshButton.addEventListener('click', refreshStatus);

sdkVersionButton.addEventListener('click', async () => {
  try {
    const result = await AppsFlyer.getSdkVersion();
    setOutput(result);
  } catch (error) {
    setOutput(`Error: ${error?.message ?? error}`);
  }
});

refreshStatus();
