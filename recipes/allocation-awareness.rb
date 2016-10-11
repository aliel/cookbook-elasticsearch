# https://github.com/amazonwebservices/opsworks-elasticsearch-cookbook/blob/master/layer-custom/recipes/allocation-awareness.rb
aws_instance = search(:aws_opsworks_instance, "self:true").first
node.default[:elasticsearch][:custom_config] = {'node.rack_id' => "#{aws_instance[:availability_zone]}"}
