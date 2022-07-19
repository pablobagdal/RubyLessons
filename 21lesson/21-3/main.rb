# encoding: utf-8

def show_rolling_die
  100.times do
    puts "#{rand(6) + 1}\r"
    sleep(0.03)
  end
end

show_rolling_die