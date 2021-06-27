import sys
from pynetgear_enhanced import NetgearEnhanced

status = sys.argv[1]
host = sys.argv[2]
username = sys.argv[3]
password = sys.argv[4]

# python3 main.py enable IP USER PASS
router = NetgearEnhanced(password=password, user=username, host=host)

if status == "enable":
    router.set_guest_access_enabled(value="1")
    print("Enabled 2.4GHz guest network")
elif status == "disable":
    router.set_guest_access_enabled(value="0")
    print("Disabled 2.4GHz guest network")
