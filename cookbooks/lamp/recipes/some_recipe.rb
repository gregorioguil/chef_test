mysql_service 'foo' do
  port '3306'
  version '5.5'
  initial_root_password 'change me'
  action [:create, :start]
end


mysql_connection_info = {
  :host     => '165.227.65.111',
  :username => 'root',
  :password => node['mysql']['server_root_password']
}

mysql_database_user 'disenfranchised' do
  connection mysql_connection_info
  password   'super_secret'
  action     :create
end
