# encoding: UTF-8

actors = `ls /home/szymon/Obrazy/Known_faces`
actors = actors.split("\n")

$arr = []
actors.each {|x| x = x + "/"; $arr << x}

p $arr