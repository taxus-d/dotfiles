#!/bin/bash

i3-msg "workspace ${1}; append_layout ~/.i3/astro_circle_wrks.json"
# And finally we fill the containers with the programs they had
(uxterm &)
(uxterm &)
(uxterm &)
