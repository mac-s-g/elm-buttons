#!/bin/bash

# run the elm-live dev server with hot reloading
# point to dev-server/index.html
elm-live /app/dev-server/ButtonRender.elm \
    --output=elm.js \
    --port=4000 \
    --host=0.0.0.0 \
    --open --pushstate
