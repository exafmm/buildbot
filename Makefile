clean:
	buildslave stop slave
	rm -rf slave
slave:
	buildslave create-slave slave 131.112.5.68:443 $(SLAVENAME) pass
	buildslave start slave
master:
	buildbot reconfig master

# To initialize slave:
# export SLAVENAME="Name of your machine"
# make slave
#
# To reconfigure slave:
# make clean
# make slave
#
# To reconfigure master (for administrator only):
# make -B master
