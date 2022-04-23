# Chiper Panel Deobfuscated

I have deobfuscated this shit just to show how it works.

I don't take any responsibility in case of unwanted infections, just don't run the code if you don't know what you are really doing

# How to protect against this backdoor
The malware inject in the rconlog resource, the path is static, pretty stupid, so if you change the path of the rconlog the malware wont inject in to it,
and since the entire malware revolves around the chiper-panel.me domain you can simply block any calls to the following domain on your server machine.

* Open the hosts windows file in your server machine (C:\Windows\System32\drivers\etc\hosts)
* Append this line: `    127.0.0.1       cipher-panel.me` (You can use notepad++ or vscode)
