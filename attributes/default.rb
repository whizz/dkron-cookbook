# version to install
default[:dkron][:version] = "0.6.2"
default[:dkron][:download_url] = "https://github.com/victorcoder/dkron/releases/download/v0.6.2/dkron_0.6.2_linux_amd64.tar.gz"
default[:dkron][:checksum] = "d70f90f9c229e9b767c8e7087a692d4811102269303fd8835d2ab8abde2d38dd"

# where to put it, ark will create a directory for each version and
# create a 'current' symlink to it in this home
default[:dkron][:install_path] = "/opt/dkron"

# dkron configuration, the config variables and defaults are directly copied
# from http://dkron.io/docs/configuration/
#
# most can be left as they are, but you should specify the 'join' array
# if this is supposed to be a real world cluster, not a standalone node 
default[:dkron][:config][:node] = node[:fqdn]
default[:dkron][:config][:bind] = "0.0.0.0:8946"
default[:dkron][:config][:http_addr] = ":8080"
default[:dkron][:config][:backend] = "etcd"
default[:dkron][:config][:backend_machine] = "127.0.0.1:2379"
default[:dkron][:config][:tags] = {}  # tags should be key/value pairs
default[:dkron][:config][:server] = false
default[:dkron][:config][:keyspace] = "dkron"
default[:dkron][:config][:encrypt] = "kPpdjphiipNSsjd4QHWbkA=="  # you should change this in your environment
default[:dkron][:config][:mail_host] = nil
default[:dkron][:config][:mail_port] = nil
default[:dkron][:config][:mail_username] = nil
default[:dkron][:config][:mail_password] = nil
default[:dkron][:config][:mail_from] = nil
default[:dkron][:config][:webhook_url] = nil
default[:dkron][:config][:webhook_payload] = nil
default[:dkron][:config][:webhook_header] = []
default[:dkron][:config][:debug] = false
default[:dkron][:config][:ui_dir] = nil
default[:dkron][:config][:rpc_port] = 6868
default[:dkron][:config][:join] = []
    