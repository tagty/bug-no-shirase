APP_PATH = '$HOME/src/hex_bug_rspec'
LOG_PATH = APP_PATH + '/log/rspec_result.log'

# execute rspec
system("cd #{APP_PATH} ; bundle exec rspec > #{LOG_PATH}")

# tail rspec log
result = %x[tail -n 10 #{LOG_PATH}]

if result.include?('Failed examples:')
  system('sh $HOME/bin/boot_bug.sh')
end
