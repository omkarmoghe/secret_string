# frozen_string_literal: true

require_relative "lib/secret_string/version"

Gem::Specification.new do |spec|
  spec.name          = "secret_string"
  spec.version       = SecretString::VERSION
  spec.authors       = ["Omkar Moghe"]
  spec.email         = ["omoghe@umich.edu"]

  spec.summary       = "A pure Ruby replacement for `String` to prevent leaking sensitive data."
  spec.homepage      = "https://github.com/omkarmoghe/secret-string"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  # spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/omkarmoghe/secret-string"
  spec.metadata["changelog_uri"] = "https://github.com/omkarmoghe/secret-string/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rubocop-minitest"
end
