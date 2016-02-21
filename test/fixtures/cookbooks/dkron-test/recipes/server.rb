node.default['dkron']['config']['server'] = true

# build an etcd cluster
etcd_service 'etcd0' do
  action [:create,:start]
end

include_recipe 'dkron::default'
