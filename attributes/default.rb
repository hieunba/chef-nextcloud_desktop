default['nextcloud_desktop']['version'] = '3.3.6'
default['nextcloud_desktop']['url_prefix'] = 'https://github.com/nextcloud/desktop/releases/download'
default['nextcloud_desktop']['source'] = if node['kernel']['machine'] =~ /x86_64/
                                           "#{node['nextcloud_desktop']['url_prefix']}/v#{node['nextcloud_desktop']['version']}/Nextcloud-#{node['nextcloud_desktop']['version']}-x64.msi"
                                         else
                                           ""
                                         end
