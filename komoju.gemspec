# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'komoju/version'

Gem::Specification.new do |spec|
  spec.name          = "komoju"
  spec.version       = Komoju::VERSION
  spec.authors       = ["Richard Ramsden"]
  spec.email         = ["richard@rramsden.ca"]
  spec.summary       = "[DEPRECATED] Komoju Ruby Bindings — use komoju-sdk instead"
  spec.description   = "[DEPRECATED] These are the legacy Ruby bindings for the Komoju API. " \
                       "This gem is no longer maintained. Please use komoju-sdk: https://github.com/komoju/komoju-ruby-sdk"
  spec.homepage      = "https://komoju.com"
  spec.license       = "MIT"

  spec.post_install_message = <<~MSG
    ============================================================
    DEPRECATION NOTICE
    The 'komoju' gem is deprecated and no longer maintained.
    Please migrate to the new KOMOJU Ruby SDK:
      Gem:   komoju-sdk
      Repo:  https://github.com/komoju/komoju-ruby-sdk
    ============================================================
  MSG

  spec.files         = `git ls-files -z`.split("\x0") + Dir.glob("vendor/**/**.rb")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'heroics'
  spec.add_dependency 'moneta'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency 'minitest', '4.7.5'
  spec.add_development_dependency 'turn'
end
