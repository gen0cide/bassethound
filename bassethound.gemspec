# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bassethound/version'

Gem::Specification.new do |spec|
  spec.name          = "bassethound"
  spec.version       = Bassethound::VERSION
  spec.authors       = ["Alex Levinson"]
  spec.email         = ["gen0cide.threats@gmail.com"]

  spec.summary       = %q{This gem provides an API to check whether email addresses are valid.}
  spec.description   = %q{Using basic ESMTP functions, this gem attempts to confirm whether a given email address exists on the webserver.}
  spec.homepage      = "https://github.com/gen0cide-/bassethound"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
