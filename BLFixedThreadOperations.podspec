Pod::Spec.new do |s|
  s.name             = "BLFixedThreadOperations"
  s.version          = "0.1.0"
  s.summary          = "A wrapper around NSThread to mimic NSOperationQueues, but make them work with a single thread."

  s.description      = <<-DESC
A wrapper around NSThread to mimic NSOperationQueues, but make them work with a single thread.
The main purpose of this library is to create a familiar interface (based on NSOperations) to handle NSThreads. This is particularly handy when dealing with other non-thread-safe libraries that cannot be handled by dispatch queues or NSOperationQueues.
                       DESC

  s.homepage         = "https://github.com/BellAppLab/BLFixedThreadOperations"
  s.license          = 'MIT'
  s.author           = { "Bell App Lab" => "apps@bellapplab.com" }
  s.source           = { :git => "https://github.com/BellAppLab/BLFixedThreadOperations.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/BellAppLab'

  s.ios.deployment_target   = '8.0'
  s.osx.deployment_target   = '10.10'

  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.frameworks = 'Foundation'
end
