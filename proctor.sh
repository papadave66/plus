#!/bin/bash
# Simple shell script to run proctor via maven from the command line, within the build environment.
#
# Copyright 2014 MITRE Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
MAVEN=mvn
GOAL=exec:java
MAINCLASS=-DmainClass=org.mitre.provenance.capture.linux.PROCtor
ARGS="-DcommandlineArgs=\"$@\""

echo $MAVEN $GOAL $MAINCLASS $ARGS
$MAVEN $GOAL $MAINCLASS $ARGS
