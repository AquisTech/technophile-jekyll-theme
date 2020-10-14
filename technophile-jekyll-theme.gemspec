# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "technophile-jekyll-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["AquisTech"]
  spec.email         = ["anand.bait@gmail.com"]

  spec.summary       = "This is a Jekyll theme for setting up your portfolio including resume, blog, online store."
  spec.homepage      = "https://github.com/AquisTech/technophile-jekyll-theme"
  spec.license       = "MIT"

  spec.files                   = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(data|includes|layouts|sass)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown)|$)))}i)
  end
  spec.add_runtime_dependency 'jekyll', '~> 4.1'
  spec.add_runtime_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'jquery-rails', '~> 4.4.0'
  spec.add_development_dependency 'bootstrap', '~> 4.5.0'
  spec.add_runtime_dependency 'jekyll-sitemap', '~> 1.4.0'
  spec.add_runtime_dependency 'jekyll-feed', '~> 0.13.0'
  spec.add_runtime_dependency 'jekyll-seo-tag', '~> 2.6.1'
end
