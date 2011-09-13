namespace :db do
  task :nuke do
    Mongoid.master.collections.reject { |c| puts c }#c.name =~ /system.indexes/ }.each(&:drop)
  end
end
