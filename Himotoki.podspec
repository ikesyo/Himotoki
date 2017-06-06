Pod::Spec.new do |s|
  s.name         = "Himotoki"
  s.version      = "3.1.0"
  s.summary      = "A type-safe JSON decoding library purely written in Swift"
  s.description  = <<-DESC
Himotoki (紐解き) is a type-safe JSON decoding library purely written in Swift. This library is highly inspired by popular JSON parsing libraries in Swift: [Argo](https://github.com/thoughtbot/Argo) and [ObjectMapper](https://github.com/Hearst-DD/ObjectMapper).

_Himotoki_ has the same meaning of 'decoding' in Japanese.

- Just do JSON decoding (deserialization) well. JSON encoding (serialization) would not be supported going forward. :wink:
- Much simpler API.
- Fail-fast conditional model building. This is useful for some `struct`s with non-optional `let` properties.
- No external dependencies.
DESC
  s.homepage     = "https://github.com/ikesyo/Himotoki"
  s.license      = "MIT"
  s.author             = { "Syo Ikeda" => "suicaicoca@gmail.com" }
  s.social_media_url   = "https://twitter.com/ikesyo"

  s.osx.deployment_target = "10.9"
  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"
  s.source       = { :git => "https://github.com/ikesyo/Himotoki.git", :tag => s.version }
  s.source_files  = "Sources/**/*.swift"
  s.requires_arc = true
end
