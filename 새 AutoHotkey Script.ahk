F3::
Loop{
ImageSearch, vx, vy, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 Image\start.png
if ErrorLevel = 0
{
	Click %vx%, %vy%
	sleep, 2000 
}
ImageSearch, vx, vy, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 Image\sanga.png
if ErrorLevel = 0
{
	Click %vx%, %vy%
	sleep, 2000 
}
ImageSearch, vx, vy, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 Image\mak.png
if ErrorLevel = 0
{
	Click %vx%, %vy%
	sleep, 2000 
}
ImageSearch, vx, vy, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 Image\ibjang.png
if ErrorLevel = 0
{
	Click %vx%, %vy%
	sleep, 2000 
}
ImageSearch, vx, vy, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 Image\ok.png
if ErrorLevel = 0
{
	Click %vx%, %vy%
	sleep, 70000 
}
ImageSearch, vx, vy, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 Image\suc.png
if ErrorLevel = 0
{
	Click %vx%, %vy%
	sleep, 2000 
}
ImageSearch, vx, vy, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 Image\re.png
if ErrorLevel = 0
{
	Click %vx%, %vy%
	sleep, 2000 
}
}

F4::exitapp
