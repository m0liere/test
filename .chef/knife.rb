# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "roei"
client_key               "#{current_dir}/roei.pem"
chef_server_url          "https://r-hoory27-63a3d9932.mylabserver.com/organizations/tyt"
cookbook_path            ["#{current_dir}/../cookbooks"]
