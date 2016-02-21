require 'serverspec'

set :backend, :exec
describe "dkron" do
  it "is running" do
    expect(process("dkron")).to be_running
  end
  it "is listening on port 8946 for internal comms" do
    expect(port(8946)).to be_listening
  end
end
