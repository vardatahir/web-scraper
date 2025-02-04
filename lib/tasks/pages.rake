namespace :pages do
  desc "Run checks for all pages"
  task run_checks: :environment do
    Page.find_each(&:run_and_notify)
  end
end
