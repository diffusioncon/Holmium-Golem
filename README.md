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
pip3 install golem-0.21.0+dev134.g631d85a-cp36-cp36m-linux_x86_64.whl
```

## Testing

Prepare some additional dependencies and Docker:

```bash
pip3 install fs opencv-python cloudpickle
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
```

Moreover, NVIDIA GPU kernel module is needed for GPU support. Driver version 418.39 from CUDA 10.1 will do.

Create an empty task archive to silence error:

```
mkdir -p ~/.local/share/golem/default/rinkeby
touch ~/.local/share/golem/default/rinkeby/task_archive.pickle
```

Finally, execute `golemapp` with `sudo`, otherwise it cannot access Docker:

```
sudo $(which python) $(which golemapp) --accept-all-terms --password simplepassword
```

