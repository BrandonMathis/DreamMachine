namespace :db do
  desc "Nuke the database"
  task :nuke => :environment do
    Mongoid.master.collections.reject { |c| c.name =~ /system.indexes/ }.each(&:drop)
  end
end
