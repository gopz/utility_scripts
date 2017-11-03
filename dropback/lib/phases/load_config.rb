require 'config'
class LoadConfig < Phase
  
  def initalize
    super
    @conf_path = Dir.pwd + '/config/folders.yaml' 
  end

  def execute
    if File.file? conf_path
      Config.load_and_set_settings(conf_path)
    else
      raise 'No config file found.'
    end
  end

  def phasename
    'Load Configurations'
  end

  def description
    "Loading config file from #{@conf_path}.."
  end
end
  
