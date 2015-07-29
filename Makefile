master:
	buildbot reconfig master
slave:
	buildslave stop slave
	rm -rf slave
	buildslave create-slave slave localhost:9989 titan01 titan01
	buildslave start slave
