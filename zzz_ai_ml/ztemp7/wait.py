import time

print("Started!")

# Ask the user for the number of minutes to wait
minutes = float(input("Enter the number of minutes to wait: "))

# Convert minutes to seconds
seconds = minutes * 60

print("Waiting...")

# Wait for the specified time
time.sleep(seconds)

# Echo "done" after the timer finishes
print("Done!")
