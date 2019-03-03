sudo apt-get update
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update
sudo apt-get install esl-erlang -y
sudo apt-get install elixir -y
mix local.hex
mix archive.install hex phx_new 1.4.1
mix phx
mix local.phx
sudo apt-get install npm -y
sudo apt-get install postgresql -y