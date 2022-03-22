# tilt-sync-issue


## tilt version
``` bash
$ tilt version
v0.26.2, built 2022-03-18
```

## how to reproduce

- 0 step
  - `docker login ...`

- 1st way
  - `TILT_ALLOW_CONTEXT=my-allwoed-context tilt up`
  - wait until everything is running
  - create a file in the `public` directory, e.g. `public/foo`
  - the file sync should work without any issue
    - sync to code-sniffer
    - sync to application
      - nginx
      - spryker
  - disable in the tilt ui the `code-sniffer` resource
  - create another file in the `public` directory, e.g. `public/foo2`
  - the file sync now shows the issue
    - sync to application
      - nginx
  - the sync to application/spryker is missing

- 2nd way
  - `TILT_ALLOW_CONTEXT=my-allwoed-context tilt up application`
  - wait until everything is running
  - code-sniffer should already be disabled
  - create a file in the `public` directory, e.g. `public/foo3`
  - the file sync should now shows the issue:
    - sync to application
      - nginx (only)
  - the sync to application/spryker is missing
