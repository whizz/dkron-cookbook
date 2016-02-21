require 'serverspec'

set :backend, :exec

describe 'etcd' do
  it 'is running' do
    expect(service('etcd-etcd0')).to be_running
  end
  it 'is listening on port 2379' do
    expect(port(2379)).to be_listening
  end
end

describe 'dkron' do
  it 'is running' do
    expect(process('dkron')).to be_running
  end
  it 'is listening on port 8080 for api calls' do
    expect(port(8080)).to be_listening
  end
  it 'is listening on port 8946 for internal comms' do
    expect(port(8946)).to be_listening
  end
end
