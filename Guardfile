
guard 'compass', :project_path => 'assets', :configuration_file => 'assets/compass_config.rb' do
  watch(/^assets\/scss\/(.*)\.s[ac]ss/)
end

guard :shotgun, server: "webrick", host: "0.0.0.0", port: "9393"  do
end
