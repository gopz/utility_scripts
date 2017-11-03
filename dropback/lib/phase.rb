class Phase
  
  def initialize
    singleton = class << self; self end
    [:phasename, :execute, :description].each do |name|
      singleton.send :define_method, name, lambda { raise "Abstract method. Needs to be defined in Phase subclass." }
    end
  end

  def start_message
    print "BEGIN PHASE: "
    phasename
    description
  end

  def loading
  end

  def end_message
  end
end
