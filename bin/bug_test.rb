# APP_PATH = '$HOME/src/hex_bug_rspec'
APP_PATH = '$HOME/src/bug-no-shirase'
# LOG_PATH = APP_PATH + '/log/rspec_result.log'
LOG_PATH = APP_PATH + '/log/rspec_result.log'

# execute rspec
p system("mkdir #{APP_PATH}/log")
p system("cd #{APP_PATH} ; rspec > #{LOG_PATH}")

# tail rspec log
p result = %x[tail -n 10 #{LOG_PATH}]

if result.include?('Failed examples:')
  # system('sh $HOME/bin/boot_bug.sh')
  p system('ssh pi@192.168.1.49 sh /home/pi/bin/boot_bug.sh')
end

