@echo off
setlocal enabledelayedexpansion

REM Ga naar Documenten en maak de hoofdmap
cd %USERPROFILE%\Documents
mkdir functions
cd functions

REM --- INDEX PAGINA MAKEN ---
echo ^<!DOCTYPE html^> > index.html
echo ^<html lang="nl"^>^<head^>^<meta charset="UTF-8"^>^<title^>JS Functies Master^</title^>^<style^>body{font-family:sans-serif;padding:30px;line-height:1.6;}h1{color:#2c3e50;}li{margin:10px 0;}a{text-decoration:none;color:#3498db;font-weight:bold;}a:hover{color:#2980b9;}^</style^>^</head^> >> index.html
echo ^<body^>^<h1^>Project: JavaScript Functies^</h1^>^<p^>Werk de oefeningen een voor een af volgens de handleiding.^</p^>^<ol^> >> index.html
echo ^<li^>^<a href="oefening1.html"^>Oefening 1: De Klassieke Alert^</a^>^</li^> >> index.html
echo ^<li^>^<a href="oefening2.html"^>Oefening 2: Praten met de Console^</a^>^</li^> >> index.html
echo ^<li^>^<a href="oefening3.html"^>Oefening 3: De Interactieve Prompt^</a^>^</li^> >> index.html
echo ^<li^>^<a href="oefening4.html"^>Oefening 4: De Kleuren-kiezer^</a^>^</li^> >> index.html
echo ^<li^>^<a href="oefening5.html"^>Oefening 5: De Rekenmachine^</a^>^</li^> >> index.html
echo ^<li^>^<a href="oefening6.html"^>Oefening 6: De Titel-veranderar (DOM)^</a^>^</li^> >> index.html
echo ^<li^>^<a href="oefening7.html"^>Oefening 7: Raad het Getal (Logica)^</a^>^</li^> >> index.html
echo ^<li^>^<a href="oefening8.html"^>Oefening 8: De Click-Counter^</a^>^</li^> >> index.html
echo ^<li^>^<a href="oefening9.html"^>Oefening 9: Show/Hide Toggle^</a^>^</li^> >> index.html
echo ^</ol^>^</body^>^</html^> >> index.html

REM --- OEFENINGEN MAKEN ---
for /L %%i in (1,1,9) do (
    echo ^<!DOCTYPE html^> > oefening%%i.html
    echo ^<html lang="nl"^>^<head^>^<meta charset="UTF-8"^>^<title^>Oefening %%i^</title^>^<style^>body{font-family:sans-serif;padding:20px;}button{padding:10px;margin:5px;cursor:pointer;}^</style^>^</head^> >> oefening%%i.html
    echo ^<body^>^<p^>^<a href="index.html"^>^<- Terug naar overzicht^</a^>^</p^>^<h1 id="titel"^>Oefening %%i^</h1^> >> oefening%%i.html
    
    if %%i EQU 8 (
        echo ^<h2 id="getal"^>0^</h2^> >> oefening%%i.html
        echo ^<button onclick="verhoog()"^>Omhoog^</button^> >> oefening%%i.html
        echo ^<button onclick="verlaag()"^>Omlaag^</button^> >> oefening%%i.html
    ) else if %%i EQU 9 (
        echo ^<button onclick="toonVerberg()"^>Klik om te tonen/verbergen^</button^> >> oefening%%i.html
        echo ^<br^>^<br^>^<img id="mijnFoto" src="https://www.campustoverfluit.be/tile/logo.png" style="display:none;"^> >> oefening%%i.html
    ) else (
        echo ^<button onclick="startFunctie()"^>Voer actie uit^</button^> >> oefening%%i.html
    )

    echo ^<script^> >> oefening%%i.html
    echo   // Schrijf hier je JavaScript functie tussen de script-tags >> oefening%%i.html
    echo. >> oefening%%i.html
    echo ^</script^>^</body^>^</html^> >> oefening%%i.html
)

echo Klaar! Alles staat in Documenten\functions
start "" "%USERPROFILE%\Documents\functions"