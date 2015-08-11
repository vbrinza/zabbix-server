require 'serverspec'

describe package('zabbix') do
  it { should be_installed }
end
