require 'irb/completion'

#IRB.conf[:PROMT_MODE] = :SIMPLE

module Kernel
  def tables
    ActiveRecord::Base.connection.tables
  end
end

class Object
  def mate(method_name)
    file, line = method(method_name).source_location
    `mate '#{file}' -l #{line}`
  end
end
