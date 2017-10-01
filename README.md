# elm-buttons
the goal is to produce well-designed, reusable button components written for elm applications

## setup
requirements:
    * docker must be installed
    * linux terminal must be available
run the dev-server with hot-reloading:
    1. build the docker container
        * `cd elm-buttons`
        * `./docker/build-container.sh`
    2. run the development server
        * `./docker/dev-server.sh`
    3. open up `localhost:4000` in a web browser

once the dev-server is running, you can play around with source files in `elm-buttons/src`.  Changes will automatically trigger a re-compile and browser refresh.

