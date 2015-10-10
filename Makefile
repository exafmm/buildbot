master:
	buildbot reconfig master
slave:
	buildslave stop slave
	buildslave start slave

# example:
# buildslave create-slave slave 131.112.5.69:443 Stampede pass
