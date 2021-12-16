# # encoding: utf-8
# # frozen_string_literal: true

# Inspec test for recipe nextcloud_desktop::install

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

return unless os.windows?

NEXTCLOUD_VERSION = '3.3.6'

describe file('C:\Program Files\Nextcloud\nextcloud.exe') do
  it { should exist }
end

describe file('C:\Program Files\Nextcloud\nextcloudcmd.exe') do
  it { should exist }
end

describe command('& "C:\Program Files\Nextcloud\nextcloudcmd.exe" --version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match(/#{NEXTCLOUD_VERSION}/) }
end
