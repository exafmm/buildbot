slave:
	buildslave stop slave
	rm -rf slave
	buildslave create-slave slave 131.112.5.69:443 $(SLAVENAME) pass
	buildslave start slave
master:
	buildbot reconfig master


# To configure slave:
# make slave
#
# To reconfigure master (for administrator only):
# make -B master
