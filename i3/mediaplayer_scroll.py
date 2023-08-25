#!/bin/env python

import os
import json
import subprocess
from types import NoneType


def get_player_state() -> str:
    cmd = ["/usr/share/i3blocks/mediaplayer"]
    pout = subprocess.run(cmd, capture_output=True)
    songName = pout.stdout.decode()
    songName = songName.replace("\n", " ")
    return songName


def writeBack(state: dict, path: str) -> None:
    with open(os.path.expanduser(path), 'w') as f:
        json.dump(state, f)


def printState(state: dict) -> dict:
    winSize = 20
    stepsize = 1
    idx = state["idx"]
    name = state["name"]
    extended_name = name + "  <<<    >>>  "
    songLen = len(extended_name)
    startIdx = (idx + stepsize) % songLen
    endIdx = (startIdx + winSize) % songLen
    if endIdx < startIdx:
        print(extended_name[startIdx:] + extended_name[:endIdx])
    else:
        print(extended_name[startIdx: endIdx])
    updatedState = {"name": name, "idx": startIdx}
    return updatedState


def marqLoop(path: str):
    oldState = readState(path)
    if oldState is None:
        print("Playing Nothing")
        exit(0)
    else:
        currSongName = get_player_state()
        if currSongName == oldState["name"]:
            updatedState = printState(oldState)
            writeBack(updatedState, path)
        else:
            newState = {"name": currSongName, "idx": -1}
            updatedState = printState(newState)
            writeBack(updatedState, path)


def readState(path: str) -> dict | NoneType:
    state = {}
    try:
        with open(os.path.expanduser(path), 'r') as f:
            state = json.load(f)
    except Exception as e:
        state = None
    return state


def firstRun(path):
    song = get_player_state()
    song = song.replace("\n", " ")
    index = 0
    songState = {"name": song, "idx": index}
    writeBack(songState, path)
    print(song[:20])


def initialize(path: str = "~/.config/i3blockScripts/mediaplayer_meta.json"):
    if os.path.isfile(os.path.expanduser(path)):
        marqLoop(path)
    else:
        subprocess.run(["touch", os.path.expanduser(path)])
        firstRun(path)


initialize()
