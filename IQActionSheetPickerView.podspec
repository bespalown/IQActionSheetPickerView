Pod::Spec.new do |s|
  s.name     = 'IQActionSheetPickerView'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'ActionSheet with UIPickerView'
  s.homepage = 'https://github.com/bespalown/IQActionSheetPickerView'
  s.author   = { 'Viktor Bespalov' => 'bespalown@gmail.com' }
  s.source   = { :git => 'https://github.com/bespalown/IQActionSheetPickerView.git', :branch => 'master' }
  s.platform = :ios
  s.source_files = 'IQActionSheetPickerView/IQActionSheetPicker.{h,m}'
end