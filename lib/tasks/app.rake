namespace :app do
  desc 'Reset Database'
  task reset: 'db:load_config' do
    %w(db:migrate:reset db:seed).each do |t|
      Rake::Task[t].invoke
    end
  end
end
