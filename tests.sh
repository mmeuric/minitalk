#!/bin/bash

echo "====== Starting Tests ======"
echo
# Test with 8 characters
echo "Test with 8 characters"
printf '    '
START_TIME=$(date +%s.%N)  # Start time in seconds with nanoseconds
./client "$1" "Hello 42"  # Execute your program
END_TIME=$(date +%s.%N)    # End time in seconds with nanoseconds
ELAPSED_TIME=$(echo "$END_TIME - $START_TIME" | bc)  # Calculate elapsed time
echo "Execution time: ${ELAPSED_TIME}s"  # Display elapsed time
echo
# Test with 100 characters
echo "Test with 100 characters"
printf '    '
START_TIME=$(date +%s.%N)
./client "$1" "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Cu"
END_TIME=$(date +%s.%N)
ELAPSED_TIME=$(echo "$END_TIME - $START_TIME" | bc)
echo "Execution time: ${ELAPSED_TIME}s"
echo
# Test with 1000 characters
echo "Test with 1000 characters"
printf '    '
START_TIME=$(date +%s.%N)
./client "$1" "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ac turpis eros. Aliquam erat volutpat. Etiam a orci vel eros malesuada tincidunt sit amet eget mauris. Integer convallis, magna at facilisis vestibulum, augue enim placerat metus, ac gravida erat nunc non felis. Nullam tristique sem in ligula laoreet, id scelerisque eros suscipit. Sed fermentum risus vel ex condimentum, ac elementum odio feugiat. Ut efficitur mollis turpis. Nulla ac turpis vitae ante pharetra varius. Duis euismod sapien et velit dictum, eget efficitur ante suscipit. Aliquam erat volutpat. In gravida, libero sit amet eleifend tristique, neque lectus efficitur sapien, ac consequat turpis enim ac leo. Curabitur ac magna vitae justo euismod facilisis non eu ipsum. Integer ac odio odio. Ut interdum libero vel augue facilisis, non malesuada eros scelerisque. Suspendisse ut turpis sit amet nisi sollicitudin tincidunt. Pellentesque scelerisque purus ut mauris elementum.
"
END_TIME=$(date +%s.%N)
ELAPSED_TIME=$(echo "$END_TIME - $START_TIME" | bc)
echo "Execution time: ${ELAPSED_TIME}s"
echo
echo "====== Tests Completed ======"
