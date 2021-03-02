#!/bin/bash

declare -a hashtags=("코로나바이러스" "コロナウイルス" "冠状病毒" "covid2019" "covid-2019" "covid19" "covid-19" "coronavirus" "corona" "virus" "flu" "sick" "cough" "sneeze" "hospital" "nurse" "doctor")


for tag in ${hashtags[@]}; 
do
    ./src/visualize.py --input_path=reduced.lang --key=$tag | head > "visual_output/language/$tag"
done

for tag in ${hashtags[@]};
do
    ./src/visualize.py --input_path=reduced.country --key=$tag | head > "visual_output/country/$tag"
done
