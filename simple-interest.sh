#!/bin/bash
# Simple Interest Calculator
# Formula: SI = (Principal * Rate * Time) / 100

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (%): " rate
read -p "Enter the time period (years): " time

simple_interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple Interest = $simple_interest"
