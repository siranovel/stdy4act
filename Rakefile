require 'rake/javaextensiontask'

gemspec = Gem::Specification.load('hellojava.gemspec')
Rake::JavaExtensionTask.new(name=gemspec.name, gem_spec=gemspec)  do | ext |
  ext.source_version  = '11'
  ext.target_version  = '11'
end

task :default => [:compile]
