threads 8,32
workers 3
preload_app!
app_root = '/home/ubuntu/xinchuan'
on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end
bind "unix://#{app_root}/tmp/puma.sock"
stdout_redirect "#{app_root}/log/stdout", "#{app_root}/log/stderr"
environment 'production'
daemonize
pidfile "#{app_root}/tmp/puma.pid"
state_path "#{app_root}/tmp/puma.state"
