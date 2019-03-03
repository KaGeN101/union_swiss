
git submodule init
git submodule update

cd payroll_services && mix deps.get
cd ..
cd hr_portal && mix deps.get
cd ..
cd hr_portal/assets && npm install && node node_modules/webpack/bin/webpack.js --mode development
cd ../../

cd payroll_services && mix ecto.reset # Drops, Initiates, Migrates and seeds the db
cd ..
cd payroll_services && mix test
cd ..
cd hr_portal && mix test
cd ..
cd payroll_services && mix ecto.reset
cd ..

# Adding the startup hereras an automated action
cd hr_portal && mix phx.server