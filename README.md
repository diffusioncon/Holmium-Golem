# Holmium

HOLMIUM: Golem for Trusted Self-Improving Cloud Compute

See our current [slides](holmium_diff2019/holmium_diff2019.pdf) for an overview.

## Building

Prepare Python (v3.6) virtual environment:

```bash
git clone --recursive https://github.com/diffusioncon/Team-35.git
cd holmium
sudo pip3 install virtualenv
mkdir .virtualenv
cd .virtualenv/
python3 -m virtualenv .
source bin/activate
cd ..
```

Install Golem components:

```bash
cd ThirdParty/golem-smart-contracts-interface
python3 ./setup.py bdist_wheel
sudo apt install libsecp256k1-dev
pip3 install dist/Golem_Smart_Contracts_Interface-1.10.3-py3-none-any.whl
```

```bash
cd ThirdParty/golem-messages
python3 ./setup.py bdist_wheel
pip3 install dist/Golem_Messages-3.13.0-py3-none-any.whl
```

```bash
cd ThirdParty/golem-task-api/python
pip3 install grpcio-tools
python3 ./setup.py bdist_wheel
pip3 install dist/Golem_Task_Api-0.20.0-py3-none-any.whl
```

```bash
cd ThirdParty/golem
pip3 install setuptools_rust appdirs psutil python-dateutil docker enforce peewee peewee_migrate dataclasses twisted netaddr autobahn pyOpenSSL os_win pydispatcher gitpython
sudo apt install rustc
python3 ./setup.py bdist_wheel
sudo apt install libsnappy-dev
pip3 install dist/golem-0.21.0+dev130.g4d9cf8b-cp36-cp36m-linux_x86_64.whl
```

## Testing

```bash
pip3 install fs opencv-python
golemapp --accept-all-terms
```


