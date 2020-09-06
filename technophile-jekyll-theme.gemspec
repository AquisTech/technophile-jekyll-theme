# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "technophile-jekyll-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["AquisTech"]
  spec.email         = ["anand.bait@gmail.com"]

  spec.summary       = "This is a Jekyll theme for setting up your portfolio including resume, blog, online store."
  spec.homepage      = "https://github.com/AquisTech/technophile-jekyll-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.1"
end
