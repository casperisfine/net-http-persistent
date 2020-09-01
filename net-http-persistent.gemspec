# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'net-http-persistent'
  spec.version       = '4.0.0'
  spec.authors       = ['Eric Hodel']
  spec.email         = ['drbrain@segment7.net']
  spec.summary       = %q{Manages persistent connections using Net::HTTP }
  spec.homepage      = 'https://github.com/drbrain/net-http-persistent'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.3'

  spec.add_runtime_dependency 'connection_pool', '~> 2.2'
end
