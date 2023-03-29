$Links = @(

            "search?q=amd"
            "search?q=amd+ryzen"
            "search?q=amd+threadripper"
            "search?q=amd+epyc"
            "search?q=amd+radeon"
            "search?q=amd+radeon+pro"
            "search?q=nvidia"
            "search?q=nvidia+gtx"
            "search?q=nvidia+rtx"
            "search?q=nvidia+titan"
            "search?q=nvidia+quadro"
            "search?q=nvidia+tesla"
            "search?q=qualcomm"
            "search?q=qualcomm+snapdragon"
            "search?q=microsoft"
            "search?q=microsoft+windows"
            "search?q=microsoft+office"
            "search?q=linux"
            "search?q=fedora+linux"
            "search?q=ubuntu"
            "search?q=arch+linux"
            "search?q=opensuse"
            "search?q=apple"
            "search?q=mac+os+x"
            "search?q=apple+macos"
            "search?q=apple+ios"
            "search?q=apple+tvos"
            "search?q=dec+alpha"
            "search?q=haiku+os"
            "search?q=amigaos"
            "search?q=powerpc+isa"

)

$Links2 = @(

            "search?q=sega"
            "search?q=sega+megadrive"
            "search?q=sega+megadrive+2"
            "search?q=sega+megadrive+mini"
            "search?q=sega+genesis"

)

$Baselink = "https://www.bing.com/"

Start-Process -FilePath "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" -ArgumentList "--profile-directory=`"Profile 1`" https://www.bing.com"
foreach ($Link in $Links){
    Start-Process (-join("$Baselink","$Link"))
    Start-Sleep -Seconds 4
}

foreach ($Link2 in $Links2){
    Start-Process (-join("$Baselink","$Link2"))
    Start-Sleep -Seconds 4
}
    Get-Process | Where-Object {$_.Name -Match "msedge"} | Stop-Process
