#!/bin/bash -e

cd "$(dirname $0)"

meld config/examples/BigTreeTech/SKR\ Mini\ E3\ 1.2/Configuration.h Marlin/Configuration.h
meld config/examples/BigTreeTech/SKR\ Mini\ E3\ 1.2/Configuration_adv.h Marlin/Configuration_adv.h

