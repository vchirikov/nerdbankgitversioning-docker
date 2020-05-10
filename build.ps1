#!/usr/bin/env pwsh

& ./GenerateNerdbankGitVersioningTargets.ps1
& docker build --no-cache -t nerdbankgitversioning-docker .
& docker run -it nerdbankgitversioning-docker