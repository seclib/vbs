Set objShell = WScript.CreateObject("WScript.Shell")
Set objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\.\root\cimv2") 
Set colComputers = objWMIService.ExecQuery ("SELECT * FROM Win32_BaseBoard")
For Each objComputer In colComputers
    strProduct = ObjComputer.Product
Next

If strProduct = "CF53-1" Then WScript.Echo "unit is a 53 Mk1.."