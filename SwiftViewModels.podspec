Pod::Spec.new do |s|
  s.name             = 'SwiftViewModels'
  s.version          = '0.2.0'
  s.summary          = 'Reusable view models written in Swift'

  s.description      = <<-DESC
Basic view models that simplify usage and view model composition.
                       DESC

  s.homepage         = 'https://github.com/Rep2/SwiftViewModels'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ivan Rep' => 'ivan.rep2@gmail.com' }
  s.source           = { :git => 'https://github.com/Rep2/SwiftViewModels.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'SwiftViewModels/**/*'
  s.swift_version = '4.1'
end
