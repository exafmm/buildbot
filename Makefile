create-slave:
	buildslave create-slave slave 131.112.5.69:443 $(NAME) pass
	buildslave start slave
slave:
	buildslave stop slave
	buildslave start slave
master:
	buildbot reconfig master


# To initialize slave:
# make create-slave NAME=Titan
#
# To restart slave:
# make -B slave
#
# To reconfigure master (for administrator only):
# make -B master
