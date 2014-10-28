node[:litaio][:base][:users].each do |user_data|
  user_account user_data[:id] do
    comment user_data[:comment]
    ssh_keygen false
    ssh_keys user_data[:ssh_keys]
  end
end

include_recipe 'sudo'
