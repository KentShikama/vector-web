Rake::Task["assets:precompile"].enhance do
  Rake::Task["diaspora_vector_web:copy_assets"].invoke
end

namespace :diaspora_vector_web do
  desc "Copy assets from /public folder of diaspora vector web engine to /public folder of application"
  task :copy_assets => [:environment]  do
    source_dir = File.join(Diaspora::Vector::Web::Engine.root, 'public', "/.")
    dest_dir = File.join(Rails.root, 'public')
    FileUtils.cp_r source_dir, dest_dir
  end
end

