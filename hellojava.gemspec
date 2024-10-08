Gem::Specification.new do |s|
  s.name          = 'hellojava'
  s.version       = '0.0.15'
  s.date          = '2024-10-07'
  s.summary       = "hello jruby"
  s.description   = "call from jruby to java."
  s.platform      = 'java'
  s.authors       = ["siranovel"]
  s.email         = "siranovel@gmail.com"
  s.homepage      = "http://github.com/siranovel/stdy4act"
  s.license       = "MIT"
  s.files         = ["LICENSE", "Gemfile", "CHANGELOG.md"]
  s.files         += Dir.glob("{lib,ext}/**/*")
  s.extensions  = %w[Rakefile]
  s.metadata = {
    "rubygems_mfa_required" => "true",
  }
  s.add_development_dependency 'rake', '~> 12.3', '>= 12.3.3'
  s.add_development_dependency 'rake-compiler', '~> 1.2', '>= 1.2.5'
end

