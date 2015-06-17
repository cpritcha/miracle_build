cd /vagrant

if [ ! -f miracle/settings/local.py ]; then
  echo Creating local.py
  mv miracle/settings/local.py.example miracle/settings/local.py
fi
