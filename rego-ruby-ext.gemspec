# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rego-ruby-ext}
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Tkachev"]
  s.date = %q{2011-09-15}
  s.description = %q{Ruby core extensions that are common for all ReGO projects}
  s.email = %q{tkachev.alex@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "init.rb",
    "lib/boolean.rb",
    "lib/date.rb",
    "lib/enumerable.rb",
    "lib/hash.rb",
    "lib/nil.rb",
    "lib/numeric.rb",
    "lib/rego-ruby-ext.rb",
    "lib/string-interpolation.rb",
    "lib/string.rb",
    "lib/symbol.rb",
    "lib/time.rb",
    "rego-ruby-ext.gemspec",
    "spec/boolean_spec.rb",
    "spec/date_spec.rb",
    "spec/enumerable_spec.rb",
    "spec/hash_spec.rb",
    "spec/nil_spec.rb",
    "spec/numeric_spec.rb",
    "spec/rego-ruby-ext_spec.rb",
    "spec/spec_helper.rb",
    "spec/string_interpolation_spec.rb",
    "spec/string_spec.rb",
    "spec/symbol_spec.rb",
    "spec/time_spec.rb"
  ]
  s.homepage = %q{http://github.com/alextk/rego-ruby-ext}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Some basic ruby core classes extensions with tests}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

