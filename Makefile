stop:
	buildslave stop slave
clean:
	rm -rf slave
slave:
	buildslave create-slave slave login.rio.gsic.titech.ac.jp:443 $(WORKERNAME) pass
	buildslave start slave
master:
	buildbot reconfig master

# To initialize worker:
# export WORKERNAME="Name of your machine"
# make slave
#
# To reconfigure worker:
# make -B stop slave
#
# To reconfigure master (for administrator only):
# make -B master
