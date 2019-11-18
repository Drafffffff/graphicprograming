import wx
import math
import time
app = wx.App()
for i in [(x*0.1)for x in range(1,100000)]:
    frame = wx.Frame(None, -1, "Infinity",
                     size=(240, 120), pos=(i*100, math.sin(i)*100+300))
    frame.Show(True)
    time.sleep(0.2)
app.MainLoop()
