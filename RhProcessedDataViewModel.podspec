#
# Be sure to run `pod lib lint RhProcessedDataViewModel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RhProcessedDataViewModel'
  s.version          = '0.1.1'
  s.summary          = 'Getting data from Network, Process and Propagate'
  s.swift_version = ['4.0', '4.2','5.0','5.1']
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        Model: DataLoader, DataCachedLoader
                        ViewModel: ProcessedDataLoader
                        Command: ProcessingCommand
                       DESC

  s.homepage         = 'https://github.com/JCSooHwanCho/RhProcessedDataViewModel'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JCSooHwanCho' => 'chh0107@gmail.com' }
  s.source           = { :git => 'https://github.com/JCSooHwanCho/RhProcessedDataViewModel.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'RhProcessedDataViewModel/Classes/**/*'
  s.ios.dependency 'RxSwift', '~> 5'
  s.ios.dependency 'RxRelay', '~> 5'

end
