#!/bin/bash
ip route add <ip> via $(ip route show | grep default | cut -f 3 -d' ')