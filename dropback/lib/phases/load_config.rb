require 'config'
class LoadConfig < Phases
  conf_dir = Dir.pwd
  Config.load_and_set_settings('/')
  
end
  
