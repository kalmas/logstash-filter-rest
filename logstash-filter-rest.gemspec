Gem::Specification.new do |s|
  s.name = 'logstash-filter-rest'
  s.version = '0.5.0'
  s.licenses = ['Apache License (2.0)']
  s.summary = 'This filter requests data from a RESTful Web Service.'
  s.description = 'This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program'
  s.authors = ['Lucas Henning', 'Gandalf Buscher']
  s.email = 'mail@hurb.de'
  s.homepage = 'https://github.com/lucashenning/logstash-filter-rest/'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { 'logstash_plugin' => 'true', 'logstash_group' => 'filter' }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core-plugin-api', '>= 1.60', '<= 2.99'
  s.add_runtime_dependency 'logstash-mixin-http_client', '>= 2.2.4', '< 5.0.0'

  s.add_development_dependency 'logstash-devutils', '~> 0'
end
