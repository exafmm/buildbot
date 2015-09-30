master:
	buildbot reconfig master
slave:
	buildslave stop slave
	rm -rf slave
	buildslave create-slave slave 131.112.5.69:443 Stampede pass
	buildslave start slave
restart:
	buildslave stop slave
	buildslave start slave