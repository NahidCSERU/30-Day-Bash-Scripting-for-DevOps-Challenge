#!/bin/bash
# Author: <Nahid Hasan>
# Date: .09.2025

# একটি অ্যারে ডিক্লেয়ার
fruits=("apple" "banana" "cherry" "date")

echo "All fruits: ${fruits[@]}"
echo "Number of fruits: ${#fruits[@]}"

# এরে থেকে loop দিয়ে প্রতিটি আইটেম echo করা
echo "Looping through fruits:"
for fruit in "${fruits[@]}"; do
  echo "Fruit: $fruit"
done

# Index-based loop
echo "Index-based loop:"
for i in "${!fruits[@]}"; do
  echo "Index $i → ${fruits[$i]}"
done

# অ্যারে এ নতুন আইটেম যোগ করা
fruits+=("elderberry")
echo "After adding: ${fruits[@]}"

# অ্যারে থেকে আইটেম বাদ দেওয়া (unset)
unset 'fruits[1]'   # banana বাদ যাবে
echo "After removing index 1: ${fruits[@]}"

# নতুন loop দেখানো বাদের ফলাফল
echo "Final fruits list:"
for f in "${fruits[@]}"; do
  echo "$f"
done
