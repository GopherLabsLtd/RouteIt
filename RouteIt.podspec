Pod::Spec.new do |s|
  s.name         = "RouteIt"
  s.version      = "1.0.0"
  s.summary      = "Routing Abstraction Layer written in Swift"
  s.description  = <<-EOS
  RouteIt abstracts Routing commands using Swift Generics to provide developers
  with more compile-time confidence.
  EOS
  s.homepage     = "https://github.com/GopherLabsLtd/RouteIt"
  s.license      = { :type => "MIT", :file => "License.md" }
  s.author             = { "Alex Nguyen" => "hello@gopher.it" }
  s.social_media_url   = "http://gopher.it/"
  s.platform = :ios, "9.1"
  s.source       = { :git => "https://github.com/GopherLabsLtd/RouteIt.git", :tag => s.version }
  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files  = "RouteIt/"
    ss.framework  = "Foundation"
  end
end