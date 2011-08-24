PKG_VERSION = '1.0.2'
PKG_FILES   = Dir['lib/**/*.rb']

$spec = Gem::Specification.new do |s|
  s.name = 'htmlgun'
  s.version = PKG_VERSION
  s.summary = ""
  s.description = <<EOS
EOS
  
  s.files = PKG_FILES.to_a
  s.has_rdoc = false
  s.authors  = ["Paul Santa Clara"]
  s.email    = "kesserich1@gmail.com"
  s.homepage = ""
  s.add_dependency('mail')
end



