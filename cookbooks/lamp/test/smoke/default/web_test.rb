describe package 'apche2' do
  it { should be_installed}
end

describe service 'apache2-default' do
  it { should be_enabled}
  it { should be_running}
end

describe command 'wget -qSO- --spider localhost' do
  its('stderr') { should match %r{HTTP/1\.1 200 OK}}
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end
