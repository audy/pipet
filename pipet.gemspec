# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pipet"
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Austin Richardson"]
  s.date = "2013-07-18"
  s.description = "Pipet is a package manager for bioinformatics databases that allows users to easily retrieve databases from their sources using the command line. Pipet also checks for database integrity via checksum"
  s.email = "harekrishna@gmail.com"
  s.files = [
    ".rspec",
    ".rvmrc",
    "Gemfile",
    "Rakefile",
    "VERSION",
    "lib/pipet.rb",
    "readme.md",
    "spec/.pipet_spec.rb.swp",
    "spec/pipet_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/audy/pipet"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "package manager for bioinformatics databases"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["= 2.14.1"])
      s.add_development_dependency(%q<bundler>, ["= 1.3.5"])
      s.add_development_dependency(%q<jeweler>, ["= 1.8.6"])
    else
      s.add_dependency(%q<rspec>, ["= 2.14.1"])
      s.add_dependency(%q<bundler>, ["= 1.3.5"])
      s.add_dependency(%q<jeweler>, ["= 1.8.6"])
    end
  else
    s.add_dependency(%q<rspec>, ["= 2.14.1"])
    s.add_dependency(%q<bundler>, ["= 1.3.5"])
    s.add_dependency(%q<jeweler>, ["= 1.8.6"])
  end
end

