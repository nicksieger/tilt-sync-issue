
$(eval include .env)
$(eval export)

# just tilt

.PHONY: up
up:
	tilt up

.PHONY: up2
up2:
	tilt up application

.PHONY: down
down:
	tilt down

# with d8s

.PHONY: d8s
d8s:
	d8s up tilt up

.PHONY: d8s2
d8s2:
	d8s up tilt up application

.PHONY: d8wn
d8wn:
	d8s run tilt down
