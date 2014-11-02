ssh_key = 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhoBcKVyqxDTUFnmw1kUZ4WVcyvNM5MlsIegLNJhwKIWYHL6ZHZdmCME0BLjdDzzhxKDo8atycyOQKOSL2GYR3ofRXRnMgXFRNUNkHyhOFCPcwT3IzDtS3BtqH0C9MYPYfB1zVUO6K4tgH2iSgIOrLsyPukkOvoWPc5Lthakpraj8h01YD4z6Fg2XN8nlwLcd2ETgXuJboRIFXFGIthvKBRF9L5TUokgCuqkt/B250f1Jto+rHXo4X6WyISMXCL6lJOlNF0owlbazWec4MFW7Xs9MHkVfYES/4rdCHG/9lZZp+R84MlB4ixDTQBZ3OeQISNmAF8TCuRdmakIo93ns/ Atlas Air'

users = [{
  id: 'chef',
  comment: 'Chef',
  ssh_keys: [ssh_key]
}, {
  id: 'jimmy',
  comment: 'Jimmy Cuadra',
  ssh_keys: [ssh_key]
}]

default[:authorization][:sudo][:groups] = %w(sudo)
default[:authorization][:sudo][:passwordless] = true
default[:authorization][:sudo][:sudoers_defaults] = [
  'env_reset',
  'mail_badpass',
  'secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"'
]

default[:docker][:group_members] = ['jimmy']

default[:ntp][:apparmor_enabled] = false

default[:openssh][:server][:password_authentication] = 'no'
default[:openssh][:server][:permit_root_login] = 'no'
default[:openssh][:server][:subsystem] = 'sftp internal-sftp'

default[:set_fqdn] = '*.lita.io'

default[:litaio][:base][:users] = users
