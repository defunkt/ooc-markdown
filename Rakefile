task :default do
  if system("./compile.sh")
    exec "./down"
  else
    puts :fail
  end
end
