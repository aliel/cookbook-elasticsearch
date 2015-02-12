# https://github.com/amazonwebservices/opsworks-elasticsearch-cookbook/blob/master/layer-custom/recipes/allocation-awareness.rb
node.default[:elasticsearch][:custom_config] = {'node.rack_id' => "#{node[:opsworks][:instance][:availability_zone]}"}
