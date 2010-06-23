# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{nice_scaffold}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Artur Ma\305\202ecki"]
  s.date = %q{2010-06-23}
  s.description = %q{Rails scaffold.}
  s.email = %q{seeweer@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc", "Rakefile", "generators/nice_scaffold/nice_scaffold_generator.rb", "generators/nice_scaffold/templates/controller.rb", "generators/nice_scaffold/templates/model.rb", "generators/nice_scaffold/templates/views/_form.html.haml.rb", "generators/nice_scaffold/templates/views/edit.html.haml.rb", "generators/nice_scaffold/templates/views/index.html.haml.rb", "generators/nice_scaffold/templates/views/new.html.haml.rb", "generators/nice_scaffold/templates/views/show.html.haml.rb", "nice_scaffold.gemspec", "Manifest"]
  s.homepage = %q{http://github.com/seeweer/nice_scaffold}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Nice_scaffold", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{nice_scaffold}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Rails scaffold.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
