Gem::Specification.new do |s|
  s.name        = 'sms-gateway-hub'
  s.version     = '0.0.1'
  s.authors     = ["Yajuvendra Sapna Tomar"]
  s.date        = '2015-01-24'
  s.summary     = "SMSEasy allows you to send text messages to a mobile recipient"
  s.description = "MSGatewayHub is rails wrapper for smsgatewayhub.com"
s.license       = "MIT"
  s.homepage = "https://github.com/YSTomar/sms-gateway-hub"
s.post_install_message = "Thanks for installing it"

  s.add_dependency "httparty" , '~> 0'

  s.files =  Dir.glob("{lib}/**/*")
  s.files += %w(sms-gateway-hub.gemspec)
  s.require_path = "lib"
end
