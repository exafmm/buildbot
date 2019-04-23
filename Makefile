connect:
	ssh -f -N -L localhost:9989:localhost:9989 exafmm@login.rio.gsic.titech.ac.jp
	ssh -f -N -L localhost:8010:localhost:8010 exafmm@login.rio.gsic.titech.ac.jp
stop:
	buildbot-worker stop worker
clean:
	rm -rf worker
worker:
	buildbot-worker create-worker worker localhost $(WORKERNAME) pass
	buildbot-worker start worker
master:
	buildbot reconfig master

# To forward ports
# make connect
#
# To initialize worker:
# export WORKERNAME="Name of your machine"
# make worker
#
# To reconfigure worker:
# make -B stop worker
#
# To reconfigure master (for administrator only):
# make -B master
