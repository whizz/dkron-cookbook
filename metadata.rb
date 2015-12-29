name             "dkron"
maintainer       "Michal Taborsky"
maintainer_email "michal@taborsky.cz"
license          "Apache 2.0"
description      "Installs and configures dkron server or agent"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2.2"

depends 'ark', '~> 0.9'
depends 'runit', '~> 1.7'

supports 'redhat'
supports 'centos'
supports 'debian'
supports 'ubuntu'