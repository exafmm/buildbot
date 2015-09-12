start:
	buildbot create-master master
	buildbot start master
reconfig:
	buildbot reconfig master
slave:
	buildslave stop slave
	rm -rf slave
	buildslave create-slave slave localhost:9989 rio00 rio00
	buildslave start slave
