require 'irb/completion'

#IRB.conf[:PROMT_MODE] = :SIMPLE

class Object
  def mate(method_name)
    file, line = method(method_name).source_location
    `mate '#{file}' -l #{line}`
  end
end
