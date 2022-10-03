criminal = False
good_cr = True

if good_cr and not criminal:  # AND NOT OR
    print("loan approved")
elif good_cr and criminal:
    print("background check reqd.")
else:
    print("loan not approved")