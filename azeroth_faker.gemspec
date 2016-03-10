# coding
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'azeroth_faker/version'


Gem::Specification.new do |spec|
  spec.name        = "azeroth_faker"
  spec.version     = azeroth_faker::VERSION
  spec.author      = ["Ganesh Balaji"]
  spec.email       = ["ganeshkbalaji0112@gmail.com"]
  spec.licenses    = ['MIT']
  spec.homepage    = 'https://github.com/ganeshkbalaji/azeroth_faker'
  spec.summary     = %q(Generate fake data from Azeroth and the Warcraft universe)
  spec.description = %q(Faker for data from the Warcraft Universe)
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end