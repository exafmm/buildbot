stop:
	buildbot-worker stop worker
clean:
	rm -rf worker
worker:
	buildbot-worker create-worker worker 35.236.198.241 $(WORKERNAME) pass
	buildbot-worker start worker
master:
	buildbot reconfig master
check:
	buildbot checkconfig master
