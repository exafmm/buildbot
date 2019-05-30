### buildbot for exafmm-t

Click [here](http://35.236.198.241:8010) to see the dashboard page.

#### Initialize a worker
- `export WORKERNAME="Name of your machine"`, this name should match the name defined in master.cfg
- create and start the worker: `make worker`

#### Stop a worker
- stop the worker: `make stop`
- clean the worker directory: `make clean`

#### Check / Reconfigure the master
- test master.cfg file: `make check`
- reconfigure master: `make master`
