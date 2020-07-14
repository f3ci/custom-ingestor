$Assembly.GetType("Costura.AssemblyLoader", $false).GetMethod("Attach", $BindingFlags).Invoke($Null, @())
$Assembly.GetType("SharpHound3.SharpHound").GetMethod("InvokeSharpHound").Invoke($Null, @(,$x))
