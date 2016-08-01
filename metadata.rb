name 'dkron'
maintainer 'Michal Taborsky'
maintainer_email 'michal.taborsky@mall.cz'
license 'Apache 2.0'
description 'Installs and configures dkron server or agent'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.3.1'
source_url 'https://gitlab.com/nrh/dkron-cookbook'
issues_url 'https://gitlab.com/nrh/dkron-cookbook/issues'

depends 'ark', '~> 1.0'
depends 'runit', '~> 1.7'

supports 'redhat'
supports 'centos'
supports 'amazon'
supports 'scientific'
supports 'debian'
supports 'ubuntu'
