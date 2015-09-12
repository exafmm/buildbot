master:
	buildbot reconfig master
slave:
	buildslave stop slave
	rm -rf slave
	buildslave create-slave slave 131.112.5.69:9989 Tsubame pass
	buildslave start slave
