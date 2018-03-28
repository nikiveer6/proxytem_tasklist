#!/bin/bash
#
for line in `cat IPs.txt`
do
    user=`echo $line  | cut -d '@' -f1`;
    ip=`echo $line  | cut -d '@' -f2`;
    pwd=`echo $line  | cut -d '@' -f3`;

    echo "calculating disk space for $ip.."
    echo "================================"
    if sshpass -p $pwd ssh $user@$ip '[ ! -d $HOME/shell ]';then
        sshpass -p $pwd ssh $user@$ip mkdir -m 777 $HOME/shell
    fi
    sshpass -p $pwd scp /home/gamut/WAYS/1Git_Practice/df--k-./remote.sh  $user@$ip:$HOME/shell
  #  sshpass -p $pwd scp /home/gamut/proxytem/shell/remote.sh  $user@$ip:$HOME/shell
    sshpass -p $pwd ssh $user@$ip "$HOME/shell/remote.sh" 
    echo "--------------------------------"
done

