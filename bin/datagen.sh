#!/bin/bash
rm -f result.txt
for order in {1..5}
do
for smoothing in {0.0001,0.001,0.01}
do
echo "${order} ${smoothing} $(python3 fcm.py --source ../example/example.txt --order $order --smoothing $smoothing)" >>result.txt
done
for smoothing in {0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9} #iterating with float step is nonsensical, thank you bash
do
echo "${order} ${smoothing} $(python3 fcm.py --source ../example/example.txt --order $order --smoothing $smoothing)" >>result.txt
done
for smoothing in {1..10}
do
echo "${order} ${smoothing} $(python3 fcm.py --source ../example/example.txt --order $order --smoothing $smoothing)" >>result.txt
done
done