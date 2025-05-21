Gem::Specification.new do |s|
  s.name          = 'hellojava'
  s.version       = '0.1.1'
  s.date          = '2025-05-15'
  s.summary       = "hello jruby"
  s.description   = "call from jruby to java."
  s.authors       = ["siranovel"]
  s.email         = "siranovel@gmail.com"
  s.homepage      = "http://github.com/siranovel/stdy4act"
  s.metadata      = {
    'allow_push_host' => 'https://rubygems.pkg.github.com/siranovel'
  }
  s.license       = "MIT"
  s.required_ruby_version = ">= 3.0"
  s.files         = ["LICENSE", "Gemfile", "CHANGELOG.md"]
  s.files         += Dir.glob("{lib,ext}/**/*")
  s.extensions  = %w[Rakefile]
  s.add_dependency 'rake', '~> 13', '>= 13.0.6'
  s.add_development_dependency 'rake-compiler', '~> 1.3', '>= 1.3.0'
end

