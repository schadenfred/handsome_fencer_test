
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "handsome_fencer_test/version"

Gem::Specification.new do |spec|
  spec.name          = "handsome_fencer_test"
  spec.version       = HandsomeFencerTest::VERSION
  spec.authors       = ["schadenfred"]
  spec.email         = ["fred.schoeneman@gmail.com"]

  spec.summary       = %q{engine for common adminstration cases.}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


    spec.add_dependency "bundler"
    spec.add_dependency "thor"
    spec.add_dependency "rake"
    spec.add_dependency "minitest-rails-capybara"
    spec.add_dependency "minitest-nyan-cat"
    spec.add_dependency "minitest-given"
    spec.add_dependency "launchy"
    spec.add_dependency "guard"
    spec.add_dependency "guard-minitest"
    spec.add_dependency "guard-livereload"
    spec.add_dependency "rack-livereload"
    spec.add_dependency "database_cleaner"
    spec.add_dependency "byebug"
    spec.add_dependency "better_errors"
    spec.add_dependency "binding_of_caller"
    spec.add_dependency "capybara-webkit"
end
