 #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#IfWinActive Hiveswap Episode 
menu, tray, icon, 1.ico, 

;-----------------------
;Notes
;-----------------------
;Writen by Alexandra T. Knoell

;Screen Resolution: 1360x768
;       This means that all mouse coordinates can only be between 0x and 0y, and 768x and 1360y. 0x, 0y is the top left corner of the screen. 
;The mousemove command is normally done as: 
;mousemove, x, y
;
;sleep, 25
;This will make the program wait for 0.025 seconds.
;
;Mouseclick, left
;This simply makes the program click the mouse.
;
;Send, {del}
;Presses delete for 0.001 seconds.

;-----------------------------------------------
;Return to Main Menu
;-----------------------------------------------
^F2::
mousemove, 1337, 135
sleep, 500
mouseclick, left
sleep, 500
mousemove, 707, 448
sleep, 500
mouseclick, left
sleep, 500
mouseclick, left
return

^1::
;-----------------------
;Make Variables as needed
;-----------------------
convCount = 0

;-----------------------
;Start Game
;-----------------------
mousemove, 550, 450
mouseclick, left

;Cutscene and screen transition
sleep, 30000
Loop
ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Loading.png
until !ErrorLevel
Loop
ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Loading.png
until ErrorLevel

;-----------------------
;Joey's Room 1
;-----------------------

;Dialogue
sendinput, {Delete}
;sleep, 1325
mousemove, 874, 347
Loop{
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\YourName.bmp
}
until !ErrorLevel
mousemove, 920, 527
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 11
convCount = 0

;pickup shoes
;sleep, 30
;mousemove, 920, 527
sleep, 25
mouseclick, left
sleep, 25
mousemove, 920, 575
sleep, 100
mouseclick, left

;dialogue
sleep, 725
mouseclick, left
sleep, 25
mouseclick, left

;Pickup plush
sleep, 30
mousemove, 420, 450
sleep, 25
mouseclick, left
sleep, 25
mousemove, 420, 500
sleep, 100
mouseclick, left

;dialogue
sleep, 1800
mouseclick, left
sleep, 25
mouseclick, left

;pick up keys
;sleep, 210
Loop{
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Nose.bmp
}
until !ErrorLevel
mousemove, 550, 360
sleep, 25
mouseclick, left
sleep, 25
mousemove, 550, 410
sleep, 100
mouseclick, left

;dialogue
sleep, 125
mousemove, 1119, 194
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 5
convCount = 0

;pick up talkie
sleep, 500
mousemove, 372, 551
sleep, 25
mouseclick, left
sleep, 25
mousemove, 372, 591
sleep, 100
mouseclick, left

;move to screen transition
sleep, 1000
mousemove, 75, 680
sleep, 25
mouseclick, left

;move mouse to diary
sleep, 25
mousemove, 257, 623

;-----------------------
;Joey's Room 2
;-----------------------

;screen transition
Loop{
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\SecondMom.bmp
}
until !ErrorLevel

;move to diary click
mouseclick, left

;use diary key
sleep, 1320
mousemove, 335, 80
sleep, 25
mouseclick, left
sleep, 25
mousemove, 652, 620
sleep, 25
mouseclick, left

;dialogue
sleep, 125
mouseclick, left
sleep, 25
mouseclick, left

;write in diary
sleep, 25
mouseclick, left
sleep, 25
mousemove, 652, 660
sleep, 100
mouseclick, left

;dialogue
;	14
sleep, 125
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 17
convCount = 0

;stop looking at diary
sleep, 275
mousemove, 70, 750
sleep, 25
mouseclick, left

;open closet
sleep, 525
mousemove, 310, 530
sleep, 25
mouseclick, left

;pick up simon says
sleep, 1125
mousemove, 250, 350
sleep, 25
mouseclick, left
sleep, 25
mousemove, 250, 390
sleep, 100
mouseclick, left

;dialogue
sleep, 975
mouseclick, left
sleep, 25
mouseclick, left

;simon says button press
sleep, 425
mousemove, 581, 300
sleep, 4025
mouseclick, left

;dialogue
;sleep, 1025
Loop{
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Oh.bmp
}
until !ErrorLevel
mouseclick, left

;put batteries in walkie
;sleep, 700
mousemove, 100, 100
sleep, 60
mouseclick, left
sleep, 60
mousemove, 200, 100
sleep, 60
mouseclick, left

;dialogue
sleep, 125
mouseclick, left
sleep, 25
mouseclick, left
sleep, 25
mouseclick, left

;talk to jude
sleep, 25
mousemove, 1150, 100
sleep, 25
mouseclick, left
;	9
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 9
convCount = 0

;	option 1
sleep, 25
mousemove, 279, 722
sleep, 25
mouseclick, left
;	4
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 4
convCount = 0

;	option 1
sleep, 25
mouseclick, left
;	8
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 8
convCount = 0


;	option 1
sleep, 25
mouseclick, left
;	5
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 5
convCount = 0

;	option 1
sleep, 25
mouseclick, left
;	17
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 17
convCount = 0

;	option 2
sleep, 25
mousemove, 467, 730
sleep, 25
mouseclick, left
;	7
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 7
convCount = 0

;	option 1
sleep, 25
mousemove, 279, 722
sleep, 25
mouseclick, left
;	7
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 7
convCount = 0

;	option 1
sleep, 25
mouseclick, left
;	7
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 8
convCount = 0

;leave room part 1
sleep, 25
mousemove, 1250, 736
sleep, 25
mouseclick, left
sleep, 1000
mouseclick, left

;leave room part 2
sleep, 2080
mouseclick, left
sleep, 25
mouseclick, left
sleep, 25
mousemove, 1190, 580
sleep, 1040
mouseclick, left

;-----------------------
;Hallway 1
;-----------------------

;screen transition
sleep, 25
mousemove, 998, 280
Loop
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\coast_clear.png
until !ErrorLevel

;dialogue
mouseclick, left
sleep, 25
mouseclick, left

;getting up to the attic
;sleep, 30
;mousemove, 998, 280
sleep, 25
mouseclick, left

;-----------------------
;Stairs to Attic
;-----------------------

;screen transition
Loop
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Loading.png
until ErrorLevel
Loop
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\crutch.bmp
until !ErrorLevel

;step 1 on stairs
mousemove, 900, 230
sleep, 50
mouseclick, left

;step 2 on stairs
sleep, 200
mousemove, 1050, 274
sleep, 1000
mouseclick, left

;door trick
sleep, 25
mousemove, 919, 161
sleep, 200
mouseclick, left
sleep, 25
mousemove, 900, 225
sleep, 100
mouseclick, left

;dialogue
sleep, 1000
mouseclick, left
sleep, 25
mouseclick, left

;move mouse before cutsceen
sleep, 50
mousemove, 777, 707

;cutsceen and dialogue
sleep, 8000
mouseclick, left
;	15
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 15
convCount = 0

;go downstairs click 1
sleep, 25
mouseclick, left

;click 2
sleep, 545
mousemove, 598, 750
sleep, 25
mouseclick, left

;click, 3
sleep, 25
mousemove, 550, 750
sleep, 560
mouseclick, left

;click, 4
sleep, 25
mousemove, 500, 750
sleep, 550
mouseclick, left

;click, 5
sleep, 540
mouseclick, left

;leave attic stairs
sleep, 275
mousemove, 200, 451
sleep, 25
mouseclick, left
sleep, 25
mousemove, 200, 470
sleep, 102
mouseclick, left

;-----------------------
;Hallway 2
;-----------------------

;move down hallway
sleep, 2630
mousemove, 992, 718
sleep, 25
mouseclick, left

;open closet door
Loop
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Castle.bmp
until !ErrorLevel
mousemove, 137, 317
sleep, 25
mouseclick, left
sleep, 25
mousemove, 137, 367
sleep, 100
mouseclick, left

;tap box
sleep, 1000
mousemove, 809, 78
sleep, 25
mouseclick, left
sleep, 25
mousemove, 495, 185
sleep, 25
mouseclick, left

;move to square
sleep, 1000
mousemove, 948, 568
sleep, 25
mouseclick, left

;pick up box
sleep, 2500
mousemove, 348, 516
sleep, 25
mouseclick, left
sleep, 25
mousemove, 348, 566
sleep, 100
mouseclick, left

;dialogue and conversation
;	8
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 10
convCount = 0

;fine
sleep, 25
mousemove, 467, 730
sleep, 25
mouseclick, left
;	15
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 18
convCount = 0

;go downstairs
;sleep, 100
mousemove, 925, 379
sleep, 25
mouseclick, left

;-----------------------
;Stairs to Livingroom
;-----------------------

;go downstairs part 1
;sleep, 2300
Loop
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\JudePicture.bmp
until !ErrorLevel
mousemove, 754, 729
sleep, 25
mouseclick, left
sleep, 600
mouseclick, left
sleep, 25
mousemove, 600, 729
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 17
convCount = 0
sleep, 25
mousemove, 350, 729
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 3
convCount = 0

;down the stairs part 2
sleep, 25
mousemove, 50, 729
sleep, 2000
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 3
convCount = 0

;power's out
sleep, 25
mousemove, 489, 732
sleep, 3400
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 5
convCount = 0

;down the stairs part 3
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 28
convCount = 0

;-----------------------
;Livingroom 1
;-----------------------

;livingroom part 1
sleep, 25
mousemove, 673, 345
sleep, 2400
mouseclick, left

;livingroom part 2
sleep, 25
mousemove, 1332, 650
;sleep, 2500
Loop{
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\PetVet.bmp
}
until !ErrorLevel
mouseclick, left
sleep, 1000
mouseclick, left
sleep, 675
mouseclick, left

;-----------------------
;Livingroom 2
;-----------------------

;click on kitchen
sleep, 25
mousemove, 131, 421
sleep, 2550
mouseclick, left

;-----------------------
;Kitchen 1
;-----------------------

;video killed the
sleep, 25
mousemove, 700, 418
;sleep, 2700
Loop{
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Fridge.bmp
}
until !ErrorLevel
mouseclick, left

;dialogue
sleep, 1175
mouseclick, left
sleep, 25
mouseclick, left
sleep, 600
mouseclick, left

;the radio star
sleep, 25
mousemove, 554, 235
sleep, 25
mouseclick, left
sleep, 25
mousemove, 554, 285
sleep, 100
mouseclick, left

;dialogue
sleep, 925
mouseclick, left

;pick up batteries
sleep, 925
mousemove, 554, 250
sleep, 25
mouseclick, left
sleep, 25
mousemove, 554, 300
sleep, 100
mouseclick, left

;dialogue
sleep, 500
mouseclick, left

;leave the radio
sleep, 270
mousemove, 70, 750
sleep, 25
mouseclick, left

;Move to powder
sleep, 25
mousemove, 1312, 744
sleep, 500
mouseclick, left

;put batteries in flashlight
sleep, 25
mousemove, 109, 70
sleep, 25
mouseclick, left
sleep, 50
mousemove, 955, 70
sleep, 25
mouseclick, left

;dialogue
;	3
sleep, 250
mouseclick, left
sleep, 25
mouseclick, left
sleep, 25
mouseclick, left

;go downstairs
sleep, 25
mousemove, 1150, 400
sleep, 325
mouseclick, left
loop{
sleep, 25
mouseclick, left
convCount += 1
}
until convCount = 15
convCount = 0

;-----------------------
;Basement
;-----------------------

;move toward boxes
;sleep, 3800
Loop{
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Knight.bmp
}
until !ErrorLevel
mousemove, 40, 500
sleep, 25
mouseclick, left

;psycic blast boxes
sleep, 25
mousemove, 786, 70
sleep, 25
mouseclick, left
sleep, 1450
mousemove, 45, 290
sleep, 25
mouseclick, left

;move closer to fuse box
sleep, 500
mousemove, 13, 436
sleep, 25
mouseclick, left

;flip breakers
sleep, 8525
mousemove, 394, 155
sleep, 15
mouseclick, left
sleep, 25
mousemove, 394, 205
sleep, 100
mouseclick, left

;move towards fight
sleep, 500
mousemove, 1150, 600
sleep, 25
mouseclick, left
sleep, 25
mouseclick, left

;enter the fray
sleep, 7000
mouseclick, left

;-----------------------
;Bossfight 1
;-----------------------

;cutsceen
;sleep, 10850
Loop
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\FuckinFish.bmp
until !ErrorLevel

;tapdance
sleep, 25
mousemove, 791, 90
sleep, 25
mouseclick, left
sleep, 25
mousemove, 958, 414
sleep, 25
mouseclick, left

;Ballet to safety
;sleep, 10875
sleep, 9000
Loop
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Crocker.bmp
until !ErrorLevel
mousemove, 872, 90
sleep, 30
mouseclick, left
sleep, 30
mousemove, 958, 414
sleep, 30
mouseclick, left
send, {del}

;-----------------------
;Kitchen 2
;-----------------------

;pickup powder
sleep, 25
mousemove, 614, 390
Loop{
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\chicken.bmp
}
until !ErrorLevel
mouseclick, left
sleep, 25
mousemove, 614, 417
sleep, 100
mouseclick, left

;dialogue
;3
sleep, 2000
mouseclick, left
sleep, 25
mouseclick, left
sleep, 25
mouseclick, left

;leave kitchen
sleep, 25
mousemove, 22, 700
sleep, 25
mouseclick, left
sleep, 1000
mouseclick, left
sleep, 25
mousemove, 185, 570
sleep, 500
mouseclick, left

;-----------------------
;Livingroom 3
;-----------------------

;walk to next fight
sleep, 25
mousemove, 1330, 700
;sleep, 2500
Loop
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Candle.bmp
until !ErrorLevel
mouseclick, left
sleep, 1800
mouseclick, left

;-----------------------
;Study 1
;-----------------------

;give yum yum 1
sleep, 25
mousemove, 296, 71
sleep, 12950
;Loop
;	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\WeirdBunny.bmp
;until !ErrorLevel
;sleep, 10000
mouseclick, left
sleep, 25
mousemove, 945, 566
sleep, 25
mouseclick, left

;give yum yum 2
sleep, 25
mousemove, 296, 71
sleep, 8475
mouseclick, left
sleep, 25
mousemove, 945, 566
sleep, 25
mouseclick, left

;give yum yum 3
sleep, 25
mousemove, 296, 71
sleep, 7625
mouseclick, left
sleep, 25
mousemove, 945, 566
sleep, 25
mouseclick, left
send, {del}

;end of boss dialogue
sleep, 25
mousemove, 324, 220
;	3
sleep, 11075
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 4
convCount = 0

;pull horns
sleep, 1450
;Loop
;	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\globe.bmp
;until !ErrorLevel
mouseclick, left
sleep, 25
mousemove, 324, 270
sleep, 100
mouseclick, left

;dialogue
sleep, 550
mouseclick, left

;move before convo
sleep, 25
mousemove, 1350, 578
sleep, 200
mouseclick, left
sleep, 25
mouseclick, left
sleep, 25
mousemove, 1056, 620
sleep, 1000
mouseclick, left
sleep, 100
mouseclick, left

;conversation
;	13
sleep, 525
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 13
convCount = 0

;	pretty good burn. 
sleep, 25
mousemove, 255, 728
sleep, 25
mouseclick, left
;	17
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 19
convCount = 0


;-----------------------
;Tree House 1
;-----------------------

;screen transition
;Loop
;	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\You.bmp
;until ErrorLevel
sleep, 4475

;dialogue
;	4?
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 4
convCount = 0

;pick up flares
sleep, 25
mousemove, 345, 639
sleep, 25
mouseclick, left
sleep, 25
mousemove, 345, 679
sleep, 100
mouseclick, left

;dialogue
sleep, 1800
mouseclick, left

;open drawer
sleep, 25
mousemove, 385, 550
sleep, 600
mouseclick, left
sleep, 25
mouseclick, left

;pick up red marble
sleep, 25
mousemove, 671, 196
sleep, 500
mouseclick, left

;dialogue
sleep, 500
mouseclick, left

;pick up green marble
sleep, 250
mousemove, 925, 124
sleep, 25
mouseclick, left

;dialogue
sleep, 500
mouseclick, left

;pick up pouch
sleep, 25
mousemove, 439, 503
sleep, 25
mouseclick, left
sleep, 25
mousemove, 439, 545
sleep, 100
mouseclick, left

;dialogue
sleep, 25
mousemove, 62, 709
sleep, 500
mouseclick, left

;exit drawer
sleep, 500
mouseclick, left

;move to birds
sleep, 25
mousemove, 770, 630
sleep, 500
mouseclick, left

;give marbles to birb 1
sleep, 25
mousemove, 100, 80
sleep, 25
mouseclick, left
sleep, 25
mousemove, 806, 486
sleep, 25
mouseclick, left

;move mouse to drawer
sleep, 25
mousemove, 385, 550

;cutsceen
sleep, 19000
Loop
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\longglasses.bmp
until ErrorLevel

;get new marbles
sleep, 25
mouseclick, left

;dialogue
sleep, 1525
mouseclick, left

;give marbles to birb 2
sleep, 25
mousemove, 100, 80
sleep, 25
mouseclick, left
sleep, 25
mousemove, 806, 486
sleep, 25
mouseclick, left

;move mouse to drawer
sleep, 25
mousemove, 385, 550

;cutsceen
sleep, 18000
Loop
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\longglasses.bmp
until ErrorLevel

;get new marbles
sleep, 25
mouseclick, left

;dialogue
sleep, 1525
mouseclick, left

;give marbles to birb 3
sleep, 25
mousemove, 100, 80
sleep, 25
mouseclick, left
sleep, 25
mousemove, 806, 486
sleep, 25
mouseclick, left

;move mouse to door
sleep, 25
mousemove, 1162, 451

;-----------------------
;Study 2
;-----------------------

;Conversation Skip
sleep, 21300
;Loop
;	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\studychair.bmp
;until !ErrorLevel
Loop{
	sleep, 5
	mouseclick, left
	convCount += 1
}
until convCount = 45
convCount = 0

;move mouse before transition
;sleep, 25
;mousemove, 51, 698

;-----------------------
;Living Room 4
;-----------------------

;screen transition
;sleep, 500
Loop{
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\lamplady.bmp
}
until !ErrorLevel
mousemove, 51, 698

;move back to kitchen
;	sleep for 1.725s
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 44
convCount = 0


;click on kitchen door
sleep, 25
mousemove, 300, 448, 100
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 12
convCount = 0

;-----------------------
;Boss Fight 3
;-----------------------
;tap shoes
sleep, 2500
mousemove, 790, 100

;cutsceen
Loop{
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\dishes.bmp
}
until !ErrorLevel
send, {esc}
sleep, 25
send, {esc}
sleep, 2000

;click on shoes
mouseclick, left

;tap for boss
sleep, 25
mousemove, 360, 420 ;hehehe
sleep, 25
mouseclick, left

;move mouse to flashlight
sleep, 25
mousemove, 960, 100

;flash boss
sleep, 8300
mouseclick, left
sleep, 25
mousemove, 792, 515
sleep, 25
mouseclick, left

;move mouse to powder
sleep, 25
mousemove, 100, 66

;powder his nose
sleep, 2500
mouseclick, left
sleep, 25
mousemove, 792, 515
sleep, 25
mouseclick, left
send, {del}

;-----------------------
;Post Fight Kitchen
;-----------------------

;pick up cracker and cutsceen
sleep, 25
mousemove, 44, 271
sleep, 14000
mouseclick, left

;move to cracker
sleep, 25
mousemove, 112, 80

;dialogue
sleep, 14000
mouseclick, left

;give cracker to Byers
sleep, 50
mouseclick, left
sleep, 25
mousemove, 483, 214
sleep, 25
mouseclick, left

;move mouse to door
sleep, 25
mousemove, 170, 500

;dialogue
sleep, 500
mouseclick, left

;click on door
sleep, 25
mouseclick, left

;-----------------------
;Livingroom 5
;-----------------------

;loading and get to the
;study
sleep, 25
mousemove, 1330, 700
Loop
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Candle.bmp
until !ErrorLevel
mouseclick, left
sleep, 1775
mouseclick, left

;-----------------------
;Study 3
;-----------------------

;use marbles with cat
sleep, 25
mousemove, 99, 59
sleep, 3000
mouseclick, left
sleep, 25
mousemove, 868, 283
sleep, 25
mouseclick, left

;click on globe
sleep, 25
mousemove, 334, 408
sleep, 1000
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 7
convCount = 0
sleep, 25
mousemove, 334, 458
sleep, 100
mouseclick, left
sleep, 500
mouseclick, left
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 5
convCount = 0

;pickup key
sleep, 25
mousemove, 554, 403
sleep, 1000
mouseclick, left
sleep, 100
mousemove, 554, 453
sleep, 25
mouseclick, left

;leave room
sleep, 25
mousemove, 1265, 613
sleep, 900
mouseclick, left
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 6
convCount = 0
sleep, 25
mousemove, 1143, 494
sleep, 900
mouseclick, left
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 6
convCount = 0

;-----------------------
;Livingroom 6
;-----------------------

;off to battle
sleep, 25
mousemove, 900, 719
sleep, 2000
mouseclick, left
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 10
convCount = 0

;-----------------------
;Boss Fight 4
;-----------------------

;run away joey
sleep, 25
mousemove, 1000, 505
sleep, 22250
mouseclick, left
sleep, 25
mouseclick, left
sleep, 25
mouseclick, left

;switch characters
sleep, 25
mousemove, 1215, 120
sleep, 5000
mouseclick, left

;pick up flare gun
sleep, 25
mousemove, 1078, 560
;sleep, 2600
Loop
ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Table.bmp
until !ErrorLevel
mouseclick, left
sleep, 25
mousemove, 1078, 610
sleep, 100
mouseclick, left

;goto window
sleep, 25
mousemove, 1050, 446
sleep, 560
mouseclick, left
sleep, 25
mouseclick, left

;put flares in gun
sleep, 25
mousemove, 100, 50
sleep, 25
mouseclick, left
sleep, 25
mousemove, 200, 50
sleep, 25
mouseclick, left

;use flare gun
sleep, 25
mousemove, 800, 70
sleep, 500
mouseclick, left
sleep, 25
mousemove, 850, 400
sleep, 25
mouseclick, left

;click on flashlight
sleep, 25
mousemove, 954, 61
sleep, 17000
;Loop
;ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\blueLamp.bmp
;until !ErrorLevel
mouseclick, left
sleep, 25
mousemove, 1000, 505
sleep, 25
mouseclick, left
sleep, 25
mousemove, 954, 61
sleep, 25
mouseclick, left
sleep, 25
mousemove, 1000, 505
sleep, 25
mouseclick, left

;switch characters 2
sleep, 25
mousemove, 1215, 120
sleep, 7000
mouseclick, left
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 9
convCount = 0

;click on window 2
sleep, 25
mousemove, 1050, 446
sleep, 2150
mouseclick, left
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 6
convCount = 0

;use flare gun 2
sleep, 25
mousemove, 800, 70
sleep, 500
mouseclick, left
sleep, 25
mousemove, 850, 400
sleep, 25
mouseclick, left

;click on flashlight 3
sleep, 25
mousemove, 954, 61
;sleep, 13900
Loop
ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\blueLamp.bmp
until !ErrorLevel
mouseclick, left
sleep, 25
mousemove, 1000, 505
sleep, 25
mouseclick, left

;switch characters 3
sleep, 25
mousemove, 1215, 120
sleep, 3600
mouseclick, left
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 9
convCount = 0

;click on window 3
sleep, 25
mousemove, 1050, 446
sleep, 2500
mouseclick, left
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 4
convCount = 0

;use flare gun 3
sleep, 25
mousemove, 800, 70
sleep, 500
mouseclick, left
sleep, 25
mousemove, 850, 400
sleep, 25
mouseclick, left

;-----------------------
;Runnin up the stairs
;-----------------------

;go back to attic
sleep, 25
mousemove, 1282, 677
;sleep, 28600
Loop
ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\Post Boss Fight Hall 1.bmp
until !ErrorLevel
mouseclick, left

;go back to attic 2
sleep, 25
mousemove, 984, 281
;sleep, 1600
Loop
ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\dave.bmp
until !ErrorLevel
mouseclick, left

;get up stairs
mousemove, 970, 280
;sleep, 60
Loop
ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\crutch 2 the crutchening.bmp
until !ErrorLevel
mouseclick, left
sleep, 2000
mousemove, 900, 230
sleep, 50
mouseclick, left
sleep, 200
mousemove, 1180, 274
sleep, 500
mouseclick, left

;use key on door
Loop{
sleep, 50
mousemove, 103, 66
sleep, 25
mouseclick, left
sleep, 25
mousemove, 850, 300
sleep,25
mouseclick, left
convCount += 1
}
Until convCount = 5
convCount = 0

;-----------------------
;Attic 1
;-----------------------

;move before conversation
sleep, 11450
mousemove, 900, 650
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 4
convCount = 0

;conversation
;	13
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 13
convCount = 0

;      you actually know this stuff?
sleep, 25
mousemove, 259, 719
sleep, 25
mouseclick, left
;	8
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 8
convCount = 0

;	totally. uh huh.
sleep, 25
mouseclick, left
;	14
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 14
convCount = 0
sleep, 25
mousemove, 900, 650

;move deeper
sleep, 25
mouseclick, left
sleep, 25
mouseclick, left

;move deeper 2
sleep, 25
mousemove, 577, 273
sleep, 2000
mouseclick, left
sleep, 25
mouseclick, left

;pull the sheet
sleep, 25
mousemove, 636, 341
sleep, 3000
mouseclick, left
sleep, 25
mouseclick, left
sleep, 25
mousemove, 636, 391
sleep, 100
mouseclick, left

;click on key and cutscene
sleep, 25
mousemove, 520, 78
sleep, 17525
mouseclick, left
sleep, 25
mousemove, 660, 405
sleep, 25
mouseclick, left
send, {del}

;-----------------------
;Alternia! AKA Dammek's Basement 1
;-----------------------

;pick up pad
sleep, 77500
mousemove, 680, 620
sleep, 25
mouseclick, left
sleep, 25
mousemove, 680, 670
sleep, 100
mouseclick, left

;description boxes
;	2
sleep, 1500
mouseclick, left
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 2
convCount = 0

;the actual conversation from hell
;	19
sleep, 25
mousemove, 660, 421
sleep, 525
mouseclick, left
Loop{
	sleep, 30
	mouseclick, left
	convCount += 1
}
until convCount = 19
convCount = 0

;	who are you?
sleep, 30
mousemove, 1173, 194
sleep, 30
mouseclick, left
sleep, 30
mousemove, 660, 421
;	7
Loop{
	sleep, 30
	mouseclick, left
	convCount += 1
}
until convCount = 7
convCount = 0

;	where am i?
sleep, 30
mousemove, 1173, 194
sleep, 30
mouseclick, left
sleep, 30
mousemove, 660, 421
;	8
Loop{
	sleep, 30
	mouseclick, left
	convCount += 1
}
until convCount = 8
convCount = 0

;	X:)?
sleep, 30
mousemove, 1173, 194
sleep, 30
mouseclick, left
sleep, 30
mousemove, 660, 421
;	42
Loop{
	sleep, 30
	mouseclick, left
	convCount += 1
}
until convCount = 42
convCount = 0

;pick up plans
sleep, 25
mousemove, 1134, 690
sleep, 25
mouseclick, left

;go over to snake game
sleep, 25
mousemove, 676, 488
sleep, 25
mouseclick, left

;dialogue boxes for plans
sleep, 1800
mouseclick, left

;go over to snake game
;sleep, 25
;mousemove, 676, 488
;sleep, 25
;mouseclick, left

;talk to xefros
sleep, 1100
mousemove, 1150, 60
Loop{
	sleep, 30
	mouseclick, left
	convCount += 1
}
until convCount = 4
convCount = 0

;have conversation
;	42
sleep, 30
mousemove, 721, 483
sleep, 1000
mouseclick, left
Loop{
	sleep, 30
	mouseclick, left
	convCount += 1
}
until convCount = 42
convCount = 0

;-----------------------
;Snake Game 1
;-----------------------

;play snake game
Loop{
	sleep, 25
	mouseclick, left
	convCount += 1
}
until convCount = 42
convCount = 0
send, {del}


;figure out when snake game is over
;This will include the cutsceen because that is easiest to accomplish.
Loop
	ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\boxes.bmp
until !ErrorLevel
send, {del}

;-----------------------
;Dammek Basement 2
;-----------------------

;talk to xefros
sleep, 25
mousemove, 1140, 60
sleep, 25
mouseclick, left
sleep, 75
mousemove, 842, 383
sleep, 25
mouseclick, left
;	29
Loop{
	sleep, 40
	mouseclick, left
	convCount += 1
}
until convCount = 19
convCount = 0

;	lusus?
sleep, 25
mousemove, 1162, 201
sleep, 25
mouseclick, left
sleep, 25
mousemove, 842, 383
;	17
Loop{
	sleep, 40
	mouseclick, left
	convCount += 1
}
until convCount = 17
convCount = 0

;inspect room
sleep, 500
mouseclick, left
Loop{
	sleep, 60
	mouseclick, left
	convCount += 1
}
until convCount = 6
convCount = 0

;have another conversation
sleep, 25
mousemove, 1140, 60
sleep, 500
mouseclick, left
sleep, 25
mousemove, 842, 383
;	36
sleep, 200
mouseclick, left
Loop{
	sleep, 40
	mouseclick, left
	convCount += 1
}
until convCount = 36
convCount = 0

;	i'm a nightmare squid god
sleep, 25
mousemove, 1168, 382
sleep 25
mouseclick, left
sleep, 25
mousemove, 842, 383

;	51
Loop{
	sleep, 40
	mouseclick, left
	convCount += 1
}
until convCount = 51
convCount = 0

;-----------------------
;Xefros Balcony
;rip
;-----------------------

;cutscene and dialogue
sleep, 11500
mouseclick, left
Loop{
	sleep, 30
	mouseclick, left
	convCount += 1
}
until convCount = 3
convCount = 0

;pick up package
sleep, 30
mousemove, 275, 647
sleep, 30
mouseclick, left
sleep, 30
mousemove, 275, 697
sleep, 120
mouseclick, left

;dialogue
sleep, 1600
mousemove, 124, 548
sleep, 30
mouseclick, left
sleep, 30
mouseclick, left

;go inside
sleep, 270
mouseclick, left
sleep, 25
mousemove, 124, 588
sleep, 120
mouseclick, left

;-----------------------
;Xefros Room
;-----------------------

;bend that spoon
sleep, 25
mousemove, 790, 60
sleep, 3550
mouseclick, left
sleep, 25
mousemove, 509, 444
sleep, 25
mouseclick, left

;move to other side of room
sleep, 25
mousemove, 1248, 590
sleep, 1500
mouseclick, left
loop{
sleep, 25
mouseclick, left
convCount += 1
}
until convCount = 4
convCount = 0

;click on pad
sleep, 25
mousemove, 1248, 460
sleep, 550
mouseclick, left
sleep, 25
mouseclick, left
sleep, 25
mouseclick, left
sleep, 25
mouseclick, left

;dialogue
sleep, 30
mousemove, 754, 427
sleep, 1000
mouseclick, left

;pickup pad
sleep, 210
mouseclick, left
sleep, 25
mousemove, 754, 467
sleep, 110
mouseclick, left

;dialogue
sleep, 30
mouseclick, left
sleep, 30
mouseclick, left
sleep, 30
mouseclick, left

;another conversation I guess
sleep, 10
;	10
Loop{
	sleep, 40
	mouseclick, left
	convCount += 1
}
until convCount = 10
convCount = 0

;	picture
;leave pad screen
sleep, 60
mousemove, 55, 717
sleep, 25
mouseclick, left

;leave bedroom
sleep, 250
mousemove, 1125, 499
sleep, 25
mouseclick, left
sleep, 25
mousemove, 754, 467

;the rest of the picture
sleep, 2500
mouseclick, left
sleep, 25
mouseclick, left
;	18
loop{
sleep, 40
mouseclick, left
convCount += 1
}
until convCount = 18
convCount = 0

;what's a x?
sleep, 30
mousemove, 1166, 554
sleep, 30
mouseclick, left
sleep, 30
mousemove, 754, 467
;	25
loop{
sleep, 40
mouseclick, left
convCount += 1
}
until convCount = 25
convCount = 0

;-----------------------
;Xefros Hallway 1
;-----------------------

;go into sports room
sleep, 25
mousemove, 816, 304
sleep, 300
mouseclick, left
sleep, 120
mousemove, 816, 344
sleep, 25
mouseclick, left

;-----------------------
;Rumpus Room 1
;-----------------------

;select spoon
sleep, 2700
mousemove, 220, 70
sleep, 25
mouseclick, left

;use spoon on bat
sleep, 25
mousemove, 860, 460
sleep, 25
mouseclick, left

;dialogue
;	6
sleep, 1150
mouseclick, left
loop{
sleep, 30
mouseclick, left
convCount += 1
}
until convCount = 5

;	1
sleep, 1000
mouseclick, left

;leave room
sleep, 30
mousemove, 1070, 480
sleep, 25
mouseclick, left

;-----------------------
;Xefros Hallway 2
;-----------------------

;go downstairs
sleep, 25
mousemove, 1300, 700
sleep, 2000
mouseclick, left
sleep, 25
mousemove, 1200, 560
sleep, 990
mouseclick, left

;-----------------------
;Xefros Livingroom 1
;-----------------------

;go to kitchen
sleep, 25
mousemove, 80, 690
sleep, 3000
mouseclick, left

;-----------------------
;Xefros Kitchen 1
;-----------------------

;move to fridge
sleep, 25
mousemove, 200, 400
sleep, 3600
mouseclick, left

;get mi- i mean soda
sleep, 1500
mousemove, 615, 540
sleep, 25
mouseclick, left
sleep, 25
mousemove, 615, 580
sleep, 120
mouseclick, left

;dialogue
;	1
sleep, 25
mousemove, 69, 720
sleep, 50
mouseclick, left
sleep, 30
mouseclick, left

;leave fridge
sleep, 260
mouseclick, left

;pick up notebook
sleep, 30
mousemove, 1152, 412
sleep, 170
mouseclick, left
sleep, 25
mousemove, 1152, 452
sleep, 120
mouseclick, left

;dialogue
;	1
sleep, 1500
mouseclick, left

;back to livingroom
sleep, 25
mousemove, 1158, 714
sleep, 25
mouseclick, left

;-----------------------
;Xefros Livingroom 2
;-----------------------

;go back upstairs
sleep, 2050
mousemove, 590, 340
sleep, 25
mouseclick, left
sleep, 25
mousemove, 590, 380
sleep, 120
mouseclick, left

;-----------------------
;Xefros Hallway 2
;-----------------------

;go back into sports room
sleep, 2630
mousemove, 43, 299
sleep, 25
mouseclick, left
sleep, 25
mousemove, 43, 339
sleep, 120
mouseclick, left

;use safe
sleep, 2800
mousemove, 213, 73
sleep, 25
mouseclick, left
sleep, 25
mousemove, 210, 360
sleep, 25
mouseclick, left

;dialogue
sleep, 29000
mouseclick, left

;pickup snacks
sleep, 30
mousemove, 170, 490
sleep, 25
mouseclick, left
sleep, 25
mousemove, 170, 530
sleep, 120
mouseclick, left

;dialogue
sleep, 1000
mouseclick, left

;leave sports room
sleep, 25
mousemove, 1239, 496
sleep, 25
mouseclick, left

;-----------------------
;Xefros Hallway 3
;-----------------------

;go downstairs
sleep, 25
mousemove, 1300, 700
sleep, 4000
mouseclick, left
sleep, 25
mousemove, 1200, 560
sleep, 990
mouseclick, left

;-----------------------
;Xefros Livingroom 3
;-----------------------

;go to kitchen
sleep, 25
mousemove, 80, 690
sleep, 2100
mouseclick, left

;-----------------------
;Xefros Kitchen 2
;-----------------------

;give snacks
sleep, 3225
mousemove, 114, 71
sleep, 25
mouseclick, left
sleep, 25
mousemove, 560, 400
sleep, 25
mouseclick, left

;dialogue
sleep, 1500
mouseclick, left

;name creature
sleep, 2000
mousemove, 773, 250
sleep, 25
mouseclick, left
sleep, 25
send, RIPJudePercent
sleep, 2000
mousemove, 713, 328
sleep, 25
mouseclick, left

;leave hive
sleep, 11000
mouseclick, left
sleep, 25
mousemove, 713, 368
sleep, 120
mouseclick, left

;-----------------------
;Outside Xefrose Hive 1
;-----------------------

;pickup package
sleep, 25
mousemove, 336, 598
sleep, 10000
mouseclick, left
sleep, 25
mousemove, 336, 638
sleep, 120
mouseclick, left

;dialogue and pad
sleep, 1500
mouseclick, left
sleep, 30
mouseclick, left
sleep, 30
mouseclick, left
sleep, 30
mousemove, 1179, 573
sleep, 30
mouseclick, left
sleep, 30
mousemove, 449, 365
sleep, 30
mouseclick, left

;-----------------------
;Dammek Basement 3
;-----------------------

;cutsceen and another convo
sleep, 23000
mouseclick, left
loop{
sleep, 40
mouseclick, left
convCount += 1
}
until convCount = 16
convCount = 0

;	a missle?
sleep, 25
mousemove, 1166, 203
sleep, 25
mouseclick, left
sleep, 25
mousemove, 815, 196

;	48
loop{
sleep, 40
mouseclick, left
convCount += 1
}
until convCount = 48
convCount = 0

;enter vent
sleep, 30
mouseclick, left
sleep, 25
mousemove, 815, 236
sleep, 120
mouseclick, left
send, {del}

;-----------------------
;Dammek Livingroom 1
;-----------------------

;cutsceen and convo again
sleep, 22500
;	39
mouseclick, left
loop{
sleep, 40
mouseclick, left
convCount += 1
}
until convCount = 38
convCount = 0

;option 2
sleep, 25
mousemove, 1166, 358
sleep, 25
mouseclick, left
sleep, 25
mousemove, 754, 467
;	10
loop{
sleep, 40
mouseclick, left
convCount += 1
}
until convCount = 10
convCount =0

;use cube on door
sleep, 30
mousemove, 119, 78
sleep, 25
mouseclick, left
sleep, 25
mousemove, 302, 341
sleep, 25
mouseclick, left

;-----------------------
;Dammek Computer Room
;-----------------------

;cutsceen and convo
sleep, 21000
;	58
loop{
sleep, 40
mouseclick, left
convCount += 1
}
until convCount = 58
convCount = 0

;-----------------------
;Snake Game 2
;-----------------------

;snake game 2
sleep, 30
mousemove, 1092, 489
sleep, 25
mouseclick, left
sleep, 700
mouseclick, left
sleep, 1200
mouseclick, left
send, {del}

;move mouse for conversation
sleep, 25
mousemove, 400, 400

;cutsceen
;sleep, 20000
;Loop{
;ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, %A_ScriptDir%\well.bmp
;}
;until !ErrorLevel
;send, {del}

return

^3::
;-----------------------
;Dammek Kitchen
;-----------------------
send, {del}

;conversation, why so many
;	46
mousemove, 400, 400
sleep, 25
mouseclick, left
loop{
sleep, 40
mouseclick, left
convCount += 1
}
until convCount = 45
convCount = 0

;pickup bowl
sleep, 30
mousemove, 648, 416
sleep, 25
mouseclick, left
sleep, 1000
mouseclick, left
sleep, 25
mouseclick, left

;get into fridge
sleep, 30
mousemove, 3, 499
sleep, 25
mouseclick, left
sleep, 25
mousemove, 40, 539
sleep, 120
mouseclick, left

;pick up milk
sleep, 1500
mousemove, 747, 535
sleep, 25
mouseclick, left
sleep, 25
mousemove, 747, 575
sleep, 120
mouseclick, left
sleep, 100
mouseclick, left

;leave fridge
sleep, 260
mousemove, 70, 728
sleep, 25
mouseclick, left

;move across the room
sleep, 500
mousemove, 1160, 570
sleep, 25
mouseclick, left

;put milk in bowl
sleep, 1550
mousemove, 119, 76
sleep, 25
mouseclick, left
sleep, 50
mousemove, 213, 76
sleep, 25
mouseclick, left

;use milk on door
sleep,1600
mousemove, 119, 76
sleep, 25
mouseclick, left
sleep, 25
mousemove, 850, 400
sleep, 25
mouseclick, left

;cutsceen and go upstairs
sleep, 13200
mousemove, 391, 373
sleep, 25
mouseclick, left
sleep, 25
mousemove, 391, 413
sleep, 120
mouseclick, left

;-----------------------
;Dammek Upstairs
;-----------------------

;pickup pad and dialogue
sleep, 2300
mousemove, 201, 543
sleep, 25
mouseclick, left
sleep, 25
mousemove, 201, 583
sleep, 120
mouseclick, left
sleep, 2050
mouseclick, left

;conversation
;	18
loop{
sleep, 30
mouseclick, left
convCount += 1
}
until convCount = 18
convCount = 0

;pick up aid kit & dia
sleep, 30
mousemove, 22, 341
sleep, 25
mouseclick, left
sleep, 25
mousemove, 44, 381
sleep, 120
mouseclick, left
sleep, 2000
mouseclick, left

;use hoverpad on drums
sleep, 25
mousemove, 213, 76
sleep, 25
mouseclick, left
sleep, 25
mousemove, 154, 442
sleep, 25
mouseclick, left

;we're almost there convo and cutsceen
sleep, 17500
;	21
loop{
sleep, 30
mouseclick, left
convCount += 1
}
until convCount = 21
convCount = 0

;option 1
sleep, 25
mousemove, 1166, 203
sleep, 25
mouseclick, left
sleep, 25
mousemove, 754, 467
;	3
loop{
sleep, 30
mouseclick, left
convCount += 1
}
until convCount = 3

;option 1
sleep, 25
mousemove, 1166, 203
sleep, 25
mouseclick, left
sleep, 25
mousemove, 754, 467
;	4
loop{
sleep, 30
mouseclick, left
convCount += 1
}
until convCount = 4

;option 1
sleep, 25
mousemove, 1166, 203
sleep, 25
mouseclick, left
sleep, 25
mousemove, 754, 467
;	27
loop{
sleep, 30
mouseclick, left
convCount += 1
}
until convCount = 27
convCount = 0

;go downstairs
sleep, 30
mousemove, 150, 647
sleep, 25
mouseclick, left
sleep, 25
mousemove, 150, 687
sleep, 120
mouseclick, left

;-----------------------
;Dammek Livingroom 2
;-----------------------

;pickup book and dia
sleep, 2700
mousemove, 23, 547
sleep, 25
mouseclick, left
sleep, 25
mousemove, 23, 587
sleep, 120
mouseclick, left
sleep, 2000
mouseclick, left
sleep, 25
mouseclick, left

;go in door
sleep, 50
mousemove, 473, 376
sleep, 25
mouseclick, left

;-----------------------
;Dammek Computer Room 2
;-----------------------

;room transition
sleep, 1700
mousemove, 101, 527
sleep, 25
mouseclick, left

;-----------------------
;Dammek Computer Room 3
;-----------------------

;use book on Cornibuster
sleep, 4000
mousemove, 119, 76
sleep, 25
mouseclick, left
sleep, 25
mousemove, 1120, 399
sleep, 25
mouseclick, left
;	5
sleep, 1500
mouseclick, left
loop{
sleep, 25
mouseclick, left
convCount += 1
}
until convCount = 4
convCount = 0

;use first aid on Cornibuster
sleep, 50
mousemove, 213, 76
sleep, 25
mouseclick, left
sleep, 25
mousemove, 696, 376
sleep, 25
mouseclick, left
send, {del}

;cutsceen, dialogue, and name
sleep, 14200
mouseclick, left
sleep, 600
mousemove, 713, 328
sleep, 25
mouseclick, left

;LET'S RIDE!
sleep, 25
mousemove, 696, 376
sleep, 25
mouseclick, left
sleep, 25
mousemove, 696, 416
sleep, 120
mouseclick, left

;-----------------------
;Outside Xefros Hive 2
;-----------------------

;conversation
;	14
loop{
sleep, 30
mouseclick, left
convCount += 1
}
until convCount = 14
convCount = 0

;option 3
sleep, 25
mousemove, 1166, 554
sleep, 25
mouseclick, left
sleep, 25
mousemove, 754, 467
;	14
loop{
sleep, 30
mouseclick, left
convCount += 1
}
until convCount = 14
convCount = 0

;cutsceen and last conversation
sleep, 20500
;	57
loop{
sleep, 30
mouseclick, left
convCount += 1
}
until convCount = 57
convCount = 0

;option 1
sleep, 25
mousemove, 1166, 203
sleep, 25
mouseclick, left
sleep, 25
mousemove, 316, 182
;	56
loop{
sleep, 30
mouseclick, left
convCount += 1
}
until convCount = 56

;final input
sleep, 50
mousemove, 319, 76
sleep, 25
mouseclick, left
sleep, 25
mousemove, 694, 520
sleep, 25
mouseclick, left
send, {del}

;Pause Timer
;send, {End}
;why

;end of current play
;soundplay, Duck.mp3
return