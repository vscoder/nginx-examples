#!/bin/bash

sudo ip link add dummy0 type dummy
sudo ip addr add 192.168.1.10/32 dev dummy0
sudo ip addr add 192.168.1.11/32 dev dummy0
