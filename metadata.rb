name             'litaio_base'
maintainer       'Jimmy Cuadra'
maintainer_email 'jimmy@jimmycuadra.com'
license          'MIT'
description      'Standard configuration for all lita.io servers'
long_description File.read(File.expand_path('../README.md', __FILE__))
version          '0.1.0'

supports 'ubuntu'

depends 'apt', '>= 2.6'
depends 'docker', '>= 0.35.2'
depends 'hostname', '>= 0.3'
depends 'ntp', '>= 1.6.5'
depends 'openssh', '>= 1.3.4'
depends 'sudo', '>= 2.7.1'
depends 'user', '>= 0.3.0'
depends 'vim', '>= 1.1.2'
