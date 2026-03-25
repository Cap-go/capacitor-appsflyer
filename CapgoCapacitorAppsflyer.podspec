require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))
Pod::Spec.new do |s|
  s.name = 'CapgoCapacitorAppsflyer'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['homepage']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/Sources/AppsFlyerPlugin/**/*.{swift}'
  s.static_framework = true
  s.ios.deployment_target = '15.0'
  s.dependency 'Capacitor'
  s.swift_version = '5.9'

  if defined?($AppsFlyerStrictMode)
    Pod::UI.puts "#{s.name}: Using AppsFlyerFramework/Strict mode"
    s.dependency 'AppsFlyerFramework/Strict', package['iosSdkVersion']
    s.xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) AFSDK_NO_IDFA' }
  else
    Pod::UI.puts "#{s.name}: Using default AppsFlyerFramework"
    Pod::UI.puts "#{s.name}: Set `$AppsFlyerStrictMode=true` in your Podfile to avoid IDFA collection for kids apps."
    s.dependency 'AppsFlyerFramework', package['iosSdkVersion']
  end
end
