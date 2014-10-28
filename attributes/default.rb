users = [{
  id: 'jimmy',
  comment: 'Jimmy Cuadra',
  ssh_keys: [
    'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhoBcKVyqxDTUFnmw1kUZ4WVcyvNM5MlsIegLNJhwKIWYHL6ZHZdmCME0BLjdDzzhxKDo8atycyOQKOSL2GYR3ofRXRnMgXFRNUNkHyhOFCPcwT3IzDtS3BtqH0C9MYPYfB1zVUO6K4tgH2iSgIOrLsyPukkOvoWPc5Lthakpraj8h01YD4z6Fg2XN8nlwLcd2ETgXuJboRIFXFGIthvKBRF9L5TUokgCuqkt/B250f1Jto+rHXo4X6WyISMXCL6lJOlNF0owlbazWec4MFW7Xs9MHkVfYES/4rdCHG/9lZZp+R84MlB4ixDTQBZ3OeQISNmAF8TCuRdmakIo93ns/ Atlas Air'
  ]
}]

user_ids = users.map { |user| user[:id] }

default[:authorization][:sudo][:passwordless] = true
default[:authorization][:sudo][:users] = user_ids

default[:docker][:group_members] = user_ids

default[:ntp][:apparmor_enabled] = false

default[:openssh][:server][:password_authentication] = 'no'
default[:openssh][:server][:permit_root_login] = 'no'
default[:openssh][:server][:subsystem] = 'sftp internal-sftp'

default[:set_fqdn] = '*.lita.io'

default[:litaio][:base][:users] = users
