IDEAL
MODEL small
STACK 256

;read the palletes for the start files
macro ReadMenuPallete
	push ax
	
	lea ax, [Pallete]
	push ax
	mov ax, 400h
	push ax
	mov ax, [Menu_Handler]
	push ax
	call ReadFromFile
	
	pop ax
endm ReadMenuPallete
macro ReadStartPallete
	push ax
	
	lea ax, [Pallete]
	push ax
	mov ax, 400h
	push ax
	mov ax, [Start_Handler]
	push ax
	call ReadFromFile
	
	pop ax
endm ReadStartPallete
macro ReadExitPallete
	push ax
	
	lea ax, [Pallete]
	push ax
	mov ax, 400h
	push ax
	mov ax, [Exit_Handler]
	push ax
	call ReadFromFile
	
	pop ax
endm ReadExitPallete
macro ReadUltPallete
	push ax
	
	lea ax, [Pallete]
	push ax
	mov ax, 400h
	push ax
	mov ax, [UltPallete_Handler]
	push ax
	call ReadFromFile
	
	pop ax
endm ReadUltPallete



macro SyncPallete
	push ax
	
	lea ax, [Pallete]
	push ax
	call SyncPalleteColors
	
	pop ax
endm SyncPallete



;show the start files
macro ShowMenu
	push ax
	
	lea ax, [Menu_Line]
	push ax
	mov ax, [Menu_Left]
	push ax
	mov ax, [Menu_Top]
	push ax
	mov ax, Menu_X
	push ax
	mov ax, Menu_Y
	push ax
	mov ax, [Menu_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowMenu
macro ShowStartButton
	push ax
	
	lea ax, [Start_Line]
	push ax
	mov ax, [Start_Left]
	push ax
	mov ax, [Start_Top]
	push ax
	mov ax, Start_X
	push ax
	mov ax, Start_Y
	push ax
	mov ax, [Start_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowStartButton
macro ShowExitButton
	push ax
	
	lea ax, [Exit_Line]
	push ax
	mov ax, [Exit_Left]
	push ax
	mov ax, [Exit_Top]
	push ax
	mov ax, Exit_X
	push ax
	mov ax, Exit_Y
	push ax
	mov ax, [Exit_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowExitButton
macro ShowScore
	push ax
	
	lea ax, [Score_Line]
	push ax
	mov ax, [Score_Left]
	push ax
	mov ax, [Score_Top]
	push ax
	mov ax, Score_X
	push ax
	mov ax, Score_Y
	push ax
	mov ax, [Score_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowScore



;show characters
macro ShowPacmanL
	push ax
	
	lea ax, [Pacman_Line]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	mov ax, [PacmanL_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowPacmanL
macro ShowPacmanR
	push ax
	
	lea ax, [Pacman_Line]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	mov ax, [PacmanR_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowPacmanR
macro ShowPacmanU
	push ax
	
	lea ax, [Pacman_Line]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	mov ax, [PacmanU_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowPacmanU
macro ShowPacmanD
	push ax
	
	lea ax, [Pacman_Line]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	mov ax, [PacmanD_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowPacmanD
macro ShowRedGhost
	push ax
	
	lea ax, [Ghost_Line]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	mov ax, [RedGhost_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowRedGhost
macro ShowBlueGhost
	push ax
	
	lea ax, [Ghost_Line]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	mov ax, [BlueGhost_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowBlueGhost
macro ShowPinkGhost
	push ax
	
	lea ax, [Ghost_Line]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	mov ax, [PinkGhost_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowPinkGhost
macro ShowOrangeGhost
	push ax
	
	lea ax, [Ghost_Line]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	mov ax, [OrangeGhost_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowOrangeGhost
macro ShowDeadGhost
	push ax
	
	lea ax, [Ghost_Line]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	mov ax, [DeadGhost_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowDeadGhost
macro ShowHuntedGhost
	push ax
	
	lea ax, [Ghost_Line]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	mov ax, [HuntedGhost_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm ShowHuntedGhost



;copy characters
macro CopyPacmanRBitmap
	push ax
	
	lea ax, [PacmanR_Bitmap]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call CopyBitmap
	
	pop ax
endm CopyPacmanRBitmap
macro CopyPacmanLBitmap
	push ax
	
	lea ax, [PacmanL_Bitmap]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call CopyBitmap
	
	pop ax
endm CopyPacmanLBitmap
macro CopyPacmanUBitmap
	push ax
	
	lea ax, [PacmanU_Bitmap]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call CopyBitmap
	
	pop ax
endm CopyPacmanUBitmap
macro CopyPacmanDBitmap
	push ax
	
	lea ax, [PacmanD_Bitmap]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call CopyBitmap
	
	pop ax
endm CopyPacmanDBitmap
macro CopyBlueGhostBitmap
	push ax
	
	lea ax, [BlueGhost_Bitmap]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call CopyBitmap
	
	pop ax
endm CopyBlueGhostBitmap
macro CopyRedGhostBitmap
	push ax
	
	lea ax, [RedGhost_Bitmap]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call CopyBitmap
	
	pop ax
endm CopyRedGhostBitmap
macro CopyPinkGhostBitmap
	push ax
	
	lea ax, [PinkGhost_Bitmap]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call CopyBitmap
	
	pop ax
endm CopyPinkGhostBitmap
macro CopyOrangeGhostBitmap
	push ax
	
	lea ax, [OrangeGhost_Bitmap]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call CopyBitmap
	
	pop ax
endm CopyOrangeGhostBitmap
macro CopyDeadGhostBitmap
	push ax
	
	lea ax, [DeadGhost_Bitmap]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call CopyBitmap
	
	pop ax
endm CopyDeadGhostBitmap
macro CopyHuntedGhostBitmap
	push ax
	
	lea ax, [HuntedGhost_Bitmap]
	push ax
	xor ax, ax
	push ax
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call CopyBitmap
	
	pop ax
endm CopyHuntedGhostBitmap



macro SetVariables
	;positions of all items on the main menu 
	mov [Menu_Left], 0
	mov [Menu_Top], 0
	mov [Start_Left], 168
	mov [Start_Top], 169
	mov [Exit_Left], 74
	mov [Exit_Top], 169
	mov [Score_Left], 237
	mov [Score_Top], 20
	
	;position of the unity digit of the player's score 
	mov [Numbers_Left], 269
	mov [Numbers_Top], 20
	
	;positions of the victor \ defeat screen
	mov [End_Message_Left], 210
	mov [End_Message_Top], 100
	
	;all players starting positions
	mov [Pacman_Left], 0Bh
	mov [Pacman_Top], 16
	mov [RedGhost_Left], 0Bh
	mov [RedGhost_Top], 8
	mov [BlueGhost_Left], 0Bh
	mov [BlueGhost_Top], 8
	mov [PinkGhost_Left], 0Bh
	mov [PinkGhost_Top], 8
	mov [OrangeGhost_Left], 0Bh
	mov [OrangeGhost_Top], 8
	
	mov [Lives], 3
	mov [word Points_Eaten], 0
	mov [word Current_Score], 0
	mov [word Total_Points], 0
	mov [Energizer_Mode], 0 ;not active
	mov [PinkGhost_Quarter], -1
	
	mov [Pacman_Direction], 1
	mov [byte RedGhost_Direction], 2
	
	;set all players to "Alive" mode
	mov [Pacman_Alive], 1
	mov [RedGhost_Alive], 1
	mov [BlueGhost_Alive], 1
	mov [PinkGhost_Alive], 1
	mov [OrangeGhost_Alive], 1
	
	;set all ghost to "Not hunted" mode
	mov [RedGhost_Hunted], 0
	mov [BlueGhost_Hunted], 0
	mov [PinkGhost_Hunted], 0
	mov [OrangeGhost_Hunted], 0
endm SetVariables



;moving algorithms
macro MovePacmanR
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values
	
	lea ax, [RedGhost_Hunted]
	push ax
	lea ax, [BlueGhost_Hunted]
	push ax
	lea ax, [PinkGhost_Hunted]
	push ax
	lea ax, [OrangeGhost_Hunted]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	lea ax, [Points_Eaten]
	push ax
	lea ax, [Energizer_Mode]
	push ax
	lea ax, [PacmanR_Bitmap]
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call MovePacmanRight
	
	pop ax
	mov [Pacman_Left], ax
	pop ax
	mov [Pacman_Top], ax
	
	pop ax
endm MovePacmanR
macro MovePacmanL
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values
	
	lea ax, [RedGhost_Hunted]
	push ax
	lea ax, [BlueGhost_Hunted]
	push ax
	lea ax, [PinkGhost_Hunted]
	push ax
	lea ax, [OrangeGhost_Hunted]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	lea ax, [Points_Eaten]
	push ax
	lea ax, [Energizer_Mode]
	push ax
	lea ax, [PacmanL_Bitmap]
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call MovePacmanLeft
	
	pop ax
	mov [Pacman_Left], ax
	pop ax
	mov [Pacman_Top], ax
	
	pop ax
endm MovePacmanL
macro MovePacmanU
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values
	
	lea ax, [RedGhost_Hunted]
	push ax
	lea ax, [BlueGhost_Hunted]
	push ax
	lea ax, [PinkGhost_Hunted]
	push ax
	lea ax, [OrangeGhost_Hunted]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	lea ax, [Points_Eaten]
	push ax
	lea ax, [Energizer_Mode]
	push ax
	lea ax, [PacmanU_Bitmap]
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call MovePacmanUp
	
	pop ax
	mov [Pacman_Left], ax
	pop ax
	mov [Pacman_Top], ax
	
	pop ax
endm MovePacmanU
macro MovePacmanD
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values
	
	lea ax, [RedGhost_Hunted]
	push ax
	lea ax, [BlueGhost_Hunted]
	push ax
	lea ax, [PinkGhost_Hunted]
	push ax
	lea ax, [OrangeGhost_Hunted]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	lea ax, [Points_Eaten]
	push ax
	lea ax, [Energizer_Mode]
	push ax
	lea ax, [PacmanD_Bitmap]
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call MovePacmanDown
	
	pop ax
	mov [Pacman_Left], ax
	pop ax
	mov [Pacman_Top], ax
	
	pop ax
endm MovePacmanD



macro MoveRedGhost
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values
	
	lea ax, [RedGhost_Direction]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	lea ax, [RedGhost_Bitmap]
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	mov ax, [RedGhost_Left]
	push ax
	mov ax, [RedGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call FirstMovingAlgorithm
	pop ax
	mov [RedGhost_Left], ax
	pop ax
	mov [RedGhost_Top], ax
	
	pop ax
endm MoveRedGhost
macro MoveHuntedRedGhost
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values
	
	lea ax, [RedGhost_Direction]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	lea ax, [HuntedGhost_Bitmap]
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	mov ax, [RedGhost_Left]
	push ax
	mov ax, [RedGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call FirstMovingAlgorithm
	pop ax
	mov [RedGhost_Left], ax
	pop ax
	mov [RedGhost_Top], ax
	
	pop ax
endm MoveHuntedRedGhost
macro MoveRedGhostBackToSpawn
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values
	
	lea ax, [RedGhost_Hunted]
	push ax
	lea ax, [RedGhost_Alive]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	lea ax, [DeadGhost_Bitmap]
	push ax
	lea ax, [Directions]
	push ax
	lea ax, [RedGhost_Path]
	push ax
	lea ax, [RedGhost_Path_Head]
	push ax
	lea ax, [RedGhost_Path_Tail]
	push ax
	mov ax, [RedGhost_Path_Length]
	push ax
	lea ax, [OpenList]
	push ax
	lea ax, [OpenList_Head]
	push ax
	lea ax, [OpenList_Tail]
	push ax
	mov ax, [OpenList_Length]
	push ax
	lea ax, [ClosedList]
	push ax
	lea ax, [ClosedList_Head]
	push ax
	lea ax, [ClosedList_Tail]
	push ax
	mov ax, [ClosedList_Length]
	push ax
	lea ax, [Nodes]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	mov ax, 0Bh
	push ax
	mov ax, 8
	push ax
	mov ax, [RedGhost_Left]
	push ax
	mov ax, [RedGhost_Top]
	push ax
	call MoveBackToSpawn
	pop ax
	mov [RedGhost_Left], ax
	pop ax
	mov [RedGhost_Top], ax
	
	pop ax
endm MoveRedGhostBackToSpawn



macro MoveBlueGhost
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values
	
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	lea ax, [BlueGhost_Bitmap]
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	mov ax, [BlueGhost_Left]
	push ax
	mov ax, [BlueGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call SecendMovingAlgorithm
	pop ax
	mov [BlueGhost_Left], ax
	pop ax
	mov [BlueGhost_Top], ax
	
	pop ax
endm MoveBlueGhost
macro MoveHuntedBlueGhost
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values
	
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	lea ax, [HuntedGhost_Bitmap]
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	mov ax, [BlueGhost_Left]
	push ax
	mov ax, [BlueGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call SecendMovingAlgorithm
	pop ax
	mov [BlueGhost_Left], ax
	pop ax
	mov [BlueGhost_Top], ax
	
	pop ax
endm MoveHuntedBlueGhost
macro MoveBlueGhostBackToSpawn
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values
	
	lea ax, [BlueGhost_Hunted]
	push ax
	lea ax, [BlueGhost_Alive]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	lea ax, [DeadGhost_Bitmap]
	push ax
	lea ax, [Directions]
	push ax
	lea ax, [BlueGhost_Path]
	push ax
	lea ax, [BlueGhost_Path_Head]
	push ax
	lea ax, [BlueGhost_Path_Tail]
	push ax
	mov ax, [BlueGhost_Path_Length]
	push ax
	lea ax, [OpenList]
	push ax
	lea ax, [OpenList_Head]
	push ax
	lea ax, [OpenList_Tail]
	push ax
	mov ax, [OpenList_Length]
	push ax
	lea ax, [ClosedList]
	push ax
	lea ax, [ClosedList_Head]
	push ax
	lea ax, [ClosedList_Tail]
	push ax
	mov ax, [ClosedList_Length]
	push ax
	lea ax, [Nodes]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	mov ax, 0Bh
	push ax
	mov ax, 8
	push ax
	mov ax, [BlueGhost_Left]
	push ax
	mov ax, [BlueGhost_Top]
	push ax
	call MoveBackToSpawn
	pop ax
	mov [BlueGhost_Left], ax
	pop ax
	mov [BlueGhost_Top], ax
	
	pop ax
endm MoveBlueGhostBackToSpawn



macro MovePinkGhost
	push ax
	
	push ax
	push ax ;2 extra values for the returning values
	
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	lea ax, [PinkGhost_Bitmap]
	push ax
	lea ax, [Directions]
	push ax
	lea ax, [Path]
	push ax
	lea ax, [Path_Head]
	push ax
	lea ax, [Path_Tail]
	push ax
	mov ax, [Path_Length]
	push ax
	lea ax, [OpenList]
	push ax
	lea ax, [OpenList_Head]
	push ax
	lea ax, [OpenList_Tail]
	push ax
	mov ax, [OpenList_Length]
	push ax
	lea ax, [ClosedList]
	push ax
	lea ax, [ClosedList_Head]
	push ax
	lea ax, [ClosedList_Tail]
	push ax
	mov ax, [ClosedList_Length]
	push ax
	lea ax, [Nodes]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, [PinkGhost_Left]
	push ax
	mov ax, [PinkGhost_Top]
	push ax
	call ThirdMovingAlgorithm
	pop ax
	mov [PinkGhost_Left], ax
	pop ax
	mov [PinkGhost_Top], ax
	
	pop ax
endm MovePinkGhost
macro MoveHuntedPinkGhost
	push ax
	
	push ax
	push ax ;2 extra values for the returning values
	
	lea ax, [PinkGhost_Quarter]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	lea ax, [HuntedGhost_Bitmap]
	push ax
	lea ax, [Directions]
	push ax
	lea ax, [Path]
	push ax
	lea ax, [Path_Head]
	push ax
	lea ax, [Path_Tail]
	push ax
	mov ax, [Path_Length]
	push ax
	lea ax, [OpenList]
	push ax
	lea ax, [OpenList_Head]
	push ax
	lea ax, [OpenList_Tail]
	push ax
	mov ax, [OpenList_Length]
	push ax
	lea ax, [ClosedList]
	push ax
	lea ax, [ClosedList_Head]
	push ax
	lea ax, [ClosedList_Tail]
	push ax
	mov ax, [ClosedList_Length]
	push ax
	lea ax, [Nodes]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, [PinkGhost_Left]
	push ax
	mov ax, [PinkGhost_Top]
	push ax
	call FifthMovingAlgorithm
	pop ax
	mov [PinkGhost_Left], ax
	pop ax
	mov [PinkGhost_Top], ax
	
	pop ax
endm MoveHuntedPinkGhost
macro MoveHuntedPinkGhostRegularBitmap
	push ax
	
	push ax
	push ax ;2 extra values for the returning values
	
	lea ax, [PinkGhost_Quarter]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	lea ax, [PinkGhost_Bitmap]
	push ax
	lea ax, [Directions]
	push ax
	lea ax, [Path]
	push ax
	lea ax, [Path_Head]
	push ax
	lea ax, [Path_Tail]
	push ax
	mov ax, [Path_Length]
	push ax
	lea ax, [OpenList]
	push ax
	lea ax, [OpenList_Head]
	push ax
	lea ax, [OpenList_Tail]
	push ax
	mov ax, [OpenList_Length]
	push ax
	lea ax, [ClosedList]
	push ax
	lea ax, [ClosedList_Head]
	push ax
	lea ax, [ClosedList_Tail]
	push ax
	mov ax, [ClosedList_Length]
	push ax
	lea ax, [Nodes]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, [PinkGhost_Left]
	push ax
	mov ax, [PinkGhost_Top]
	push ax
	call FifthMovingAlgorithm
	pop ax
	mov [PinkGhost_Left], ax
	pop ax
	mov [PinkGhost_Top], ax
	
	pop ax
endm MoveHuntedPinkGhostRegularBitmap
macro MovePinkGhostBackToSpawn
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values

	lea ax, [PinkGhost_Hunted]
	push ax
	lea ax, [PinkGhost_Alive]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	lea ax, [DeadGhost_Bitmap]
	push ax
	lea ax, [Directions]
	push ax
	lea ax, [PinkGhost_Path]
	push ax
	lea ax, [PinkGhost_Path_Head]
	push ax
	lea ax, [PinkGhost_Path_Tail]
	push ax
	mov ax, [PinkGhost_Path_Length]
	push ax
	lea ax, [OpenList]
	push ax
	lea ax, [OpenList_Head]
	push ax
	lea ax, [OpenList_Tail]
	push ax
	mov ax, [OpenList_Length]
	push ax
	lea ax, [ClosedList]
	push ax
	lea ax, [ClosedList_Head]
	push ax
	lea ax, [ClosedList_Tail]
	push ax
	mov ax, [ClosedList_Length]
	push ax
	lea ax, [Nodes]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	mov ax, 0Bh
	push ax
	mov ax, 8
	push ax
	mov ax, [PinkGhost_Left]
	push ax
	mov ax, [PinkGhost_Top]
	push ax
	call MoveBackToSpawn
	pop ax
	mov [PinkGhost_Left], ax
	pop ax
	mov [PinkGhost_Top], ax
	
	pop ax
endm MovePinkGhostBackToSpawn



macro MoveOrangeGhost
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values
	
	lea ax, [Barrier]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_Y
	push ax
	mov ax, Grid_X
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	lea ax, [OrangeGhost_Bitmap]
	push ax
	mov ax, [OrangeGhost_Left]
	push ax
	mov ax, [OrangeGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call FourthMovingAlgorithm
	pop ax
	mov [OrangeGhost_Left], ax
	pop ax
	mov [OrangeGhost_Top], ax
	
	pop ax
endm MoveOrangeGhost
macro MoveHuntedOrangeGhost
	push ax
	
	push ax
	push ax ;2 extra values for the returning values
	
	lea ax, [Barrier]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_Y
	push ax
	mov ax, Grid_X
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	lea ax, [HuntedGhost_Bitmap]
	push ax
	mov ax, [OrangeGhost_Left]
	push ax
	mov ax, [OrangeGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call SixthMovingAlgorithm
	pop ax
	mov [OrangeGhost_Left], ax
	pop ax
	mov [OrangeGhost_Top], ax
	
	pop ax
endm MoveHuntedOrangeGhost
macro MoveHuntedOrangeGhostRegularBitmap
	push ax
	
	push ax
	push ax ;2 extra values for the returning values
	
	lea ax, [Barrier]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_Y
	push ax
	mov ax, Grid_X
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	lea ax, [OrangeGhost_Bitmap]
	push ax
	mov ax, [OrangeGhost_Left]
	push ax
	mov ax, [OrangeGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call SixthMovingAlgorithm
	pop ax
	mov [OrangeGhost_Left], ax
	pop ax
	mov [OrangeGhost_Top], ax
	
	pop ax
endm MoveHuntedOrangeGhostRegularBitmap
macro MoveOrangeGhostBackToSpawn
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning values

	lea ax, [OrangeGhost_Hunted]
	push ax
	lea ax, [OrangeGhost_Alive]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	lea ax, [Point]
	push ax
	lea ax, [Energizer]
	push ax
	lea ax, [DeadGhost_Bitmap]
	push ax
	lea ax, [Directions]
	push ax
	lea ax, [OrangeGhost_Path]
	push ax
	lea ax, [OrangeGhost_Path_Head]
	push ax
	lea ax, [OrangeGhost_Path_Tail]
	push ax
	mov ax, [OrangeGhost_Path_Length]
	push ax
	lea ax, [OpenList]
	push ax
	lea ax, [OpenList_Head]
	push ax
	lea ax, [OpenList_Tail]
	push ax
	mov ax, [OpenList_Length]
	push ax
	lea ax, [ClosedList]
	push ax
	lea ax, [ClosedList_Head]
	push ax
	lea ax, [ClosedList_Tail]
	push ax
	mov ax, [ClosedList_Length]
	push ax
	lea ax, [Nodes]
	push ax
	lea ax, [Grid]
	push ax
	mov ax, Grid_X
	push ax
	mov ax, Grid_Y
	push ax
	mov ax, 0Bh
	push ax
	mov ax, 8
	push ax
	mov ax, [OrangeGhost_Left]
	push ax
	mov ax, [OrangeGhost_Top]
	push ax
	call MoveBackToSpawn
	pop ax
	mov [OrangeGhost_Left], ax
	pop ax
	mov [OrangeGhost_Top], ax
	
	pop ax
endm MoveOrangeGhostBackToSpawn



;draw characters
macro DrawPacmanR
	push ax
	
	lea ax, [PacmanR_Bitmap]
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call DrawBitmap
	
	pop ax
endm DrawPacmanR
macro DrawPacmanL
	push ax
	
	lea ax, [PacmanL_Bitmap]
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call DrawBitmap
	
	pop ax
endm DrawPacmanL
macro DrawPacmanU
	push ax
	
	lea ax, [PacmanU_Bitmap]
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call DrawBitmap
	
	pop ax
endm DrawPacmanU
macro DrawPacmanD
	push ax
	
	lea ax, [PacmanD_Bitmap]
	push ax
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call DrawBitmap
	
	pop ax
endm DrawPacmanD



macro DrawRedGhost
	push ax
	
	lea ax, [RedGhost_Bitmap]
	push ax
	mov ax, [RedGhost_Left]
	push ax
	mov ax, [RedGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call DrawBitmap
	
	pop ax
endm DrawRedGhost
macro DrawBlueGhost
	push ax
	
	lea ax, [BlueGhost_Bitmap]
	push ax
	mov ax, [BlueGhost_Left]
	push ax
	mov ax, [BlueGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call DrawBitmap
	
	pop ax
endm DrawBlueGhost
macro DrawPinkGhost
	push ax
	
	lea ax, [PinkGhost_Bitmap]
	push ax
	mov ax, [PinkGhost_Left]
	push ax
	mov ax, [PinkGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call DrawBitmap
	
	pop ax
endm DrawPinkGhost
macro DrawOrangeGhost
	push ax
	
	lea ax, [OrangeGhost_Bitmap]
	push ax
	mov ax, [OrangeGhost_Left]
	push ax
	mov ax, [OrangeGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call DrawBitmap
	
	pop ax
endm DrawOrangeGhost



;ghost and pacman contact
macro RedGhostContact
	push ax ;1 extra push for the returning value
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, [RedGhost_Left]
	push ax
	mov ax, [RedGhost_Top]
	push ax
	call CheckForContact
	pop ax
endm RedGhostContact
macro BlueGhostContact
	push ax ;1 extra push for the returning value
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, [BlueGhost_Left]
	push ax
	mov ax, [BlueGhost_Top]
	push ax
	call CheckForContact
	pop ax
endm BlueGhostContact
macro PinkGhostContact
	push ax ;1 extra push for the returning value
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, [PinkGhost_Left]
	push ax
	mov ax, [PinkGhost_Top]
	push ax
	call CheckForContact
	pop ax
endm PinkGhostContact
macro OrangeGhostContact
	push ax ;1 extra push for the returning value
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, [OrangeGhost_Left]
	push ax
	mov ax, [OrangeGhost_Top]
	push ax
	call CheckForContact
	pop ax
endm OrangeGhostContact



;this section of macros is the handling of the victory \ defeat screens
macro OpenVictory
	push ax ;1 extra push for the returning value
	lea ax, [Victory]
	push ax
	lea ax, [End_Message_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
endm OpenVictory
macro OpenDefeat
	push ax ;1 extra push for the returning value
	lea ax, [Defeat]
	push ax
	lea ax, [End_Message_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
endm OpenDefeat
macro ReadVictoryHeader
	push ax
	
	lea ax, [Victory_Header]
	push ax
	mov ax, 54
	push ax
	mov ax, [End_Message_Handler]
	push ax
	call ReadFromFile
	
	pop ax
endm ReadVictoryHeader
macro ReadDefeatHeader
	push ax
	
	lea ax, [Defeat_Header]
	push ax
	mov ax, 54
	push ax
	mov ax, [End_Message_Handler]
	push ax
	call ReadFromFile
	
	pop ax
endm ReadDefeatHeader
macro ReadEndMessagePallete
	push ax
	
	lea ax, [Pallete]
	push ax
	mov ax, 400h
	push ax
	mov ax, [End_Message_Handler]
	push ax
	call ReadFromFile
	
	pop ax
endm ReadEndMessagePallete
macro DrawVictory
	push ax
	
	lea ax, [End_Message_Line]
	push ax
	mov ax, [End_Message_Left]
	push ax
	mov ax, [End_Message_Top]
	push ax
	mov ax, End_Message_X
	push ax
	mov ax, End_Message_Y
	push ax
	mov ax, [End_Message_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm DrawVictory
macro DrawDefeat
	push ax
	
	lea ax, [End_Message_Line]
	push ax
	mov ax, [End_Message_Left]
	push ax
	mov ax, [End_Message_Top]
	push ax
	mov ax, End_Message_X
	push ax
	mov ax, End_Message_Y
	push ax
	mov ax, [End_Message_Handler]
	push ax
	call ShowBMP
	
	pop ax
endm DrawDefeat
macro CloseEndMessage
	push ax
	
	mov ax, [End_Message_Handler]
	push ax
	call CloseFile
	
	pop ax
endm CloseEndMessage



DATASEG	

;main menu background
Menu db "Menu.bmp", 0
Menu_Header db 54 dup (?)
Menu_Top dw (?)
Menu_Left dw (?)
Menu_X equ 320
Menu_Y equ 200
Menu_Handler dw (?)
Menu_Line db 320 dup (?)

;button to start the play
Begin db "Play.bmp", 0
Start_Header db 54 dup (?)
Start_Top dw (?)
Start_Left dw (?)
Start_Y equ 16
Start_X equ 80
Start_Handler dw (?)
Start_Line db 80 dup (?)

;button to exit the game
Exit_Game db "Exit.bmp", 0
Exit_Header db 54 dup (?)
Exit_Top dw (?)
Exit_Left dw (?)
Exit_Y equ 16
Exit_X equ 80
Exit_handler dw (?)
Exit_Line db 80 dup (?)

;the word score
Score db "Score.bmp", 0
Score_Header db 54 dup (?)
Score_Top dw (?)
Score_Left dw (?)
Score_Y equ 12
Score_X equ 32
Score_Handler dw (?)
Score_Line db 32 dup (?)

;a pallete containing all the player's colors as its bitmap
;this file exist so we won't have to resync a pallete everytime we
;redraw a character
UltPallete db "Pallete.bmp", 0
UltPallete_Header db 54 dup (?)
UltPallete_Handler dw (?)
UltPallete_Line db 12 dup (?)

Pacman_Top dw (?)
Pacman_Left dw (?)
Pacman_X equ 9
Pacman_Y equ 9
Pacman_Line db 12 dup (?)

;pacman looking to all his possible movement directions
;right, left, up, down
PacmanR db "PacmanR.bmp", 0
PacmanR_Header db 54 dup (?)
PacmanR_Handler dw (?)

PacmanU db "PacmanU.bmp", 0
PacmanU_Header db 54 dup (?)
PacmanU_Handler dw (?)

PacmanL db "PacmanL.bmp", 0
PacmanL_Header db 54 dup (?)
PacmanL_Handler dw (?)

PacmanD db "PacmanD.bmp", 0
PacmanD_Header db 54 dup (?)
PacmanD_Handler dw (?)

;all of the 6 ghost files
;red ghost, blue ghost, pink ghost, orange ghost
;the hunted ghost for when pacman eats an energizer
;the dead ghost for when a ghost has been eaten
BlueGhost db "Inky.bmp", 0
BlueGhost_Header db 54 dup (?)
BlueGhost_Top dw (?)
BlueGhost_Left dw (?)
BlueGhost_Handler dw (?)

PinkGhost db "Pinky.bmp", 0
PinkGhost_Header db 54 dup (?)
PinkGhost_Top dw (?)
PinkGhost_Left dw (?)
PinkGhost_Handler dw (?)

RedGhost db "Blinky.bmp", 0
RedGhost_Header db 54 dup (?)
RedGhost_Top dw (?)
RedGhost_Left dw (?)
RedGhost_Handler dw (?)

OrangeGhost db "Klied.bmp", 0
OrangeGhost_Header db 54 dup (?)
OrangeGhost_Top dw (?)
OrangeGhost_Left dw (?)
OrangeGhost_Handler dw (?)

DeadGhost db "DGhost.bmp", 0
DeadGhost_Header db 54 dup (?)
DeadGhost_Handler dw (?)

HuntedGhost db "HGhost.bmp", 0
HuntedGhost_Header db 54 dup (?)
HuntedGhost_Handler dw (?)

Ghost_X equ 9
Ghost_Y equ 9
Ghost_Line db 12 dup (?)

;10 files to show the score of the player
;numbers go from zero to nine (0 -> 9)
Zero db "Zero.bmp", 0
Zero_Header db 54 dup (?)
Zero_Handler dw (?)

One db "One.bmp", 0
One_Header db 54 dup (?)
One_Handler dw (?)

Two db "Two.bmp", 0
Two_Header db 54 dup (?)
Two_Handler dw (?)

Three db "Three.bmp", 0
Three_Header db 54 dup (?)
Three_Handler dw (?)

Four db "Four.bmp", 0
Four_Header db 54 dup (?)
Four_Handler dw (?)

Five db "Five.bmp", 0
Five_Header db 54 dup (?)
Five_Handler dw (?)

Six db "Six.bmp", 0
Six_Header db 54 dup (?)
Six_Handler dw (?)

Seven db "Seven.bmp", 0
Seven_Header db 54 dup (?)
Seven_Handler dw (?)

Eight db "Eight.bmp", 0
Eight_Header db 54 dup (?)
Eight_Handler dw (?)

Nine db "Nine.bmp", 0
Nine_Header db 54 dup (?)
Nine_Handler dw (?)

Numbers_Line db 12 dup (?)
Numbers_Y equ 12
Numbers_X equ 10
Numbers_Top dw (?)
Numbers_Left dw (?)

;a victory screen and a defeat screen
;both are using the End_Message variables
;since they both are the same size
;all will be show on the same location on the screen
Victory db "Victory.bmp", 0
Victory_Header db 54 dup (?)

Defeat db "Defeat.bmp", 0
Defeat_Header db 54 dup (?)

End_Message_Handler dw (?)
End_Message_Left dw (?)
End_Message_Top dw (?)
End_Message_X equ 110
End_Message_Y equ 36
End_Message_Line db 112 dup (?)

;an array to hold a pallete when we read it from a file
Pallete db 400h dup (?)

;the current direction of pacman and the red ghost
;all other 3 ghosts do not work on an algorithm that needs to save thier current direction
Pacman_Direction db (?) ;enum of directions (1 = right, 2 = left, 3 = up, 4 = down)
RedGhost_Direction db (?)

;amount of lives pacman has left
Lives db (?)

;amount of points pacman ate and the total amount of points
Points_Eaten dw (?)
Total_Points dw (?)

;current amount of score the player achived
;plus 10 scores per point eaten
;plus 50 scores per energizer eaten
;plus 200 scores per eating of a ghost
Current_Score dw (?)

;a boolean indicating whether energizer mode is active
;1 = true, 0 = false
Energizer_Mode db (?)

;how much time will energizer mode be active
Energizer_Effect dw 0B6h ;10 seconds times 18.21

;how much time will energizer mode be active
;before the bipping warning at the mode is about to be deactivated
Energizer_Effect_Bipping_Time dw 7Fh ;7 seconds times 18.21

;a boolean indicating whether pacman and the ghosts are dead or alive
;1 = alive, 0 = dead
Pacman_Alive db (?)
BlueGhost_Alive db (?)
RedGhost_Alive db (?)
PinkGhost_Alive db (?)
OrangeGhost_Alive db (?)

;a boolean indicating whether a ghost is in hunted mode
;gets activated when pacman eats an energizer
;gets deactivated when the ghosts dies and respawns
;if pacman eats a ghost and it respawns before energizer mode is off
;it will be able to eat pacman even though he is still on energizer mode
BlueGhost_Hunted db (?)
RedGhost_Hunted db (?)
PinkGhost_Hunted db (?)
OrangeGhost_Hunted db (?)

;booleans indicating wheater to draw the ghost's regular bitmap or the hunted bitmap
;this booleans are used for making the bipping animation when energizer mode is almost over
BlueGhost_Hunted_Regular_Bitmap db (?)
RedGhost_Hunted_Regular_Bitmap db (?)
PinkGhost_Hunted_Regular_Bitmap db (?)
OrangeGhost_Hunted_Regular_Bitmap db (?)

;a variable saying on which quarter of the map was pacman
;at the last time A* algorithm was activated
;the variable is used only at the fifth moving algorithm
;and is used so that the pink ghost will calculate A*
;as less as it can
PinkGhost_Quarter db (?)

;the bitmap of a point on the map (9x9 pixels)
Point db 0, 0, 0, 0, 0, 0, 0, 0, 0
	  db 0, 0, 0, 0, 0, 0, 0, 0, 0
	  db 0, 0, 0, 0, 0, 0, 0, 0, 0
	  db 0, 0, 0, 0, 0, 0, 0, 0, 0
	  db 0, 0, 0, 0, 0FFh, 0, 0, 0, 0
	  db 0, 0, 0, 0, 0, 0, 0, 0, 0
	  db 0, 0, 0, 0, 0, 0, 0, 0, 0
	  db 0, 0, 0, 0, 0, 0, 0, 0, 0
	  db 0, 0, 0, 0, 0, 0, 0, 0, 0

;the bitmap of an energizer on the map (9x9 pixels)
Energizer db 0, 0, 0, 0, 0, 0, 0, 0, 0
		  db 0, 0, 0, 0FBh, 0FBh, 0FBh, 0, 0, 0
		  db 0, 0, 0FBh, 0FBh, 0FBh, 0FBh, 0FBh, 0, 0
		  db 0, 0, 0FBh, 0FBh, 0FBh, 0FBh, 0FBh, 0, 0
		  db 0, 0, 0FBh, 0FBh, 0FBh, 0FBh, 0FBh, 0, 0
		  db 0, 0, 0FBh, 0FBh, 0FBh, 0FBh, 0FBh, 0, 0
		  db 0, 0, 0FBh, 0FBh, 0FBh, 0FBh, 0FBh, 0, 0
		  db 0, 0, 0, 0FBh, 0FBh, 0FBh, 0, 0, 0
		  db 0, 0, 0, 0, 0, 0, 0, 0, 0

;the bitmap of a barrier on the map (9x9 pixels)		 
Barrier db 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h
		db 80h, 40h, 40h, 40h, 40h, 40h, 40h, 40h, 80h
		db 80h, 40h, 80h, 80h, 80h, 80h, 80h, 40h, 80h
		db 80h, 40h, 80h, 80h, 80h, 80h, 80h, 40h, 80h
		db 80h, 40h, 80h, 80h, 80h, 80h, 80h, 40h, 80h
		db 80h, 40h, 80h, 80h, 80h, 80h, 80h, 40h, 80h
		db 80h, 40h, 80h, 80h, 80h, 80h, 80h, 40h, 80h
		db 80h, 40h, 40h, 40h, 40h, 40h, 40h, 40h, 80h
		db 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h
	
;the game grid
;every number on the grid has its meaning in algorithm
;and also in display

;on display every number is an indicator of which out of the 3 bitmaps above to show on screen
;if non of them, we don't draw a thing on the screen meaning it will be left as the color black

;this numbers are the algorithmical meaning of this numbers
	;0 = not standable on
	;1 = standable on
	;2 = score point
	;3 = energizer
	;4 = teleport
	;5 = breakable wall (0 hits)
	;8 = breakable wall (3 hits, will break)
Grid db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	 db 0,2,2,2,2,2,2,2,2,2,2,5,2,2,2,2,2,2,2,2,2,2,0
	 db 0,3,5,5,5,2,5,5,5,5,2,5,2,5,5,5,5,2,5,5,5,3,0
	 db 0,2,5,5,5,2,5,5,5,5,2,5,2,5,5,5,5,2,5,5,5,2,0
	 db 0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0
	 db 0,2,5,5,5,2,5,2,5,5,5,5,5,5,5,2,5,2,5,5,5,2,0
	 db 0,2,2,2,2,2,5,2,2,2,2,5,2,2,2,2,5,2,2,2,2,2,0
	 db 0,5,5,5,5,2,5,5,5,5,1,5,1,5,5,5,5,2,5,5,5,5,0
	 db 0,5,5,5,5,2,5,1,1,1,1,1,1,1,1,1,5,2,5,5,5,5,0
	 db 0,5,5,5,5,2,5,1,5,5,5,5,5,5,5,1,5,2,5,5,5,5,0
	 db 4,1,1,1,1,2,1,1,5,5,5,5,5,5,5,1,1,2,1,1,1,1,4
	 db 0,5,5,5,5,2,5,1,5,5,5,5,5,5,5,1,5,2,5,5,5,5,0
	 db 0,5,5,5,5,2,5,1,1,1,1,1,1,1,1,1,5,2,5,5,5,5,0
	 db 0,5,5,5,5,2,5,1,5,5,5,5,5,5,5,1,5,2,5,5,5,5,0
	 db 0,2,2,2,2,2,2,2,2,2,2,5,2,2,2,2,2,2,2,2,2,2,0
	 db 0,3,5,5,5,2,5,5,5,5,2,5,2,5,5,5,5,2,5,5,5,3,0
	 db 0,2,2,2,5,2,2,2,2,2,2,1,2,2,2,2,2,2,5,2,2,2,0
	 db 0,5,5,2,5,2,5,2,5,5,5,5,5,5,5,2,5,2,5,2,5,5,0
	 db 0,2,2,2,2,2,5,2,2,2,2,5,2,2,2,2,5,2,2,2,2,2,0
	 db 0,2,5,5,5,5,5,5,5,5,2,5,2,5,5,5,5,5,5,5,5,2,0
	 db 0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0
	 db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

;the sizes of the grid
Grid_X equ 23d
Grid_Y equ 22d

;the grid will be changed during the game, therefore if we want to restart the game we must save the starting grid
Start_Grid db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		   db 0,2,2,2,2,2,2,2,2,2,2,5,2,2,2,2,2,2,2,2,2,2,0
		   db 0,3,5,5,5,2,5,5,5,5,2,5,2,5,5,5,5,2,5,5,5,3,0
		   db 0,2,5,5,5,2,5,5,5,5,2,5,2,5,5,5,5,2,5,5,5,2,0
		   db 0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0
		   db 0,2,5,5,5,2,5,2,5,5,5,5,5,5,5,2,5,2,5,5,5,2,0
		   db 0,2,2,2,2,2,5,2,2,2,2,5,2,2,2,2,5,2,2,2,2,2,0
		   db 0,5,5,5,5,2,5,5,5,5,1,5,1,5,5,5,5,2,5,5,5,5,0
		   db 0,5,5,5,5,2,5,1,1,1,1,1,1,1,1,1,5,2,5,5,5,5,0
		   db 0,5,5,5,5,2,5,1,5,5,5,5,5,5,5,1,5,2,5,5,5,5,0
		   db 4,1,1,1,1,2,1,1,5,5,5,5,5,5,5,1,1,2,1,1,1,1,4
		   db 0,5,5,5,5,2,5,1,5,5,5,5,5,5,5,1,5,2,5,5,5,5,0
		   db 0,5,5,5,5,2,5,1,1,1,1,1,1,1,1,1,5,2,5,5,5,5,0
		   db 0,5,5,5,5,2,5,1,5,5,5,5,5,5,5,1,5,2,5,5,5,5,0
		   db 0,2,2,2,2,2,2,2,2,2,2,5,2,2,2,2,2,2,2,2,2,2,0
		   db 0,3,5,5,5,2,5,5,5,5,2,5,2,5,5,5,5,2,5,5,5,3,0
		   db 0,2,2,2,5,2,2,2,2,2,2,1,2,2,2,2,2,2,5,2,2,2,0
		   db 0,5,5,2,5,2,5,2,5,5,5,5,5,5,5,2,5,2,5,2,5,5,0
		   db 0,2,2,2,2,2,5,2,2,2,2,5,2,2,2,2,5,2,2,2,2,2,0
		   db 0,2,5,5,5,5,5,5,5,5,2,5,2,5,5,5,5,5,5,5,5,2,0
		   db 0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0
		   db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

;a bitmap to hold the pictures of the characters
;instead of reading the bitmap from a file every time we want to show them on screen
;we read the file's bitmap once and save it here
;reading from data segment takes less time the from a file
;in addition we can close the files and open new once instead
PacmanR_Bitmap db 81 dup (?) ;9x9 pixels
PacmanL_Bitmap db 81 dup (?) ;9x9 pixels
PacmanU_Bitmap db 81 dup (?) ;9x9 pixels
PacmanD_Bitmap db 81 dup (?) ;9x9 pixels
RedGhost_Bitmap db 81 dup (?) ;9x9 pixels
BlueGhost_Bitmap db 81 dup (?) ;9x9 pixels
PinkGhost_Bitmap db 81 dup (?) ;9x9 pixels
OrangeGhost_Bitmap db 81 dup (?) ;9x9 pixels
DeadGhost_Bitmap db 81 dup (?) ;9x9 pixels
HuntedGhost_Bitmap db 81 dup (?) ;9x9 pixels

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;A* algorithm area of data segment
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;the sizes of all the following arrays are the smallest sizes possible
;smaller array sizes will make the A* algorithm not work
;and could possibly crush the game
;the sizes were tested on a code in c# where I checked what was the biggest number of values
;at a time in each array calculating A* algorithm from every dot on the grid to every other dot on the grid

Nodes db 3030 dup (?) ;23 times 22 times 3
;3 words for each node (Parent_X value, Parent_Y value, G value)

OpenList dd 22 dup (?)
OpenList_Head dw offset OpenList
OpenList_Tail dw offset OpenList
OpenList_Length dw 88

ClosedList dd 225 dup (?)
ClosedList_Head dw offset ClosedList
ClosedList_Tail dw offset ClosedList
ClosedList_Length dw 900

Path dd 41 dup (?)
Path_Head dw offset Path
Path_Tail dw offset Path ;the tail is the first pixel, the head is the last pixel
Path_Length dw 164 

;an array showing all the directions the user using A* algorithm can move to
Directions dw 1,0,-1,0,0,1,0,-1

;when a ghost dies it uses A* algorithm to find the fastest way back to its spawn
;therefore we must save a path for each ghost
;incase there will be more than one ghost dead
RedGhost_Path dd 41 dup (?)
RedGhost_Path_Head dw offset RedGhost_Path
RedGhost_Path_Tail dw offset RedGhost_Path ;the tail is the first pixel, the head is the last pixel
RedGhost_Path_Length dw 164 

BlueGhost_Path dd 41 dup (?)
BlueGhost_Path_Head dw offset BlueGhost_Path
BlueGhost_Path_Tail dw offset BlueGhost_Path ;the tail is the first pixel, the head is the last pixel
BlueGhost_Path_Length dw 164 

PinkGhost_Path dd 41 dup (?)
PinkGhost_Path_Head dw offset PinkGhost_Path
PinkGhost_Path_Tail dw offset PinkGhost_Path ;the tail is the first pixel, the head is the last pixel
PinkGhost_Path_Length dw 164 

OrangeGhost_Path dd 41 dup (?)
OrangeGhost_Path_Head dw offset OrangeGhost_Path
OrangeGhost_Path_Tail dw offset OrangeGhost_Path ;the tail is the first pixel, the head is the last pixel
OrangeGhost_Path_Length dw 164 



CODESEG	
start:
	 mov ax, @data
	 mov ds,ax
	 call SetGraphicMode
	 
SetGameVariables:
	 SetVariables
	 
;;;;;;;;;;
;main menu	 
;;;;;;;;;;

	 ;try to open the menu files, if succeeded show them, else exit the application
	 push ax ;1 extra push for the returing value
	 call OpenStartFiles
	 pop ax
	 cmp ax, 1
	 je StartFilesOpened
	 jmp EXIT
	 
StartFilesOpened:
	 push ax
	 call ShowMainMenu
	 pop ax
	 cmp ax, 0
	 je MainLoop
	 jmp Exit

;;;;;;;;;;;;;;;;;
;end of main menu
;;;;;;;;;;;;;;;;;
	
MainLoop:	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;preparation for the main loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	 ;now we copy the bitmap of pacman and the ghosts
	 push ax ;1 extra push for the returning value
	 call OpenCharacters
	 pop ax
	 cmp ax, 1
	 je ContinueMainLoopFileCheck
	 jmp EXIT

ContinueMainLoopFileCheck:
	;read the characters headers, copy thier bitmaps and close all of the character files
	 call HandleCharacters
	 
	 push ax ;1 extra push for the returing value
	 call OpenNumbers
	 pop ax
	 cmp ax, 1
	 je MainLoopFileOpened
	 jmp EXIT
	 
MainLoopFileOpened:
	 call ReadNumbersHeaders
	 
	 ;create the map and show the current score (0) plus the amount of hearts
	 call SetMap
	 
	 ;draw all the characters on the map
	 DrawPacmanR
	 DrawRedGhost
	 DrawBlueGhost
	 DrawPinkGhost
	 DrawOrangeGhost
	 
	 ;a loop at the start of the game
	 ;this loop is so the player will have a few seconds to get ready
	 mov cx, 5
StartDelay:
	;SetStartDirection will check if the player gave an input to change the starting moving direction of pacman
	 call SetStartDirection
	 call MakeDelay
	 loop StartDelay

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;end of main loop preparation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;
;Main loop
;;;;;;;;;;
	 
MainLoop_Start:
;if pacman has 0 lives left or he ate all the points on the map the main loop will end
	push ax ;1 extra push for the returning value
	call CheckForGameEnd
	pop ax
	cmp ax, 0
	je @@GameContinues
	jmp Exit_Main_Loop
	
@@GameContinues:
	;if pacman dies, reset the game
	cmp [Pacman_Alive], 0
	jne Pacman_Is_Alive
	
	call ResetRound
	
Pacman_Is_Alive:

	;make all of the ghost's move
	call MoveGhosts
	
	;check if any of the ghosts bumped into pacman
	call CheckContact
	cmp [Pacman_Alive], 0
	je After_Pacman_Move ;if pacman died after the ghost's move, we dont want him to make a move
	
	;check if there was a keyboard input to change direction
	call CheckDirection
	
	;move pacman and check if pacman bumped into one of the ghosts
	call MovePacman	
	
	call CheckContact
	cmp [Pacman_Alive], 0
	je After_Pacman_Move
	
	;if the energizer mode is on this procedure will check if to turn in off
	call ResetEnergizer
	
After_Pacman_Move:
	;score the current score on screen
	call ShowScoreDecimal

	call MakeDelay
	
	jmp MainLoop_Start
	
;;;;;;;;;;;;;;;;;
;end of main loop
;;;;;;;;;;;;;;;;;

;;;;;;;;;;;
;end screen
;;;;;;;;;;;
	
;this is the end of the main loop
Exit_Main_Loop:
	call CloseNumbers
	
	;after the game is over we show either the victory or defeat screen, depending on the situation
	cmp [byte Lives], 0
	je Show_Defeat
	
	OpenVictory
	cmp ax, 1
	je Continue_Victory
	jmp ResetGame
	
Continue_Victory:
	call ShowVictoryScreen
	jmp ResetGame
	
Show_Defeat:
	OpenDefeat
	cmp ax, 0
	je ResetGame
	
	call ShowDefeatScreen
	
;;;;;;;;;;;;;;;;;;;;;;;;;;
;end of end screen section
;;;;;;;;;;;;;;;;;;;;;;;;;;

	;show the screen for a few seconds
ResetGame:
	 mov cx, 0Fh
StartDelay2:	
	 call MakeDelay
	 loop StartDelay2
	
	;clean the screen
	call CleanScreen
	;reset the grid
	call ReSetClassicGrid
	;go back to the main menu
	jmp SetGameVariables
	
EXIT:    
	
	call ExitGraphicMode
	
	mov ax, 4C00h
  	int 21h
	
	
	
;--------------------------------------------------------------------------------------------
;               object 							  | way of transfering | way of accessability
;--------------------------------------------------------------------------------------------
;boolean indicating if to jump to EXIT (1 = true) | stack segment 	   | [sp]
proc ShowMainMenu
;this procedure counts on the fact that the start files are already open
;the procedure reads the headers
;show the menu and the play and exit buttons
;and wait for pressing of one of the buttons
;then closes the start files

	 push bp
	 mov bp, sp

	 call ReadStartFilesHeaders
	 
	 ;now we create the start menu
	 ReadMenuPallete
	 SyncPallete	 
	 ShowMenu
	 
	 ReadStartPallete
	 SyncPallete
	 ShowStartButton
	 
	 ReadExitPallete
	 SyncPallete
	 ShowExitButton
	 
	 ;wait untill the start or exit buttons are pressed
	 mov ax, 1
	 int 33h ;show the mouse
	 
	 push ax ;1 extra push for the returning value
	 call SetButton
	 pop ax
	 cmp ax, 1
	 je StartGameButtonPressed
	 
	 mov [word bp + 4], 1
	 jmp @@EndProc
	 
StartGameButtonPressed:
	 mov [word bp + 4], 0

	 mov ax, 2
	 int 33h ;hide the mouse
	 call CleanScreen

@@EndProc:	
	 call CloseStartFiles
 
	 pop bp
	 ret
endp ShowMainMenu

;this procedure assumes the file is open
;the procedure reads the headers
;reads the pallete
;syncs the screen pallete with the file's pallete
;draws the bitmap on the screen
;closes the file
proc ShowVictoryScreen
	ReadVictoryHeader
	ReadEndMessagePallete
	SyncPallete
	DrawVictory
	CloseEndMessage
	
	ret
endp ShowVictoryScreen

;this procedure assumes the file is open
;the procedure reads the headers
;reads the pallete
;syncs the screen pallete with the file's pallete
;draws the bitmap on the screen
;closes the file
proc ShowDefeatScreen
	ReadDefeatHeader
	ReadEndMessagePallete
	SyncPallete
	call UnShowHearts
	DrawDefeat
	CloseEndMessage
	
	ret
endp ShowDefeatScreen

proc SetMap
;show the map
;show the amount of lives pacman has
;show the word score plus the current score of pacman
;the score at the start of the game is zero

	push ax

	call DrawMap
	call ShowHearts
	call ShowScoreDecimal
	
	mov ax, 0
	push ax
	mov ax, 54
	add ax, 400h
	push ax
	mov ax, [Score_Handler]
	push ax
	xor al, al
	call ChangeFileCursorPosition
	
	ShowScore
	
	pop ax
	ret
endp SetMap

;-----------------------------------------------------------------
;               object | way of transfering | way of accessability
;-----------------------------------------------------------------	
;Local Variables	   |			   		|
;current left position | stack segment 		| [bp - 2]
;current top position  | stack segment 		| [bp - 4]
proc DrawMap
	push bp
	mov bp, sp
	sub sp, 4
	
	push ax
	push bx
	push cx
	push dx
	push si
	
	mov [word bp - 2], 0
	mov [word bp - 4], 0
	lea si, [Grid]

	mov cx, Grid_Y
@@Vertical:
	push cx
	mov [word bp - 2], 0
	
	mov cx, Grid_X
@@Horizontal:
	cmp [byte si], 0
	je @@DrawBarrier
	cmp [byte si], 5
	je @@DrawBarrier
	cmp [byte si], 2
	je @@DrawScore
	cmp [byte si], 3
	je @@DrawEnergizer
	jmp @@DrawNothing
	
@@DrawBarrier:
	lea ax, [Barrier]
	push ax
	jmp @@Continue
	
@@DrawScore:
	inc [word Total_Points] ;every time there is a point in the grid we increase the total score counter
	lea ax, [Point]
	push ax
	jmp @@Continue
	
@@DrawEnergizer:
	lea ax, [Energizer]
	push ax
	jmp @@Continue
	
@@DrawNothing:
	inc si
	inc [word bp - 2]
	jmp @@JMP
	
@@Continue:
	mov ax, [bp - 2]
	push ax ;x value
	mov ax, [bp - 4]
	push ax ;y value
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call DrawBitmap
	
	inc si
	inc [word bp - 2]

@@JMP:	
	loop @@Horizontal
	
	inc [word bp - 4]
	
	pop cx
	loop @@Vertical
	
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	
	add sp, 4
	pop bp
	ret
endp DrawMap

;;;;;;;;;;;;;;;;;;
;area of main loop
;;;;;;;;;;;;;;;;;;

proc MakeDelay
	push cx

	mov cx, 8
@@Delay1:
	push cx
	mov cx, 0FFFFh
@@Delay2:
	loop @@Delay2
	pop cx
	loop @@Delay1
	
	pop cx
	
	ret
endp MakeDelay

;------------------------------------------------------------------------------
;                     object        | way of transfering | way of accessability
;------------------------------------------------------------------------------
;OUTPUT								|					 |
;what button was pressed 			| stack segment 	 | [sp]
;1 = start button, -1 = exit button |					 |
proc SetButton
	push bp
	mov bp, sp

	push ax
	
@@ButtonNotPressed:
	 mov ax, 3
	 int 33h
	 and bx, 1 ;we want to check if the left button has been pressed
	 
	 cmp bx, 0
	 je @@ButtonNotPressed
	 
	 ;now that we know that the left mouse button has been pressed, we check if it is in the right location
	 shr cx, 1 ;the mouse is 640 by 200 but the screen is 320 by 200
	 
	 ;here we check if the start button was pressed 
	 cmp cx, [Start_Left]
	 jb @@CheckExitButton
	 
	 mov ax, [Start_Left]
	 add ax, Start_X
	 cmp cx, ax
	 jae @@CheckExitButton
	 
	 cmp dx, [Start_Top]
	 jb @@CheckExitButton
	 
	 mov ax, [Start_Top]
	 add ax, Start_Y
	 cmp dx, ax
	 jae @@CheckExitButton
	 
	 jmp @@StartButtonPressed
	 
@@CheckExitButton:
	;here we check if the exit button was pressed
	 cmp cx, [Exit_Left]
	 jb @@ButtonNotPressed
	 
	 mov ax, [Exit_Left]
	 add ax, Exit_X
	 cmp cx, ax
	 jae @@ButtonNotPressed
	 
	 cmp dx, [Exit_Top]
	 jb @@ButtonNotPressed
	 
	 mov ax, [Exit_Top]
	 add ax, Exit_Y
	 cmp dx, ax
	 jae @@ButtonNotPressed

	jmp @@ExitButtonPressed
	
@@StartButtonPressed:
	mov [word bp + 4], 1
	jmp @@EndProc
	
@@ExitButtonPressed:
	mov [word bp + 4], 0FFFFh
	
@@EndProc:
	 pop ax
	 
	 pop bp
	 ret
endp SetButton

proc ReSetClassicGrid
;moves the values of Start_Grid to Grid
	push ax
	push bx
	push cx
	push si

	lea si, [Grid]
	lea bx, [Start_Grid]

	mov cx, Grid_Y
@@Vertical:
	push cx
	
	mov cx, Grid_X
@@Horizontal:
	mov al, [byte bx]
	mov [byte si], al
	
	inc bx
	inc si

	loop @@Horizontal
	
	pop cx
	loop @@Vertical
	
	pop si
	pop cx
	pop bx
	pop ax
	
	ret
endp ReSetClassicGrid

;-------------------------------------------------------------------
;                  object| way of transfering | way of accessability
;-------------------------------------------------------------------
;OUTPUT					 |				 	  |
;boolean (1 = game over) | stack segment 	  | [sp]
proc CheckForGameEnd
	push bp
	mov bp, sp
	
	push ax
	
	;if the amount of lives is 0 or that the amount of points eaten is equal to the total amout of points return 1
	;else return 0
	cmp [byte Lives], 0
	je @@GameOver
	
	mov ax, [Points_Eaten]
	cmp ax, [Total_Points]
	je @@GameOver

@@GameNotOver:
	mov [word bp + 4], 0
	jmp @@EndProc
	
@@GameOver:
	mov [word bp + 4], 1
	
@@EndProc:
	pop ax
	
	pop bp
	ret
endp CheckForGameEnd

proc MovePacman
;moves pacman according to his current direction

	cmp [Pacman_Direction], 1
	jne @@CheckLeft
	jmp @@Right
	
@@CheckLeft:
	cmp [Pacman_Direction], 2
	jne @@CheckUp
	jmp @@Left
	
@@CheckUp:
	cmp [Pacman_Direction], 3
	jne @@CheckDown
	jmp @@Up
	
@@CheckDown:
	jmp @@Down
	
@@Right:
	MovePacmanR
	jmp @@EndProc
@@Left:
	MovePacmanL
	jmp @@EndProc
@@Up:
	MovePacmanU
	jmp @@EndProc
@@Down:
	MovePacmanD
@@EndProc:
	ret
endp MovePacman

;this procedure will check if the player changed pacman's direction at the start delay
;is so it will change the direction of pacman and redraw him, looking to the new direction
;the diffrence between this procedure and CheckDirection is that here we don't check the if pacman turns into a wall
proc SetStartDirection
	;check if one of the arrows was pressed
	mov ah, 1
	int 16h
	jnz @@Continue
	jmp @@Move
	
@@Continue:
	xor ah, ah
	int 16h
	
	cmp ah, 50h ;scan code for down arrow
	je @@SetDown
	cmp ah, 4Bh ;scan code for left arrows
	je @@SetLeft
	cmp ah, 4Dh
	je @@SetRight ;scan code for right arrow
	cmp ah, 48h
	je @@SetUp ;scan code for up arrow
	
	
@@SetRight:
	mov [Pacman_Direction], 1
	jmp @@ReDraw

@@SetLeft:
	mov [Pacman_Direction], 2
	jmp @@ReDraw
	
@@SetUp:
	mov [Pacman_Direction], 3
	jmp @@ReDraw
	
@@SetDown:	
	mov [Pacman_Direction], 4

@@ReDraw:
	call DrawPacmanToDirection
	
@@Move:
	ret
endp SetStartDirection

proc DrawPacmanToDirection
	cmp [Pacman_Direction], 1
	je @@Right
	cmp [Pacman_Direction], 2
	je @@Left
	cmp [Pacman_Direction], 3
	je @@Up
	jmp @@Down
	
@@Right:
	DrawPacmanR
	jmp @@EndProc
	
@@Left:
	DrawPacmanL
	jmp @@EndProc
	
@@Up:
	DrawPacmanU
	jmp @@EndProc

@@Down:
	DrawPacmanD
	jmp @@EndProc

@@EndProc:
	ret
endp DrawPacmanToDirection

proc CheckDirection
	;check if one of the arrows was pressed
	mov ah, 1
	int 16h
	jnz @@Continue
	jmp @@Move
	
@@Continue:
	xor ah, ah
	int 16h
	
	cmp ah, 50h ;scan code for down arrow
	je @@SetDown
	cmp ah, 4Bh ;scan code for left arrows
	je @@SetLeft
	cmp ah, 4Dh
	je @@SetRight ;scan code for right arrow
	cmp ah, 48h
	je @@SetUp ;scan code for up arrow
	
	
@@SetRight:
	;here we check if pacman can turn towards the direction the player wanted to
	;this is to prevent players from turning towards a wall
	push ax ;1 extra push for the returning value
	mov ax, [Pacman_Left]
	inc ax
	push ax
	mov ax, [Pacman_Top]
	push ax
	call CheckPlaceInGrid
	pop ax
	cmp ax, 0
	je @@Move
	cmp ax, 5
	jae @@Move

	mov [Pacman_Direction], 1
	jmp @@Move
	
@@SetLeft:
	;here we check if pacman can turn towards the direction the player wanted to
	;this is to prevent players from turning towards a wall
	push ax ;1 extra push for the returning value
	mov ax, [Pacman_Left]
	dec ax
	push ax
	mov ax, [Pacman_Top]
	push ax
	call CheckPlaceInGrid
	pop ax
	cmp ax, 0
	je @@Move
	cmp ax, 5
	jae @@Move

	mov [Pacman_Direction], 2
	jmp @@Move
	
@@SetUp:
	;here we check if pacman can turn towards the direction the player wanted to
	;this is to prevent players from turning towards a wall
	push ax ;1 extra push for the returning value
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	dec ax
	push ax
	call CheckPlaceInGrid
	pop ax
	cmp ax, 0
	je @@Move
	cmp ax, 5
	jae @@Move

	mov [Pacman_Direction], 3
	jmp @@Move
	
@@SetDown:	
	;here we check if pacman can turn towards the direction the player wanted to
	;this is to prevent players from turning towards a wall
	push ax ;1 extra push for the returning value
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	inc ax
	push ax
	call CheckPlaceInGrid
	pop ax
	cmp ax, 0
	je @@Move
	cmp ax, 5
	jae @@Move

	mov [Pacman_Direction], 4
	
@@Move:
	ret
endp CheckDirection

;--------------------------------------------------------------------------------
;                     object      	  | way of transfering | way of accessability
;--------------------------------------------------------------------------------
;left place in grid				 	  | stack segment 	   | [bp + 6]
;top place in grid				 	  | stack segment 	   | [bp + 4]
;OUTPUT							 	  |  	  			   |
;value of said place in the grid 	  | stack segment 	   | [sp]
proc CheckPlaceInGrid
	push bp
	mov bp, sp
	
	push ax
	push bx
	push dx
	
	;offset = (Top * Grid.X) + Left + Grid.Offset
	mov ax, [bp + 4]
	mov bx, Grid_X
	xor dx, dx
	mul bx
	add ax, [bp + 6]
	add ax, offset Grid
	mov bx, ax
	
	;we put in ax a word from the grid
	mov ax, [bx]
	;make and function to have only the first byte (the byte we were looking for)
	and ax, 0Fh
	
	mov [bp + 8], ax
	
	pop dx
	pop bx
	pop ax
	
	pop bp
	ret 4
endp CheckPlaceInGrid

proc MoveGhosts
	call MoveRedGhostProc
	call MoveBlueGhostProc
	call MovePinkGhostProc	
	call MoveOrangeGhostProc
	
	ret
endp MoveGhosts

Proc MoveRedGhostProc
;if the ghost is dead use the move back to spawn procedure
	cmp [RedGhost_Alive], 1
	je @@GhostAlive
	jmp @@GhostDead

@@GhostAlive:
;if pacman ate an energizer move the ghost as an hunted ghost
;else move as a normal ghost
	cmp [Energizer_Mode], 0
	jne @@EnergizerOn
	jmp @@EnergizerOff
	
@@EnergizerOn:
;if the ghost was already eaten by pacman and it respawned move it as a normal ghost
;else move it as a hunted ghost
	cmp [RedGhost_Hunted], 0
	jne @@Continue_Energizer_On
	jmp @@EnergizerOff
	
@@Continue_Energizer_On:
;if energizer mode is about to be deactivated show the ghost bipping
;else just ghow the hunted ghost
	push ax
	call IsBippingModeActivated
	pop ax
	cmp ax, 0
	je @@BippingIsNotActivated
	
	call RedGhostBipping
	jmp @@EndProc
	
@@BippingIsNotActivated:
	MoveHuntedRedGhost
	jmp @@EndProc
	
@@EnergizerOff:
	MoveRedGhost
	jmp @@EndProc
	
@@GhostDead:
	MoveRedGhostBackToSpawn
	
@@EndProc:
	ret
endp MoveRedGhostProc

Proc MoveBlueGhostProc
;if the ghost is dead use the move back to spawn procedure
	cmp [BlueGhost_Alive], 1
	je @@GhostAlive
	jmp @@GhostDead

@@GhostAlive:
;if pacman ate an energizer move the ghost as an hunted ghost
;else move as a normal ghost
	cmp [Energizer_Mode], 0
	jne @@EnergizerOn
	jmp @@EnergizerOff
	
@@EnergizerOn:
;if the ghost was already eaten by pacman and it respawned move it as a normal ghost
;else move it as a hunted ghost
	cmp [BlueGhost_Hunted], 0
	jne @@Continue_Energizer_On
	jmp @@EnergizerOff
	
@@Continue_Energizer_On:
;if energizer mode is about to be deactivated show the ghost bipping
;else just ghow the hunted ghost
	push ax
	call IsBippingModeActivated
	pop ax
	cmp ax, 0
	je @@BippingIsNotActivated
	
	call BlueGhostBipping
	jmp @@EndProc
	
@@BippingIsNotActivated:
	MoveHuntedBlueGhost
	jmp @@EndProc
	
@@EnergizerOff:
	MoveBlueGhost
	jmp @@EndProc
	
@@GhostDead:
	MoveBlueGhostBackToSpawn

@@EndProc:
	ret
endp MoveBlueGhostProc

Proc MovePinkGhostProc
;if the ghost is dead use the move back to spawn procedure
	cmp [PinkGhost_Alive], 1
	je @@GhostAlive
	jmp @@GhostDead

@@GhostAlive:
;if pacman ate an energizer move the ghost as an hunted ghost
;else move as a normal ghost
	cmp [Energizer_Mode], 0
	jne @@EnergizerOn
	jmp @@EnergizerOff
	
@@EnergizerOn:
;if the ghost was already eaten by pacman and it respawned move it as a normal ghost
;else move it as a hunted ghost
	cmp [PinkGhost_Hunted], 0
	jne @@Continue_Energizer_On
	jmp @@EnergizerOff
	
@@Continue_Energizer_On:
;if energizer mode is about to be deactivated show the ghost bipping
;else just ghow the hunted ghost
	push ax
	call IsBippingModeActivated
	pop ax
	cmp ax, 0
	je @@BippingIsNotActivated
	
	call PinkGhostBipping
	jmp @@EndProc
	
@@BippingIsNotActivated:
	MoveHuntedPinkGhost
	jmp @@EndProc
	
@@EnergizerOff:
	MovePinkGhost
	jmp @@EndProc
	
@@GhostDead:
	MovePinkGhostBackToSpawn

@@EndProc:
	ret
endp MovePinkGhostProc

Proc MoveOrangeGhostProc
;if the ghost is dead use the move back to spawn procedure
	cmp [OrangeGhost_Alive], 1
	je @@GhostAlive
	jmp @@GhostDead

@@GhostAlive:
;if pacman ate an energizer move the ghost as an hunted ghost
;else move as a normal ghost
	cmp [Energizer_Mode], 0
	jne @@EnergizerOn
	jmp @@EnergizerOff
	
@@EnergizerOn:
;if the ghost was already eaten by pacman and it respawned move it as a normal ghost
;else move it as a hunted ghost
	cmp [OrangeGhost_Hunted], 0
	jne @@Continue_Energizer_On
	jmp @@EnergizerOff
	
@@Continue_Energizer_On:
;if energizer mode is about to be deactivated show the ghost bipping
;else just ghow the hunted ghost	
	push ax
	call IsBippingModeActivated
	pop ax
	cmp ax, 0
	je @@BippingIsNotActivated
	
	call OrangeGhostBipping
	jmp @@EndProc
	
@@BippingIsNotActivated:
	MoveHuntedOrangeGhost
	jmp @@EndProc
	
@@EnergizerOff:
	MoveOrangeGhost
	jmp @@EndProc
	
@@GhostDead:
	MoveOrangeGhostBackToSpawn

@@EndProc:
	ret
endp MoveOrangeGhostProc

;bipping functions
;if the current bitmap is hunted, draw hunted ghost and switch to regular bitmap
;if the current bitmap is regular, draw regular ghost and switch to the hunted bitmap
proc RedGhostBipping
	cmp [RedGhost_Hunted_Regular_Bitmap], 1
	je @@DrawRegularBitmap
	jmp @@DrawHuntedBitmap

@@DrawRegularBitmap:
	MoveRedGhost
	mov [RedGhost_Hunted_Regular_Bitmap], 0
	jmp @@EndProc

@@DrawHuntedBitmap:
	MoveHuntedRedGhost
	mov [RedGhost_Hunted_Regular_Bitmap], 1
	
@@EndProc:
	ret
endp RedGhostBipping

proc BlueGhostBipping
	cmp [BlueGhost_Hunted_Regular_Bitmap], 1
	je @@DrawRegularBitmap
	jmp @@DrawHuntedBitmap

@@DrawRegularBitmap:
	MoveBlueGhost
	mov [BlueGhost_Hunted_Regular_Bitmap], 0
	jmp @@EndProc

@@DrawHuntedBitmap:
	MoveHuntedBlueGhost
	mov [BlueGhost_Hunted_Regular_Bitmap], 1
	
@@EndProc:
	ret
endp BlueGhostBipping

proc PinkGhostBipping
	cmp [PinkGhost_Hunted_Regular_Bitmap], 1
	je @@DrawRegularBitmap
	jmp @@DrawHuntedBitmap

@@DrawRegularBitmap:
	MoveHuntedPinkGhostRegularBitmap
	mov [PinkGhost_Hunted_Regular_Bitmap], 0
	jmp @@EndProc

@@DrawHuntedBitmap:
	MoveHuntedPinkGhost
	mov [PinkGhost_Hunted_Regular_Bitmap], 1
	
@@EndProc:
	ret
endp PinkGhostBipping

proc OrangeGhostBipping
	cmp [OrangeGhost_Hunted_Regular_Bitmap], 1
	je @@DrawRegularBitmap
	jmp @@DrawHuntedBitmap

@@DrawRegularBitmap:
	MoveHuntedOrangeGhostRegularBitmap
	mov [OrangeGhost_Hunted_Regular_Bitmap], 0
	jmp @@EndProc

@@DrawHuntedBitmap:
	MoveHuntedOrangeGhost
	mov [OrangeGhost_Hunted_Regular_Bitmap], 1
	
@@EndProc:
	ret
endp OrangeGhostBipping

;------------------------------------------------------------------------------------------------------------
;               object 											  | way of transfering | way of accessability
;------------------------------------------------------------------------------------------------------------
;OUTPUT															  |				 	   |
;a boolean indicating if the bipping mode is acitvated (1 = true) | stack segment 	   | [sp]
proc IsBippingModeActivated
	push bp
	mov bp, sp

	push ax
	push cx
	push dx
	
	;saves the current system timer in cx:dx
	;32 bit
	mov ah, 0
	int 1Ah
	
	cmp cx, 0
	jne @@True
	cmp dx, [Energizer_Effect_Bipping_Time]
	jae @@True
	
@@False:
	mov [word bp + 4], 0
	jmp @@EndProc

@@True:
	mov [word bp + 4], 1
	jmp @@EndProc

@@EndProc:
	pop dx
	pop cx
	pop ax
	
	pop bp
	ret
endp IsBippingModeActivated

proc CheckContact
	call CheckRedGhostContact
	call CheckBlueGhostContact
	call CheckPinkGhostContact
	call CheckOrangeGhostContact
	
	ret
endp CheckContact

proc CheckRedGhostContact
	push ax
	
	;if pacman or the ghost is dead do not check for contact
	cmp [Pacman_Alive], 0
	je @@EndProc
	cmp [RedGhost_Alive], 0
	je @@EndProc
	
	;check if there is contact between the ghost and pacman
	RedGhostContact
	cmp ax, 0 ;0 = no contact
	je @@EndProc
	
	;if energizer move is off
	;make pacman dead and decrease his live counter by 1
	;else make the ghost dead and incease the score by 200 (value of killing a ghost)
	cmp [Energizer_Mode], 0
	je @@EnergizerModeOff
	
@@EnergizerModeOn:
	cmp [RedGhost_Hunted], 0
	je @@EnergizerModeOff

	add [Current_Score], 200
	mov [RedGhost_Alive], 0
	mov [byte RedGhost_Direction], 2 ;reset the direction to when the ghost respawns
	jmp @@EndProc
	
@@EnergizerModeOff:
	mov [Pacman_Alive], 0
	dec [byte Lives]
	
@@EndProc:
	pop ax
	
	ret
endp CheckRedGhostContact

proc CheckBlueGhostContact
	push ax
	
	;if pacman or the ghost is dead do not check for contact
	cmp [Pacman_Alive], 0
	je @@EndProc
	cmp [BlueGhost_Alive], 0
	je @@EndProc
	
	;check if there is contact between the ghost and pacman
	BlueGhostContact
	cmp ax, 0 ;0 = no contact
	je @@EndProc
	
	;if energizer move is off
	;make pacman dead and decrease his live counter by 1
	;else make the ghost dead and incease the score by 200 (value of killing a ghost)
	cmp [Energizer_Mode], 0
	je @@EnergizerModeOff
	
@@EnergizerModeOn:
	cmp [BlueGhost_Hunted], 0
	je @@EnergizerModeOff

	add [Current_Score], 200
	mov [BlueGhost_Alive], 0
	jmp @@EndProc
	
@@EnergizerModeOff:
	mov [Pacman_Alive], 0
	dec [byte Lives]
	
@@EndProc:
	pop ax
	
	ret
endp CheckBlueGhostContact

proc CheckPinkGhostContact
	push ax
	
	;if pacman or the ghost is dead do not check for contact
	cmp [Pacman_Alive], 0
	je @@EndProc
	cmp [PinkGhost_Alive], 0
	je @@EndProc
	
	;check if there is contact between the ghost and pacman
	PinkGhostContact
	cmp ax, 0 ;0 = no contact
	je @@EndProc
	
	;if energizer move is off
	;make pacman dead and decrease his live counter by 1
	;else make the ghost dead and incease the score by 200 (value of killing a ghost)
	cmp [Energizer_Mode], 0
	je @@EnergizerModeOff
	
@@EnergizerModeOn:
	cmp [PinkGhost_Hunted], 0
	je @@EnergizerModeOff

	add [Current_Score], 200
	mov [PinkGhost_Alive], 0
	mov [PinkGhost_Quarter], -1 ;reset the quarter of pacman for the next time pacman will eat an energizer
	jmp @@EndProc
	
@@EnergizerModeOff:
	mov [Pacman_Alive], 0
	dec [byte Lives]
	
@@EndProc:
	pop ax
	
	ret
endp CheckPinkGhostContact

proc CheckOrangeGhostContact
	push ax
	
	;if pacman or the ghost is dead do not check for contact
	cmp [Pacman_Alive], 0
	je @@EndProc
	cmp [OrangeGhost_Alive], 0
	je @@EndProc
	
	;check if there is contact between the ghost and pacman
	OrangeGhostContact
	cmp ax, 0 ;0 = no contact
	je @@EndProc
	
	;if energizer move is off
	;make pacman dead and decrease his live counter by 1
	;else make the ghost dead and incease the score by 200 (value of killing a ghost)
	cmp [Energizer_Mode], 0
	je @@EnergizerModeOff
	
@@EnergizerModeOn:
	cmp [OrangeGhost_Hunted], 0
	je @@EnergizerModeOff

	add [Current_Score], 200
	mov [OrangeGhost_Alive], 0
	jmp @@EndProc
	
@@EnergizerModeOff:
	mov [Pacman_Alive], 0
	dec [byte Lives]
	
@@EndProc:
	pop ax
	
	ret
endp CheckOrangeGhostContact

proc ResetEnergizer
	push ax
	push cx
	push dx
	
	;if energizer mode is off
	;no need to check to turn in off
	cmp [Energizer_Mode], 0
	je @@EndProc
	
	;saves the current system timer in cx:dx
	;32 bit
	xor ah, ah
	int 1Ah
	
	cmp cx, 0
	jne @@ResetEnergizer
	
	cmp dx, [Energizer_Effect]
	jae @@ResetEnergizer
	jmp @@EndProc
	
@@ResetEnergizer:
	mov [Energizer_Mode], 0

@@EndProc:
	pop dx
	pop cx
	pop ax
	
	ret
endp ResetEnergizer

proc ResetRound
	push cx

	;undraw the ghosts
	call UnDrawRedGhost
	call UnDrawBlueGhost
	call UnDrawPinkGhost
	call UnDrawOrangeGhost
	call UnDrawPacman

	;reset everyones location on the grid
	mov [Pacman_Left], 11
	mov [Pacman_Top], 16
	mov [RedGhost_Left], 0Bh
	mov [RedGhost_Top], 8
	mov [BlueGhost_Left], 0Bh
	mov [BlueGhost_Top], 8
	mov [PinkGhost_Left], 0Bh
	mov [PinkGhost_Top], 8
	mov [OrangeGhost_Left], 0Bh
	mov [OrangeGhost_Top], 8
	
	;make the energizer mode unactive
	mov [Energizer_Mode], 0 ;not active
	
	;reset the direction
	mov [Pacman_Direction], 1
	mov [byte RedGhost_Direction], 2
	
	;make everyone alive
	mov [Pacman_Alive], 1
	mov [RedGhost_Alive], 1
	mov [BlueGhost_Alive], 1
	mov [PinkGhost_Alive], 1
	mov [OrangeGhost_Alive], 1
	
	;deactivate hunted mode
	mov [RedGhost_Hunted], 0
	mov [BlueGhost_Hunted], 0
	mov [PinkGhost_Hunted], 0
	mov [OrangeGhost_Hunted], 0
	
	mov [PinkGhost_Quarter], -1
	
	;show the new amount of hearts
	call UnShowHearts
	call ShowHearts
	
	;redraw pacman and the ghosts at thier new location
	DrawPacmanR
	DrawRedGhost
	DrawBlueGhost
	DrawPinkGhost
	DrawOrangeGhost
	
	mov cx, 5
@@StartDelay:
	;SetStartDirection will check if the player gave an input to change the starting moving direction of pacman
	call SetStartDirection	
	call MakeDelay
	loop @@StartDelay
	
	pop cx
	
	ret
endp ResetRound

proc UnDrawPacman
	;reset the background to the color black
	mov ax, [Pacman_Left]
	push ax
	mov ax, [Pacman_Top]
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call ClearTile

	ret
endp UnDrawPacman

proc UnDrawRedGhost
	push ax
	push bx
	push dx

;calculate the location in dataseg of the current location on the ghost
;offset = (Ghost.Top * Grid.X) + Ghost.Left + Grid.Offset
	mov ax, [RedGhost_Top]
	mov bx, Grid_X
	xor dx, dx
	mul bx
	add ax, [RedGhost_Left]
	add ax, offset Grid
	mov bx, ax
	
;if the current location is a point, redraw the the point bitmap
;if the current location is an energizer, redraw the energizer bitmap
;else reset the background to the color black
	cmp [byte bx], 2
	je @@Point
	cmp [byte bx], 3
	je @@Energizer
	
	mov ax, [RedGhost_Left]
	push ax
	mov ax, [RedGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call ClearTile
	jmp @@EndProc
	
@@Point:
	lea ax, [Point]
	push ax
	jmp @@ReDraw
	
@@Energizer:
	lea ax, [Energizer]
	push ax
	
@@ReDraw:
	mov ax, [RedGhost_Left]
	push ax
	mov ax, [RedGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call DrawBitmap

@@EndProc:
	pop dx
	pop bx
	pop ax

	ret
endp UnDrawRedGhost

proc UnDrawBlueGhost
	push ax
	push bx
	push dx

;calculate the location in dataseg of the current location on the ghost
;offset = (Ghost.Top * Grid.X) + Ghost.Left + Grid.Offset
	mov ax, [BlueGhost_Top]
	mov bx, Grid_X
	xor dx, dx
	mul bx
	add ax, [BlueGhost_Left]
	add ax, offset Grid
	mov bx, ax

;if the current location is a point, redraw the the point bitmap
;if the current location is an energizer, redraw the energizer bitmap
;else reset the background to the color black	
	cmp [byte bx], 2
	je @@Point
	cmp [byte bx], 3
	je @@Energizer
	
	mov ax, [BlueGhost_Left]
	push ax
	mov ax, [BlueGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call ClearTile
	jmp @@EndProc
	
@@Point:
	lea ax, [Point]
	push ax
	jmp @@ReDraw
	
@@Energizer:
	lea ax, [Energizer]
	push ax
	
@@ReDraw:
	mov ax, [BlueGhost_Left]
	push ax
	mov ax, [BlueGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call DrawBitmap

@@EndProc:
	pop dx
	pop bx
	pop ax

	ret
endp UnDrawBlueGhost

proc UnDrawPinkGhost
	push ax
	push bx
	push dx

;calculate the location in dataseg of the current location on the ghost
;offset = (Ghost.Top * Grid.X) + Ghost.Left + Grid.Offset
	mov ax, [PinkGhost_Top]
	mov bx, Grid_X
	xor dx, dx
	mul bx
	add ax, [PinkGhost_Left]
	add ax, offset Grid
	mov bx, ax

;if the current location is a point, redraw the the point bitmap
;if the current location is an energizer, redraw the energizer bitmap
;else reset the background to the color black
	cmp [byte bx], 2
	je @@Point
	cmp [byte bx], 3
	je @@Energizer
	
	mov ax, [PinkGhost_Left]
	push ax
	mov ax, [PinkGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call ClearTile
	jmp @@EndProc
	
@@Point:
	lea ax, [Point]
	push ax
	jmp @@ReDraw
	
@@Energizer:
	lea ax, [Energizer]
	push ax
	
@@ReDraw:
	mov ax, [PinkGhost_Left]
	push ax
	mov ax, [PinkGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call DrawBitmap

@@EndProc:
	pop dx
	pop bx
	pop ax

	ret
endp UnDrawPinkGhost

proc UnDrawOrangeGhost
	push ax
	push bx
	push dx

;calculate the location in dataseg of the current location on the ghost
;offset = (Ghost.Top * Grid.X) + Ghost.Left + Grid.Offset
	mov ax, [OrangeGhost_Top]
	mov bx, Grid_X
	xor dx, dx
	mul bx
	add ax, [OrangeGhost_Left]
	add ax, offset Grid
	mov bx, ax

;if the current location is a point, redraw the the point bitmap
;if the current location is an energizer, redraw the energizer bitmap
;if the current location is a barrier, redraw the barrier bitmap
;else reset the background to the color black	
	cmp [byte bx], 2
	je @@Point
	cmp [byte bx], 3
	je @@Energizer
	cmp [byte bx], 5
	jae @@Barrier
	
	mov ax, [OrangeGhost_Left]
	push ax
	mov ax, [OrangeGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call ClearTile
	jmp @@EndProc
	
@@Barrier:
	lea ax, [Barrier]
	push ax
	jmp @@ReDraw
	
@@Point:
	lea ax, [Point]
	push ax
	jmp @@ReDraw
	
@@Energizer:
	lea ax, [Energizer]
	push ax
	
@@ReDraw:
	mov ax, [OrangeGhost_Left]
	push ax
	mov ax, [OrangeGhost_Top]
	push ax
	mov ax, Ghost_X
	push ax
	mov ax, Ghost_Y
	push ax
	call DrawBitmap

@@EndProc:
	pop dx
	pop bx
	pop ax

	ret
endp UnDrawOrangeGhost

proc ShowHearts
	push ax
	push bx
	push cx

	mov bx, 319 ;start showing the hearts from the most right point of the screen
	sub bx, Pacman_X
	
	mov cl, [byte Lives] ;for the amount of lives, draw a heart
	xor ch, ch
@@NextHeart:
	lea ax, [PacmanR_Bitmap]
	push ax
	push bx
	xor ax, ax
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call ShowBitmap
	
	sub bx, Pacman_X ;set bx for the next drawing
	loop @@NextHeart
	
	pop cx
	pop bx
	pop ax
	
	ret
endp ShowHearts

proc UnShowHearts
	push ax
	push bx
	push cx

	mov bx, 319 ;start undrawing the hearts from the most right point of the screen
	sub bx, Pacman_X
	
	;this procedure happens after pacman dies
	;therefore the current amount of lives is one less than the current amount of hearts on the screen
	;therefore we undraw the hearts for lives plus one times
	mov cl, [byte Lives]
	mov ch, 0
	inc cx
@@NextHeart:
	push bx
	mov ax, 0
	push ax
	mov ax, Pacman_X
	push ax
	mov ax, Pacman_Y
	push ax
	call UnShowBMP
	
	sub bx, Pacman_X
	loop @@NextHeart
	
	pop cx
	pop bx
	pop ax
	
	ret
endp UnShowHearts

proc ShowScoreDecimal
	push ax
	push bx
	push cx
	push dx
	
	;the score is a word sized variable
	;therefore it can be between (0 - 65535), 5 digits maximum
	;for 5 times we devide the score by 10 and push the leftover into the stack segment
	mov ax, [Current_Score]
	mov cx, 5
@@ag:
	mov bx, 10
	xor dx, dx
	div bx
	push dx
	
	loop @@ag
	
	;now we pop one number at a time and draw it on the screen
	mov bx, [Numbers_Left]
	mov cx, 5
@@ag2:
	cmp cx, 0
	jne @@Continue
	jmp @@EndProc
	
@@Continue:
	pop dx
	
	push cx
	
	lea ax, [Numbers_Line]
	push ax
	push bx
	mov ax, [Numbers_Top]
	push ax
	mov ax, Numbers_X
	push ax
	mov ax, Numbers_Y
	push ax
	
	mov ax, dx
	
	xor cx, cx
	push cx
	mov dx, 54
	add dx, 400h
	push dx
	
	cmp ax, 0
	je @@Zero
	cmp ax, 1
	je @@One
	cmp ax, 2
	je @@Two
	cmp ax, 3
	je @@Three
	cmp ax, 4
	je @@Four
	cmp ax, 5
	je @@Five
	cmp ax, 6
	je @@Six
	cmp ax, 7
	je @@Seven
	cmp ax, 8
	je @@JMPeight
	jmp @@Nine
	
@@JMPeight:
	jmp @@Eight
	
@@Zero:
	mov ax, [Zero_Handler]
	push ax
	xor al, al
	call ChangeFileCursorPosition
	
	mov ax, [Zero_Handler]
	push ax
	jmp @@Show
	
@@One:
	mov ax, [One_Handler]
	push ax
	xor al, al
	call ChangeFileCursorPosition
	
	mov ax, [One_Handler]
	push ax
	jmp @@Show
	
@@Two:
	mov ax, [Two_Handler]
	push ax
	xor al, al
	call ChangeFileCursorPosition
	
	mov ax, [Two_Handler]
	push ax
	jmp @@Show
	
@@Three:
	mov ax, [Three_Handler]
	push ax
	xor al, al
	call ChangeFileCursorPosition
	
	mov ax, [Three_Handler]
	push ax
	jmp @@Show
	
@@Four:
	mov ax, [Four_Handler]
	push ax
	xor al, al
	call ChangeFileCursorPosition
	
	mov ax, [Four_Handler]
	push ax
	jmp @@Show
	
@@Five:
	mov ax, [Five_Handler]
	push ax
	xor al, al
	call ChangeFileCursorPosition
	
	mov ax, [Five_Handler]
	push ax
	jmp @@Show
	
@@Six:
	mov ax, [Six_Handler]
	push ax
	xor al, al
	call ChangeFileCursorPosition
	
	mov ax, [Six_Handler]
	push ax
	jmp @@Show
	
@@Seven:
	mov ax, [Seven_Handler]
	push ax
	xor al, al
	call ChangeFileCursorPosition
	
	mov ax, [Seven_Handler]
	push ax
	jmp @@Show
	
@@Eight:
	mov ax, [Eight_Handler]
	push ax
	xor al, al
	call ChangeFileCursorPosition
	
	mov ax, [Eight_Handler]
	push ax
	jmp @@Show
	
@@Nine:
	mov ax, [Nine_Handler]
	push ax
	xor al, al
	call ChangeFileCursorPosition
	
	mov	ax, [Nine_Handler]
	push ax
	jmp @@Show
	
@@Show:
	call ShowBMP
	
	add bx, Numbers_X
	pop cx
	dec cx
	jmp @@ag2
	
@@EndProc:
	pop dx
	pop cx
	pop bx
	pop ax
	
	ret
endp ShowScoreDecimal

;;;;;;;;;;;;;;;;;;;;;;
;end of main loop area
;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;
;Area of file handling
;;;;;;;;;;;;;;;;;;;;;;

;----------------------------------------------------------------------
;     object         		| way of transfering | way of accessability
;----------------------------------------------------------------------
;was the opening successful | stack segment 	 | [sp]
;1 = true, 0 = false	
proc OpenStartFiles
	push bp
	mov bp, sp
	
	push ax

	push ax ;extra push for the returning value
	lea ax, [Menu]
	push ax
	lea ax, [Menu_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@Begin

@@Begin:
	push ax ;extra push for the returning value
	lea ax, [Begin]
	push ax
	lea ax, [Start_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@Exit
	jmp @@OpeningFailed

@@Exit:
	push ax ;extra push for the returning value
	lea ax, [Exit_Game]
	push ax
	lea ax, [Exit_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@OpeningWasSuccessful
	jmp @@OpeningFailed

@@OpeningFailed:
	mov [word bp + 4], 0
	jmp @@EndProc
	
@@OpeningWasSuccessful:
	mov [word bp + 4], 1
	
@@EndProc:
	pop ax
	
	pop bp
	ret
endp OpenStartFiles

proc CloseStartFiles
	push ax
	
	mov ax, [Menu_Handler]
	push ax
	call CloseFile
	
	mov ax, [Start_Handler]
	push ax
	call CloseFile
	
	mov ax, [Exit_Handler]
	push ax
	call CloseFile
	
	pop ax
	
	ret
endp CloseStartFiles

proc HandleCharacters
;read the character's headers
;save the character's bitmaps
;close the characters files

	call ReadCharactersHeaders
	call SetCharactersBitmaps
	call CloseCharacters
	 
	ret
endp HandleCharacters

;----------------------------------------------------------------------
;     object         		| way of transfering | way of accessability
;----------------------------------------------------------------------
;was the opening successful | stack segment 	 | [sp]
;1 = true, 0 = false
proc OpenCharacters
	push bp
	mov bp, sp
	
	push ax
	
	push ax ;extra push for the returning value
	lea ax, [UltPallete]
	push ax
	lea ax, [UltPallete_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@PacmanR
	jmp @@OpeningFailed
	
@@PacmanR:	
	push ax ;extra push for the returning value
	lea ax, [PacmanR]
	push ax
	lea ax, [PacmanR_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@PacmanL
	jmp @@OpeningFailed
	
@@PacmanL:
	push ax ;extra push for the returning value
	lea ax, [PacmanL]
	push ax
	lea ax, [PacmanL_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@PacmanU
	jmp @@OpeningFailed
	
@@PacmanU:
	push ax ;extra push for the returning value
	lea ax, [PacmanU]
	push ax
	lea ax, [PacmanU_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@PacmanD
	jmp @@OpeningFailed
	
@@PacmanD:
	push ax ;extra push for the returning value
	lea ax, [PacmanD]
	push ax
	lea ax, [PacmanD_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@BlueGhost
	jmp @@OpeningFailed
	
@@BlueGhost:
	push ax ;extra push for the returning value
	lea ax, [BlueGhost]
	push ax
	lea ax, [BlueGhost_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@RedGhost
	jmp @@OpeningFailed
	
@@RedGhost:
	push ax ;extra push for the returning value
	lea ax, [RedGhost]
	push ax
	lea ax, [RedGhost_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@PinkGhost
	jmp @@OpeningFailed
	
@@PinkGhost:
	push ax ;extra push for the returning value
	lea ax, [PinkGhost]
	push ax
	lea ax, [PinkGhost_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@OrangeGhost
	jmp @@OpeningFailed
	
@@OrangeGhost:
	push ax ;extra push for the returning value
	lea ax, [OrangeGhost]
	push ax
	lea ax, [OrangeGhost_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@DeadGhost
	jmp @@OpeningFailed
	
@@DeadGhost:
	push ax ;extra push for the returning value
	lea ax, [DeadGhost]
	push ax
	lea ax, [DeadGhost_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@HuntedGhost
	jmp @@OpeningFailed
	
@@HuntedGhost:
	push ax ;extra push for the returning value
	lea ax, [HuntedGhost]
	push ax
	lea ax, [HuntedGhost_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@OpeningWasSuccessful

@@OpeningFailed:
	mov [word bp + 4], 0
	jmp @@EndProc
	
@@OpeningWasSuccessful:
	mov [word bp + 4], 1
	
@@EndProc:
	pop ax
	
	pop bp
	ret
endp OpenCharacters

proc CloseCharacters
	push ax

	mov ax, [PacmanR_Handler]
	push ax
	call CloseFile
	
	mov ax, [PacmanL_Handler]
	push ax
	call CloseFile
	
	mov ax, [PacmanU_Handler]
	push ax
	call CloseFile
	
	mov ax, [PacmanD_Handler]
	push ax
	call CloseFile
	
	mov ax, [BlueGhost_Handler]
	push ax
	call CloseFile
	
	mov ax, [RedGhost_Handler]
	push ax
	call CloseFile
	
	mov ax, [PinkGhost_Handler]
	push ax
	call CloseFile
	
	mov ax, [OrangeGhost_Handler]
	push ax
	call CloseFile
	
	mov ax, [DeadGhost_Handler]
	push ax
	call CloseFile
	
	mov ax, [HuntedGhost_Handler]
	push ax
	call CloseFile
	
	pop ax
	ret
endp CloseCharacters

;----------------------------------------------------------------------
;     object         		| way of transfering | way of accessability
;----------------------------------------------------------------------
;was the opening successful | stack segment 	 | [sp]
;1 = true, 0 = false
proc OpenNumbers
	push bp
	mov bp, sp
	
	push ax

	push ax ;extra push for the returning value
	lea ax, [Zero]
	push ax
	lea ax, [Zero_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@One
	jmp @@OpeningFailed
	
@@One:
	push ax ;extra push for the returning value
	lea ax, [One]
	push ax
	lea ax, [One_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@Two
	jmp @@OpeningFailed
	
@@Two:
	push ax ;extra push for the returning value
	lea ax, [Two]
	push ax
	lea ax, [Two_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@Three
	jmp @@OpeningFailed
	
@@Three:
	push ax ;extra push for the returning value
	lea ax, [Three]
	push ax
	lea ax, [Three_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@Four
	jmp @@OpeningFailed
	
@@Four:
	push ax ;extra push for the returning value
	lea ax, [Four]
	push ax
	lea ax, [Four_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@Five
	jmp @@OpeningFailed
	
@@Five:
	push ax ;extra push for the returning value
	lea ax, [Five]
	push ax
	lea ax, [Five_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@Six
	jmp @@OpeningFailed
	
@@Six:
	push ax ;extra push for the returning value
	lea ax, [Six]
	push ax
	lea ax, [Six_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@Seven
	jmp @@OpeningFailed
	
@@Seven:
	push ax ;extra push for the returning value
	lea ax, [Seven]
	push ax
	lea ax, [Seven_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@Eight
	jmp @@OpeningFailed
	
@@Eight:
	push ax ;extra push for the returning value
	lea ax, [Eight]
	push ax
	lea ax, [Eight_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@Nine
	jmp @@OpeningFailed
	
@@Nine:
	push ax ;extra push for the returning value
	lea ax, [Nine]
	push ax
	lea ax, [Nine_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@Score
	jmp @@OpeningFailed
	
@@Score:
	push ax ;extra push for the returning value
	lea ax, [Score]
	push ax
	lea ax, [Score_Handler]
	push ax
	xor al, al
	call OpenFile
	pop ax
	
	cmp ax, 1
	je @@OpeningWasSuccessful

@@OpeningFailed:
	mov [word bp + 4], 0
	jmp @@EndProc
	
@@OpeningWasSuccessful:
	mov [word bp + 4], 1
	
@@EndProc:
	pop ax
	
	pop bp
	ret
endp OpenNumbers

proc CloseNumbers
	push ax
	
	mov ax, [Zero_Handler]
	push ax
	call CloseFile
	
	mov ax, [One_Handler]
	push ax
	call CloseFile
	
	mov ax, [Two_Handler]
	push ax
	call CloseFile
	
	mov ax, [Three_Handler]
	push ax
	call CloseFile
	
	mov ax, [Four_Handler]
	push ax
	call CloseFile
	
	mov ax, [Five_Handler]
	push ax
	call CloseFile
	
	mov ax, [Six_Handler]
	push ax
	call CloseFile
	
	mov ax, [Seven_Handler]
	push ax
	call CloseFile
	
	mov ax, [Eight_Handler]
	push ax
	call CloseFile
	
	mov ax, [Nine_Handler]
	push ax
	call CloseFile
	
	mov ax, [Score_Handler]
	push ax
	call CloseFile
	
	pop ax
	
	ret
endp CloseNumbers

proc SetCharactersBitmaps
;read and sync the pallete containing the colors of all the characters
;here we set the character's bitmaps
;draw the character on screen
;copy the colors into a designated bitmap
;and delete it from the screen
	push ax

	ReadUltPallete
	SyncPallete

	call SetCharactersToBitmaps

	ShowPacmanR
	CopyPacmanRBitmap
	
	ShowPacmanL
	CopyPacmanLBitmap
	
	ShowPacmanU
	CopyPacmanUBitmap
	
	ShowPacmanD
	CopyPacmanDBitmap
	
	ShowBlueGhost
	CopyBlueGhostBitmap
	
	ShowRedGhost
	CopyRedGhostBitmap
	
	ShowPinkGhost
	CopyPinkGhostBitmap
	
	ShowOrangeGhost
	CopyOrangeGhostBitmap
	
	ShowDeadGhost
	CopyDeadGhostBitmap
	
	ShowHuntedGhost
	CopyHuntedGhostBitmap
	
	xor al, al
	push ax
	push ax
	mov ax, 9
	push ax
	push ax
	call ClearTile
	
	pop ax
	
	ret
endp SetCharactersBitmaps

proc SetCharactersToBitmaps
;the header is 54 bytes
;the pallete is 400h bytes (1024 bytes)
;we skip from the start of the file header + pallete bytes to reach the start of the bitmap

	push ax
	push bx
	push cx
	push dx
	
	mov cx, 0
	mov dx, 54
	add dx, 400h
	mov al, 0

	push cx
	push dx
	mov bx, [PacmanR_Handler]
	push bx
	call ChangeFileCursorPosition
	
	push cx
	push dx
	mov bx, [PacmanL_Handler]
	push bx
	call ChangeFileCursorPosition
	
	push cx
	push dx
	mov bx, [PacmanU_Handler]
	push bx
	call ChangeFileCursorPosition
	
	push cx
	push dx
	mov bx, [PacmanD_Handler]
	push bx
	call ChangeFileCursorPosition
	
	push cx
	push dx
	mov bx, [RedGhost_Handler]
	push bx
	call ChangeFileCursorPosition
	
	push cx
	push dx
	mov bx, [BlueGhost_Handler]
	push bx
	call ChangeFileCursorPosition
	
	push cx
	push dx
	mov bx, [PinkGhost_Handler]
	push bx
	call ChangeFileCursorPosition
	
	push cx
	push dx
	mov bx, [OrangeGhost_Handler]
	push bx
	call ChangeFileCursorPosition
	
	push cx
	push dx
	mov bx, [HuntedGhost_Handler]
	push bx
	call ChangeFileCursorPosition
	
	push cx
	push dx
	mov bx, [DeadGhost_Handler]
	push bx
	call ChangeFileCursorPosition
	
	pop dx
	pop cx
	pop bx
	pop ax
	ret
endp SetCharactersToBitmaps
	
proc ReadStartFilesHeaders
	push ax
	push cx
	
	mov cx, 54

	lea ax, [Menu_Header]
	push ax
	push cx
	mov ax, [Menu_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [Start_Header]
	push ax
	push cx
	mov ax, [Start_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [Exit_Header]
	push ax
	push cx
	mov ax, [Exit_Handler]
	push ax
	call ReadFromFile
	
	pop cx
	pop ax
	
	ret
endp ReadStartFilesHeaders	

proc ReadCharactersHeaders
	push ax
	push cx
	
	mov cx, 54

	lea ax, [UltPallete_Header]
	push ax
	push cx
	mov ax, [UltPallete_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [PacmanR_Header]
	push ax
	push cx
	mov ax, [PacmanR_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [PacmanL_Header]
	push ax
	push cx
	mov ax, [PacmanL_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [PacmanU_Header]
	push ax
	push cx
	mov ax, [PacmanU_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [PacmanD_Header]
	push ax
	push cx
	mov ax, [PacmanD_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [BlueGhost_Header]
	push ax
	push cx
	mov ax, [BlueGhost_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [RedGhost_Header]
	push ax
	push cx
	mov ax, [RedGhost_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [PinkGhost_Header]
	push ax
	push cx
	mov ax, [PinkGhost_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [OrangeGhost_Header]
	push ax
	push cx
	mov ax, [OrangeGhost_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [DeadGhost_Header]
	push ax
	push cx
	mov ax, [DeadGhost_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [HuntedGhost_Header]
	push ax
	push cx
	mov ax, [HuntedGhost_Handler]
	push ax
	call ReadFromFile
	
	pop cx
	pop ax
	
	ret
endp ReadCharactersHeaders
	
proc ReadNumbersHeaders
	push ax
	push cx
	
	mov cx, 54

	
	lea ax, [Zero_Header]
	push ax
	push cx
	mov ax, [Zero_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [One_Header]
	push ax
	push cx
	mov ax, [One_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [Two_Header]
	push ax
	push cx
	mov ax, [Two_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [Three_Header]
	push ax
	push cx
	mov ax, [Three_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [Four_Header]
	push ax
	push cx
	mov ax, [Four_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [Four_Header]
	push ax
	push cx
	mov ax, [Four_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [Five_Header]
	push ax
	push cx
	mov ax, [Five_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [Six_Header]
	push ax
	push cx
	mov ax, [Six_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [Seven_Header]
	push ax
	push cx
	mov ax, [Seven_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [Eight_Header]
	push ax
	push cx
	mov ax, [Eight_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [Nine_Header]
	push ax
	push cx
	mov ax, [Nine_Handler]
	push ax
	call ReadFromFile
	
	lea ax, [Score_Header]
	push ax
	push cx
	mov ax, [Score_Handler]
	push ax
	call ReadFromFile
	
	pop cx
	pop ax
	
	ret
endp ReadNumbersHeaders

;---------------------------------------------------------------
;     object         | way of transfering | way of accessability
;---------------------------------------------------------------
;offset of file name | stack segment 	  | [bp + 6]
;offset of handler 	 | stack segment 	  | [bp + 4]
;way of opening file | al register   	  | al register
;0 = read only , 1 = write only, 2 = read and write
;OUTPUT				 |				 	  |
;was the file opened | stack segment 	  | [sp]
;1 = true, 0 = false
proc OpenFile
	push bp
	mov bp, sp
	
	push ax
	push bx
	push dx
	
	mov dx, [bp + 6]
	mov bx, [bp + 4]
	
	mov ah, 03Dh
	int 21h
	jc @@OpeningFailed
	
	mov [word bp + 8], 1
	mov [bx], ax
	jmp @@EndProc
	
@@OpeningFailed:
	mov [word bp + 8], 0
	
@@EndProc:
	pop dx
	pop bx
	pop ax
	
	pop bp
	ret 4
endp OpenFile

;-------------------------------------------------------------
; object           | way of transfering | way of accessability
;-------------------------------------------------------------
; value of handler | stack segment       | [bp + 4]
proc CloseFile
	push bp
	mov bp, sp
	
	push bx
	push ax ; ax will be changed in the procedure
	
	mov bx, [bp + 4]
	mov ah, 03eh
	int 21h
	
	pop ax
	pop bx
	
	pop bp
	ret 2
endp CloseFile

;------------------------------------------------------------------------------
;       object                      | way of transfering | way of accessability
;------------------------------------------------------------------------------
; offset to hold read bytes         | stack segment      | [bp + 8]
; value of how many bytes to read   | stack segment      | [bp + 6]
; value of handler                  | stack segment      | [bp + 4]
;OUTPUT							    |					 |
; the read bytes in the array given | stack segment		 | [sp]
proc ReadFromFile
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	
	mov dx, [bp + 8]
	mov cx, [bp + 6]
	mov bx, [bp + 4]
	
	mov ah, 03fh
	int 21h
	
	pop dx
	pop cx
	pop bx
	pop ax
	
	pop bp
	ret 6
endp ReadFromFile

;--------------------------------------------------------------------
; object                  | way of transfering | way of accessability
;--------------------------------------------------------------------
; offset of pallete array | stack segment      | [bp + 4]
proc SyncPalleteColors
	push bp
	mov bp, sp
	
	push ax
	push cx
	push dx
	push si
	
	mov dx, 03c8h
	xor al, al
	out dx, al ;transfer the color black and let the screen know you are about to change the pallete
	inc dx ;03c9 - for the other colors in the pallete
	
	mov si, [bp + 4]
	
	mov cx, 256 ;a loop of 256 times, for each color in the pallete
@@CopyNextColor:
; we devide the value of each color by 4 because the colors are 8 bit sized
; and dosbox can hold only 6 bit per color
; by deviding every color by 4 we get the same color as before but lighter
	mov al, [byte si + 2] ; Red color
	shr al, 2
	out dx, al
	
	mov al, [byte si + 1] ; Pink color
	shr al, 2
	out dx, al
	
	mov al, [byte si] ; Blue color
	shr al, 2
	out dx, al
	
	add si, 4 ; each color is 4 byte (the last byte is a null), we add 4 to reach to next color in the array
	loop @@CopyNextColor
	
	pop si
	pop dx
	pop cx
	pop ax
	
	pop bp
	ret 2
endp SyncPalleteColors

;-------------------------------------------------------------------------------------------------
; 							object 			| way of transfering 		| way of accessability
;-------------------------------------------------------------------------------------------------
;how many bytes to skip (cx:dx) 			| stack segment 			| [bp + 6]dx    [bp + 8]cx
;value of handler 							| stack segment 			| [bp + 4]
;from where to start counting bytes to move | al register 				| al register
;0 = start of file, 1 = current cursor position, 2 = end of file
proc ChangeFileCursorPosition
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	
	mov cx, [bp + 8]
	mov dx, [bp + 6]
	mov bx, [bp + 4]
	
	mov ah, 42h
	int 21h
	
	pop dx
	pop cx
	pop bx
	pop ax
	
	pop bp
	ret 6
endp ChangeFileCursorPosition

;;;;;;;;;;;;;;;;;;;;;;;;;;
;end of file handling area
;;;;;;;;;;;;;;;;;;;;;;;;;;

proc SetGraphicMode
	push ax
	
	mov ax, 13h ; 320 x 200
	int 10h
	
	pop ax
	ret
endp SetGraphicMode

proc ExitGraphicMode
	push ax
	
	mov ax, 2
	int 10h
	
	pop ax
	ret
endp ExitGraphicMode

;;;;;;;;;;;;;;;;
;area of drawing
;;;;;;;;;;;;;;;;

;this is how the procedures are named

;if the name includes Show - the procedure draws something on the screen
;if the name includes draw - the procedure draws something on the map

;if the name includes BMP - the proceudre draws a bmp8 picture
;if the name includes Bitmap - the procedure draws a bitmap of colors from the dataseg

;---------------------------------------------------------------------
;                  object  | way of transfering | way of accessability
;---------------------------------------------------------------------
;offset of the bitmap      | stack segment	    | [bp + 12]
;left value in the grid    | stack segment	    | [bp + 10]
;top value in the grid     | stack segment		| [bp + 8]
;horizontal size of bitmap | stack segment		| [bp + 6]
;vertical size of bitmap   | stack segment		| [bp + 4]
proc ShowBitmap
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	push di
	
	;pixel = (Location.Top * 320) + Location.Left
	mov ax, [bp + 8]
	mov bx, 320
	xor dx, dx
	mul bx
	add ax, [bp + 10]
	mov di, ax
	
	mov bx, [bp + 12]
	mov cx, [bp + 4]
@@VerticalLoop:
	push cx
	
	mov cx, [bp + 6]
@@HorizontalLoop:
	mov al, [byte bx]
	mov [byte es:di], al
	inc bx
	inc di
	loop @@HorizontalLoop
	
	add di, 320
	sub di, [bp + 6]
	
	pop cx
	loop @@VerticalLoop
	
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	
	pop bp
	ret 10
endp ShowBitmap

;-----------------------------------------------------------------------------
;                     object       | way of transfering | way of accessability
;-----------------------------------------------------------------------------
;offset of the bitmap              | stack segment 		| [bp + 12]
;left value in the grid            | stack segment 		| [bp + 10]
;top value in the grid             | stack segment 		| [bp + 8]
;horizontal size of a tile         | stack segment 		| [bp + 6]
;vertical size of a tile 		   | stack segment 		| [bp + 4]
;Local variables				   |				    |
;current left value being checked  | stack segment 		| [bp - 2]
;current top value being checked   | stack segment 		| [bp - 4]
proc CopyBitmap
	push bp
	mov bp, sp
	sub sp, 4
	
	push ax
	push bx
	push cx
	push dx
	push si
	
	;first we calculate the left and top pixels on the screen and save them in local variables
	;pixel.Left = Location.Left * Grid.X 
	mov ax, [bp + 10]
	mov bx, [bp + 6]
	xor dx, dx
	mul bx
	mov [bp - 2], ax
	
	;pixel.Top = Location.Top * Grid.Y
	mov ax, [bp + 8]
	mov bx, [bp + 4]
	xor dx, dx
	mul bx
	mov [bp - 4], ax
	
	;for the vertical value of a tile, do the following loop
	mov si, [bp + 12]
	mov cx, [bp + 4]
@@Vertical:
	push cx
	
	;for the horizontal value of a tile, get the color of the pixel in (cx:dx)
	mov cx, [bp + 6]
@@Horizontal:
	push cx
	
	mov cx, [bp - 2]
	mov dx, [bp - 4]
	mov ah, 0Dh
	int 10h ;get the color of the pixel at (cx:dx)
	mov [si], al
	
	;set the values for the next pixel in the line
	inc si
	inc [word bp - 2]
	
	pop cx
	loop @@Horizontal
	
	;set the values for the next line of pixels
	inc [word bp - 4]
	mov ax, [bp + 6]
	sub [bp - 2], ax

	pop cx
	loop @@Vertical	
	
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	
	add sp, 4
	pop bp
	ret 10
endp CopyBitmap

;-----------------------------------------------------------------------------------
;                            object      | way of transfering | way of accessability
;-----------------------------------------------------------------------------------
; offset of array to hold the read line  | stack segment      | [bp + 14]
; value of how many pixels from the left | stack segment      | [bp + 12]
; value of how many pixels from the top  | stack segment      | [bp + 10]
; value of file's horizontal size        | stack segment      | [bp + 8]
; value of file's vertical size          | stack segment      | [bp + 6]
; value of handler                       | stack segment      | [bp + 4]
proc ShowBMP
	push bp
	mov bp, sp
		
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	
	mov ax, 0A000h
	mov es, ax ;set graphic mode
	
	;Here we find the padding for the file
	mov ax, [bp + 8]
	xor dx, dx
	mov bx, 4
	div bx ;The file horizontal size is devisible by 4, if the size is not divisible by 4 there will a padding to the file
	
	xor si, si
	cmp dx, 0
	jz @@AfterFindingPad ;if the file is accual size is divisible by 4 there is no padding needed
	
	mov si, 4
	sub si, dx 
	;si now holds the padding
	
	mov bx, [bp + 4]
@@AfterFindingPad:
	mov dx, [bp + 12]
	
	;pixel on screen = (Line * File.Top)* 320
	
	mov cx, [bp + 6] ;the loop will draw one line at a time, goes on for vertical length
@@NextLine:
	push dx
	push cx
	
	;here we calculate the place on screen to draw the pixels
	mov di, cx ;current low at the file
	add di, [bp + 10] ;pixels from the top
	
	dec di
	mov cx, di
	shl cx, 6
	shl di, 8 
	add di, cx
	add di, dx ;multipication by 320 (screen's horizontal length)
	
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 8] ;how many bytes to read
	add ax, si ;add the padding
	push ax
	mov ax, [bp + 4]
	push ax
	call ReadFromFile
	
	push si
	mov si, [bp + 14]
	mov cx, [bp + 8]
	cld ;set the direction flag for movsb later on in the procedure
	rep movsb ;transfer ds[byte si] to es[byte di] and increase si an di by one
	pop si
	
	pop cx
	pop dx
	loop @@NextLine

	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	
	pop bp
	ret 12
endp ShowBMP

;-----------------------------------------------------------
;   object       | way of transfering | way of accessability
;-----------------------------------------------------------
;left value    	 | stack segment	   | [bp + 10]
;top value       | stack segment	   | [bp + 8]
;horizontal size | stack segment	   | [bp + 6]
;vertical size   | stack segment	   | [bp + 4]
proc UnShowBMP
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	push di
	
	;calculate the pixel on the screen
	;pixel = (Location.Top * 320) + Location.Left
	mov ax, [bp + 8]
	mov bx, 320
	xor dx, dx
	mul bx
	add ax, [bp + 10]
	mov di, ax
	
	;for the vertical size of the bitmap, do the following loop
	mov cx, [bp + 4]
@@VerticalLoop:
	push cx
	
	;for the horizontal size of the bitmap, draw a black pixel
	mov cx, [bp + 6]
@@HorizontalLoop:
	mov [byte es:di], 0
	inc di
	loop @@HorizontalLoop
	
	add di, 320
	sub di, [bp + 6]
	
	pop cx
	loop @@VerticalLoop
	
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	
	pop bp
	ret 8
endp UnShowBMP

;---------------------------------------------------------------------
;                  object  | way of transfering | way of accessability
;---------------------------------------------------------------------
;offset of the bitmap      | stack segment	    | [bp + 12]
;left value in the grid    | stack segment	    | [bp + 10]
;top value in the grid     | stack segment		| [bp + 8]
;horizontal size of a tile | stack segment		| [bp + 6]
;vertical size of a tile   | stack segment		| [bp + 4]
proc DrawBitmap
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	
	;first we turn the top value in the grid to the top value on the screen
	;pixel = (Location.Top * Tile.Y * 320) + (Location.Left * Tile.X)
	mov ax, [bp + 8]
	mov bx, [bp + 4]
	xor dx, dx
	mul bx
	
	;now we multiply it by 320 to get the pixel on the screen
	mov bx, 320
	xor dx, dx
	mul bx
	
	mov di, ax
	
	;now we turn the left value in the grid to the left value on the screen
	mov ax, [bp + 10]
	mov bx, [bp + 6]
	xor dx, dx
	mul bx
	
	add di, ax ;now we add to the top the left and get the exact pixel from where we start deleting
	
	mov si, [bp + 12]
	mov cx, [bp + 4]
@@Vertical:
	push cx
	
	mov cx, [bp + 6]
	rep movsb
	
	sub di, [bp + 6]
	add di, 320 ;prepare for new line
	
	pop cx
	loop @@Vertical
	
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	
	pop bp
	ret 10
endp DrawBitmap

;---------------------------------------------------------------------
;            object        | way of transfering | way of accessability
;---------------------------------------------------------------------
;Left location on the grid | stack segment 		| [bp + 10]
;top location on the grid  | stack segment 		| [bp + 8]
;horizontal size of a tile | stack segment 		| [bp + 6]
;vertical size of a tile   | stack segment 		| [bp + 4]
proc ClearTile
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	push di
	
	;calculate the pixel on the screen that is the start of the tile
	;pixel = (Location.Top * Tile.Y * 320) + (Location.Left * Tile.X)
	mov ax, [bp + 8]
	mov bx, [bp + 4]
	xor dx, dx
	mul bx
	
	mov bx, 320
	xor dx, dx
	mul bx
	mov di, ax
	
	mov ax, [bp + 10]
	mov bx, [bp + 6]
	xor dx, dx
	mul bx
	add di, ax

	;for the vertical size of the tile, do the following loop
	mov cx, [bp + 4]
@@Vertical:
	push cx
	
	;for the horizontal size of the tile, draw a black pixel
	mov cx, [bp + 6]
@@Horizontal:
	mov [byte es:di], 0
	inc di
	loop @@Horizontal
	
	;calculate the starting pixel of the next row
	sub di, [bp + 6]
	add di, 320
	
	pop cx
	loop @@Vertical
	
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	
	pop bp
	ret 8
endp ClearTile

;the screen will be black
proc CleanScreen
	push ax
	push cx
	push di
	
	mov ax, 0A000h
	mov es, ax
	
	xor di, di
	xor ax, ax
	
	mov cx, 32000 ;(320 * 200)/ 2
@@Again:
	mov [word es:di], ax
	add di, 2
	loop @@Again
	
	pop di
	pop cx
	pop ax
	ret
endp CleanScreen

;;;;;;;;;;;;;;;;;;;;
;end of drawing area
;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;
;area of pacman movement
;;;;;;;;;;;;;;;;;;;;;;;;

;first we check the place pacman is about to move to
;if its a point, increase the score by 10 and change the place to 1 (nothing special)
;if its an energizer, activate energizer mode, add 50 to the score and change the place to 1 (nothing special)
;if its a teleport, set the new location
;if its a 1 (nothing special), set the new location

;then clear the tile on the previous spot
;and redraw pacman at his new location

;--------------------------------------------------------------------------------
;                     object      	  | way of transfering | way of accessability
;--------------------------------------------------------------------------------
;all ghost's hunted booleans		  | stack segment	   | [bp + 24] -> [bp + 30]
;offset of grid 		 	 	  	  | stack segment 	   | [bp + 22]
;grid's horizontal size 	      	  | stack segment 	   | [bp + 20]
;grid's vertical size 			  	  | stack segment 	   | [bp + 18]
;offset to score counter 		  	  | stack segment 	   | [bp + 16]
;offset to energizer mode boolean 	  | stack segment 	   | [bp + 14]
;offset to pacman's bitmap 	  	  	  | stack segment 	   | [bp + 12]
;pacman left location on grid 	  	  | stack segment 	   | [bp + 10]
;pacman top location on grid  	  	  | stack segment 	   | [bp + 8]
;pacman horizontal size 	  	  	  | stack segment 	   | [bp + 6]
;pacman vertical size 		  	 	  | stack segment 	   | [bp + 4]
;OUTPUT								  |				  	   |
;pacman new left location on the grid | stack segment 	   | [sp]
;pacman new top location on the grid  | stack segment 	   | [sp + 2]
;Local variable						  |					   |
;place in grid 						  | stack segment      | [bp - 2]
proc MovePacmanRight
	push bp
	mov bp, sp
	sub sp, 2
	
	push ax
	push bx
	push cx
	push dx
	
	;we want to get the pixel in the grid where pacman is at
	;location = Grid.Offset + Location.Left + (Location.Top * Grid.X)
	mov ax, [bp + 8]
	mov bx, [bp + 20]
	xor dx, dx
	mul bx
	add ax, [bp + 22]
	add ax, [bp + 10]
	mov bx, ax
	
	inc bx ;we inc to check the pixel to the right of the current location
	mov [bp - 2], bx
	
	cmp [byte bx], 1
	jne @@ContinueCheck
	jmp @@MakeMove
	
@@ContinueCheck:
	cmp [byte bx], 2
	je @@ScorePoint
	cmp [byte bx], 3
	je @@Energizer
	cmp [byte bx], 4
	je @@Teleport
	jmp @@DontMakeMove
	
@@ScorePoint:
	add [Current_Score], 10

	mov bx, [bp + 16]
	inc [word bx]
	
	mov bx, [bp - 2]
	mov [byte bx], 1
	
	mov ax, [bp + 10]
	inc ax
	mov [bp + 32], ax
	mov ax, [bp + 8]
	mov [bp + 34], ax
	
	jmp @@Movement
	
@@Energizer:
	add [Current_Score], 50

	mov bx, [bp + 14]
	mov [byte bx], 1
	
	mov bx, [bp - 2]
	mov [byte bx], 1
	
	mov ax, [bp + 10]
	inc ax
	mov [bp + 32], ax
	mov ax, [bp + 8]
	mov [bp + 34], ax
	
	mov ah, 1
	xor cx, cx
	xor dx, dx
	int 1Ah ;we reset the system timer time counter to 0 ticks
	
	;here we set all of the ghosts to hunted mode
	mov bx, [bp + 24]
	mov [byte bx], 1
	mov bx, [bp + 26]
	mov [byte bx], 1
	mov bx, [bp + 28]
	mov [byte bx], 1
	mov bx, [bp + 30]
	mov [byte bx], 1
	
	jmp @@Movement
	
@@Teleport:
	mov [word bp + 32], 1 ;1 before the teleport
	
	mov ax, [bp + 8]
	mov [bp + 34], ax
	
	jmp @@Movement
	
@@DontMakeMove:
	mov ax, [bp + 10]
	mov [bp + 32], ax
	mov ax, [bp + 8]
	mov [bp + 34], ax
	
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@EndProc
	
@@MakeMove:
	mov ax, [bp + 10]
	inc ax
	mov [bp + 32], ax
	mov ax, [bp + 8]
	mov [bp + 34], ax

@@Movement:	
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call ClearTile

	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 32]
	push ax
	mov ax, [bp + 34]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap

@@EndProc:	
	pop dx
	pop cx
	pop bx
	pop ax
	
	add sp, 2
	pop bp
	ret 28
endp MovePacmanRight

;--------------------------------------------------------------------------------
;                     object      	  | way of transfering | way of accessability
;--------------------------------------------------------------------------------
;all ghost's hunted booleans		  | stack segment	   | [bp + 24] -> [bp + 30]
;offset of grid 					  | stack segment 	   | [bp + 22]
;grid's horizontal size 		  	  | stack segment	   | [bp + 20]
;grid's vertical size 				  | stack segment	   | [bp + 18]
;offset to score counter 			  | stack segment	   | [bp + 16]
;offset to energizer mode boolean 	  | stack segment	   | [bp + 14]
;offset to pacman's bitmap 			  | stack segment	   | [bp + 12]
;pacman left location on grid 		  | stack segment	   | [bp + 10]
;pacman top location on grid 		  | stack segment	   | [bp + 8]
;pacman horizontal size 			  | stack segment	   | [bp + 6]
;pacman vertical size 				  | stack segment	   | [bp + 4]
;OUTPUT								  |					   |
;pacman new left location on the grid | stack segment	   | [sp]
;pacman new top location on the grid  | stack segment	   | [sp + 2]
;Local variable						  | 				   |
;place in grid 						  | stack segment      | [bp - 2]
proc MovePacmanLeft
	push bp
	mov bp, sp
	sub sp, 2
	
	push ax
	push bx
	push cx
	push dx
	
	;we want to get the pixel in the grid where pacman is at
	;location = Grid.Offset + Location.Left + (Location.Top * Grid.X)
	mov ax, [bp + 8]
	mov bx, [bp + 20]
	xor dx, dx
	mul bx
	add ax, [bp + 22]
	add ax, [bp + 10]
	mov bx, ax
	
	dec bx ;we dec to check the pixel to the left of the current location
	mov [bp - 2], bx
	
	cmp [byte bx], 1
	jne @@ContinueCheck
	jmp @@MakeMove
	
@@ContinueCheck:
	cmp [byte bx], 2
	je @@ScorePoint
	cmp [byte bx], 3
	je @@Energizer
	cmp [byte bx], 4
	je @@Teleport
	jmp @@DontMakeMove
	
@@ScorePoint:
	add [Current_Score], 10

	mov bx, [bp + 16]
	inc [word bx]
	
	mov bx, [bp - 2]
	mov [byte bx], 1
	
	mov ax, [bp + 10]
	dec ax
	mov [bp + 32], ax
	mov ax, [bp + 8]
	mov [bp + 34], ax
	
	jmp @@Movement
	
@@Energizer:
	add [Current_Score], 50

	mov bx, [bp + 14]
	mov [byte bx], 1
	
	mov bx, [bp - 2]
	mov [byte bx], 1
	
	mov ax, [bp + 10]
	dec ax
	mov [bp + 32], ax
	mov [bp + 34], ax
	
	mov ah, 1
	xor cx, cx
	xor dx, dx
	int 1Ah ;we reset the system timer time counter to 0 ticks
	
	;here we set all of the ghosts to hunted mode
	mov bx, [bp + 24]
	mov [byte bx], 1
	mov bx, [bp + 26]
	mov [byte bx], 1
	mov bx, [bp + 28]
	mov [byte bx], 1
	mov bx, [bp + 30]
	mov [byte bx], 1
	
	jmp @@Movement
	
@@Teleport:
	mov ax, [bp + 20]
	sub ax, 2 ;1 before the teleport
	mov [bp + 32], ax
	
	mov ax, [bp + 8]
	mov [bp + 34], ax
	
	jmp @@Movement
	
@@DontMakeMove:
	mov ax, [bp + 10]
	mov [bp + 32], ax
	mov ax, [bp + 8]
	mov [bp + 34], ax
	
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@EndProc
	
@@MakeMove:
	mov ax, [bp + 10]
	dec ax
	mov [bp + 32], ax
	mov ax, [bp + 8]
	mov [bp + 34], ax
	
@@Movement:
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call ClearTile

	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 32]
	push ax
	mov ax, [bp + 34]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
@@EndProc:	
	pop dx
	pop cx
	pop bx
	pop ax
	
	add sp, 2
	pop bp
	ret 28
endp MovePacmanLeft

;--------------------------------------------------------------------------------
;                     object      	  | way of transfering | way of accessability
;--------------------------------------------------------------------------------
;all ghost's hunted booleans		  | stack segment	   | [bp + 24] -> [bp + 30]
;offset of grid 					  | stack segment	   | [bp + 22]
;grid's horizontal size 			  | stack segment	   | [bp + 20]
;grid's vertical size 			      | stack segment	   | [bp + 18]
;offset to score counter 			  | stack segment	   | [bp + 16]
;offset to energizer mode boolean 	  | stack segment	   | [bp + 14]
;offset to pacman's bitmap 			  | stack segment	   | [bp + 12]
;pacman left location on grid         | stack segment	   | [bp + 10]
;pacman top location on grid          | stack segment	   | [bp + 8]
;pacman horizontal size               | stack segment	   | [bp + 6]
;pacman vertical size                 | stack segment	   | [bp + 4]
;OUTPUT								  |					   |
;pacman new left location on the grid | stack segment	   | [sp]
;pacman new top location on the grid  | stack segment	   | [sp + 2]
;Local variable						  |					   |
;place in grid 						  | stack segment	   | [bp - 2]
proc MovePacmanUp
	push bp
	mov bp, sp
	sub sp, 2
	
	push ax
	push bx
	push cx
	push dx
	
	;we want to get the pixel in the grid where pacman is at
	;location = Grid.Offset + Location.Left + (Location.Top * Grid.X)
	mov ax, [bp + 8]
	dec ax
	mov bx, [bp + 20]
	xor dx, dx
	mul bx
	add ax, [bp + 22]
	add ax, [bp + 10]
	mov bx, ax
	
	mov [bp - 2], bx
	
	cmp [byte bx], 1
	jne @@ContinueCheck
	jmp @@MakeMove
	
@@ContinueCheck:
	cmp [byte bx], 2
	je @@ScorePoint
	cmp [byte bx], 3
	je @@Energizer
	cmp [byte bx], 4
	je @@Teleport
	jmp @@DontMakeMove
	
@@ScorePoint:
	add [Current_Score], 10

	mov bx, [bp + 16]
	inc [word bx]
	
	mov bx, [bp - 2]
	mov [byte bx], 1
	
	mov ax, [bp + 10]
	mov [bp + 32], ax
	mov ax, [bp + 8]
	dec ax
	mov [bp + 34], ax
	
	jmp @@Movement
	
@@Energizer:
	add [Current_Score], 50

	mov bx, [bp + 14]
	mov [byte bx], 1
	
	mov bx, [bp - 2]
	mov [byte bx], 1
	
	mov ax, [bp + 10]
	mov [bp + 32], ax
	mov ax, [bp + 8]
	dec ax
	mov [bp + 34], ax
	
	mov ah, 1
	xor cx, cx
	xor dx, dx
	int 1Ah ;we reset the system timer time counter to 0 ticks
	
	;here we set all of the ghosts to hunted mode
	mov bx, [bp + 24]
	mov [byte bx], 1
	mov bx, [bp + 26]
	mov [byte bx], 1
	mov bx, [bp + 28]
	mov [byte bx], 1
	mov bx, [bp + 30]
	mov [byte bx], 1
	
	jmp @@Movement
	
@@Teleport:
	mov ax, [bp + 10]
	mov [bp + 32], ax
	
	mov ax, [bp + 18]
	sub ax, 2 ;1 before the teleport
	mov [bp + 34], ax
	jmp @@Movement
	
@@DontMakeMove:
	mov ax, [bp + 10]
	mov [bp + 32], ax
	mov ax, [bp + 8]
	mov [bp + 34], ax
	
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@EndProc
	
@@MakeMove:
	mov ax, [bp + 10]
	mov [bp + 32], ax
	mov ax, [bp + 8]
	dec ax
	mov [bp + 34], ax
	
@@Movement:
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call ClearTile
	
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 32]
	push ax
	mov ax, [bp + 34]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap

@@EndProc:
	pop dx
	pop cx
	pop bx
	pop ax
	
	add sp, 2
	pop bp
	ret 28
endp MovePacmanUp

;--------------------------------------------------------------------------------
;                     object      	  | way of transfering | way of accessability
;--------------------------------------------------------------------------------
;all ghost's hunted booleans		  | stack segment	   | [bp + 24] -> [bp + 30]
;offset of grid 				      | stack segment 	   | [bp + 22]
;grid's horizontal size 		      |	stack segment	   | [bp + 20]
;grid's vertical size 			      |	stack segment	   | [bp + 18]
;offset to score counter 		      |	stack segment	   | [bp + 16]
;offset to energizer mode boolean 	  |	stack segment	   | [bp + 14]
;offset to pacman's bitmap 		      |	stack segment	   | [bp + 12]
;pacman left location on grid 	  	  |	stack segment	   | [bp + 10]
;pacman top location on grid 	  	  |	stack segment	   | [bp + 8]
;pacman horizontal size 		  	  |	stack segment	   | [bp + 6]
;pacman vertical size 			  	  |	stack segment	   | [bp + 4]
;OUTPUT 						      |					   |
;pacman new left location on the grid | stack segment	   | [sp]
;pacman new top location on the grid  |	stack segment	   | [sp + 2]
;Local variable						  |					   |
;place in grid 						  |	stack segment	   | [bp - 2]
proc MovePacmanDown
	push bp
	mov bp, sp
	sub sp, 2
	
	push ax
	push bx
	push cx
	push dx
	
	;we want to get the pixel in the grid where pacman is at
	;location = Grid.Offset + Location.Left + (Location.Top * Grid.X)
	mov ax, [bp + 8]
	inc ax
	mov bx, [bp + 20]
	xor dx, dx
	mul bx
	add ax, [bp + 22]
	add ax, [bp + 10]
	mov bx, ax
	
	mov [bp - 2], bx
	
	cmp [byte bx], 1
	jne @@ContinueCheck
	jmp @@MakeMove
	
@@ContinueCheck:
	cmp [byte bx], 2
	je @@ScorePoint
	cmp [byte bx], 3
	je @@Energizer
	cmp [byte bx], 4
	je @@Teleport
	jmp @@DontMakeMove
	
@@ScorePoint:
	add [Current_Score], 10

	mov bx, [bp + 16]
	inc [word bx]
	
	mov bx, [bp - 2]
	mov [byte bx], 1
	
	mov ax, [bp + 10]
	mov [bp + 32], ax
	mov ax, [bp + 8]
	inc ax
	mov [bp + 34], ax
	
	jmp @@Movement
	
@@Energizer:
	add [Current_Score], 50

	mov bx, [bp + 14]
	mov [byte bx], 1
	
	mov bx, [bp - 2]
	mov [byte bx], 1
	
	mov ax, [bp + 10]
	mov [bp + 32], ax
	mov ax, [bp + 8]
	inc ax
	mov [bp + 34], ax
	
	mov ah, 1
	xor cx, cx
	xor dx, dx
	int 1Ah ;we reset the system timer time counter to 0 ticks
	
	;here we set all of the ghosts to hunted mode
	mov bx, [bp + 24]
	mov [byte bx], 1
	mov bx, [bp + 26]
	mov [byte bx], 1
	mov bx, [bp + 28]
	mov [byte bx], 1
	mov bx, [bp + 30]
	mov [byte bx], 1
	
	jmp @@Movement
	
@@Teleport:
	mov ax, [bp + 10]
	mov [bp + 32], ax
	
	mov [word bp + 34], 1 ;1 before the teleport
	jmp @@Movement
	
@@DontMakeMove:
	mov ax, [bp + 10]
	mov [bp + 32], ax
	mov ax, [bp + 8]
	mov [bp + 34], ax
	
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@EndProc
	
@@MakeMove:
	mov ax, [bp + 10]
	mov [bp + 32], ax
	mov ax, [bp + 8]
	inc ax
	mov [bp + 34], ax
	
@@Movement:
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call ClearTile
	
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 32]
	push ax
	mov ax, [bp + 34]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap

@@EndProc:	
	pop dx
	pop cx
	pop bx
	pop ax
	
	add sp, 2
	pop bp
	ret 28
endp MovePacmanDown

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;end of pacman movement area
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;
;area of ghost movement
;;;;;;;;;;;;;;;;;;;;;;;

;first we set the new location of the ghost

;then we undraw the ghost
;if the ghost stood on a point, redraw a point
;if the ghost stood on an energizer, redraw an energizer
;else, clear the tile

;then draw the ghost at it's new location

;-------------------------------------------------------------------------------
;                     object         | way of transfering | way of accessability
;-------------------------------------------------------------------------------
;offset of ghost bitmap 			 | stack segment      | [bp + 20]
;grid's horizontal size				 | stack segment	  | [bp + 18]
;offset of grid					 	 | stack segment 	  | [bp + 16]
;offset of point bitmap			 	 | stack segment 	  | [bp + 14]
;offset of energizer bitmap		 	 | stack segment 	  | [bp + 12]
;left value of ghost on the grid 	 | stack segment 	  | [bp + 10]
;top value of ghost on the grid   	 | stack segment 	  | [bp + 8]
;horizontal size of ghost		 	 | stack segment 	  | [bp + 6]
;vertical size of ghost          	 | stack segment 	  | [bp + 4]
;OUTPUT								 | 				 	  |
;new left value of ghost on the grid | stack segment 	  | [sp]
;new top value of ghost on the grid  | stack segment 	  | [sp + 2]
;Local variables					 |					  |
;place in grid						 | stack segment 	  | [bp - 2]
proc MoveGhostRight
	push bp
	mov bp, sp
	sub sp, 2
	
	push ax
	push bx
	push cx
	
	;first we check if we can move
	;location = Grid.Offset + Location.Left + (Location.Top * Grid.X)
	mov bx, [bp + 16]
	mov cx, [bp + 8]
@@Calculate:
	add bx, [bp + 18]
	loop @@Calculate
	
	add bx, [bp + 10]
	mov [bp - 2], bx
	inc bx ;one to the right
	
	cmp [byte bx], 0
	je @@NoMovement
	cmp [byte bx], 5
	jae @@NoMovement
	cmp [byte bx], 4
	je @@MoveThroughTunnel
	jmp @@Movement
	
@@NoMovement:
	mov ax, [bp + 10]
	mov [bp + 22], ax
	mov ax, [bp + 8]
	mov [bp + 24], ax
	
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@EndProc
	
@@MoveThroughTunnel:
	mov [word bp + 22], 1 ;1 before the teleport
	
	mov ax, [bp + 8]
	mov [bp + 24], ax
	
	jmp @@UnDrawGhost
	
@@Movement:
	mov ax, [bp + 10]
	inc ax
	mov [bp + 22], ax
	mov ax, [bp + 8]
	mov [bp + 24], ax
	
@@UnDrawGhost:
	mov bx, [bp - 2]
	cmp [byte bx], 2
	je @@DrawPoint
	cmp [byte bx], 3
	je @@DrawEnergizer
	jmp @@ClearScreen

@@DrawPoint:
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@ReDraw
	
@@DrawEnergizer:
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@ReDraw
	
@@ClearScreen:
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call ClearTile
	
@@ReDraw:
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
@@EndProc:
	pop cx
	pop bx
	pop ax

	add sp, 2
	pop bp
	ret 18
endp MoveGhostRight

;-------------------------------------------------------------------------------
;                     object         | way of transfering | way of accessability
;-------------------------------------------------------------------------------
;offset of ghost bitmap 			 | stack segment      | [bp + 20]
;grid's horizontal size				 | stack segment	  | [bp + 18]
;offset of grid					 	 | stack segment 	  | [bp + 16]
;offset of point bitmap			 	 | stack segment 	  | [bp + 14]
;offset of energizer bitmap		 	 | stack segment 	  | [bp + 12]
;left value of ghost on the grid 	 | stack segment 	  | [bp + 10]
;top value of ghost on the grid   	 | stack segment 	  | [bp + 8]
;horizontal size of ghost		 	 | stack segment 	  | [bp + 6]
;vertical size of ghost          	 | stack segment 	  | [bp + 4]
;OUTPUT								 | 				 	  |
;new left value of ghost on the grid | stack segment 	  | [sp]
;new top value of ghost on the grid  | stack segment 	  | [sp + 2]
;Local variables					 |					  |
;place in grid						 | stack segment 	  | [bp - 2]
proc MoveGhostLeft
	push bp
	mov bp, sp
	sub sp, 2
	
	push ax
	push bx
	push cx
	
	;first we check if we can move
	;location = Grid.Offset + Location.Left + (Location.Top * Grid.X)
	mov bx, [bp + 16]
	mov cx, [bp + 8]
@@Calculate:
	add bx, [bp + 18]
	loop @@Calculate
	
	add bx, [bp + 10]
	mov [bp - 2], bx
	dec bx ;one to the left
	
	cmp [byte bx], 0
	je @@NoMovement
	cmp [byte bx], 5
	jae @@NoMovement
	cmp [byte bx], 4
	je @@MoveThroughTunnel
	jmp @@Movement
	
@@NoMovement:
	mov ax, [bp + 10]
	mov [bp + 22], ax
	mov ax, [bp + 8]
	mov [bp + 24], ax
	
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@EndProc
	
@@MoveThroughTunnel:
	mov ax, [bp + 18]
	sub ax, 2 ;1 before the teleport
	mov [bp + 22], ax
	
	mov ax, [bp + 8]
	mov [bp + 24], ax
	
	jmp @@UnDrawGhost
	
@@Movement:
	mov ax, [bp + 10]
	dec ax
	mov [bp + 22], ax
	mov ax, [bp + 8]
	mov [bp + 24], ax
	
@@UnDrawGhost:
	mov bx, [bp - 2]
	cmp [byte bx], 2
	je @@DrawPoint
	cmp [byte bx], 3
	je @@DrawEnergizer
	jmp @@ClearScreen

@@DrawPoint:
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@ReDraw
	
@@DrawEnergizer:
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@ReDraw
	
@@ClearScreen:
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call ClearTile
	
@@ReDraw:
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
@@EndProc:
	pop cx
	pop bx
	pop ax

	add sp, 2
	pop bp
	ret 18
endp MoveGhostLeft

;-------------------------------------------------------------------------------
;                     object         | way of transfering | way of accessability
;-------------------------------------------------------------------------------
;offset of ghost bitmap 			 | stack segment      | [bp + 22]
;grid's horizontal size				 | stack segment      | [bp + 20]
;grid's vertical size				 | stack segment	  | [bp + 18]
;offset of grid					 	 | stack segment 	  | [bp + 16]
;offset of point bitmap			 	 | stack segment 	  | [bp + 14]
;offset of energizer bitmap		 	 | stack segment 	  | [bp + 12]
;left value of ghost on the grid 	 | stack segment 	  | [bp + 10]
;top value of ghost on the grid   	 | stack segment 	  | [bp + 8]
;horizontal size of ghost		 	 | stack segment 	  | [bp + 6]
;vertical size of ghost          	 | stack segment 	  | [bp + 4]
;OUTPUT								 | 				 	  |
;new left value of ghost on the grid | stack segment 	  | [sp]
;new top value of ghost on the grid  | stack segment 	  | [sp + 2]
;Local variables					 |					  |
;place in grid						 | stack segment 	  | [bp - 2]
proc MoveGhostUp
	push bp
	mov bp, sp
	sub sp, 2
	
	push ax
	push bx
	push cx
	
	;first we check if we can move
	;location = Grid.Offset + Location.Left + (Location.Top * Grid.X)
	mov bx, [bp + 16]
	mov cx, [bp + 8]
@@Calculate:
	add bx, [bp + 20]
	loop @@Calculate
	
	add bx, [bp + 10]
	mov [bp - 2], bx
	sub bx, [bp + 20] ;1 upwards
	
	cmp [byte bx], 0
	je @@NoMovement
	cmp [byte bx], 5
	jae @@NoMovement
	cmp [byte bx], 4
	je @@MoveThroughTunnel
	jmp @@Movement
	
@@NoMovement:
	mov ax, [bp + 10]
	mov [bp + 24], ax
	mov ax, [bp + 8]
	mov [bp + 26], ax
	
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@EndProc
	
@@MoveThroughTunnel:
	mov ax, [bp + 10]
	mov [bp + 24], ax
	
	mov ax, [bp + 18]
	sub ax, 2 ;1 before the teleport
	mov [bp + 26], ax
	jmp @@Movement
	
	jmp @@UnDrawGhost
	
@@Movement:
	mov ax, [bp + 10]
	mov [bp + 24], ax
	mov ax, [bp + 8]
	dec ax
	mov [bp + 26], ax
	
@@UnDrawGhost:
	mov bx, [bp - 2]
	cmp [byte bx], 2
	je @@DrawPoint
	cmp [byte bx], 3
	je @@DrawEnergizer
	jmp @@ClearScreen

@@DrawPoint:
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@ReDraw
	
@@DrawEnergizer:
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@ReDraw
	
@@ClearScreen:
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call ClearTile
	
@@ReDraw:
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
@@EndProc:
	pop cx
	pop bx
	pop ax

	add sp, 2
	pop bp
	ret 20
endp MoveGhostUp

;-------------------------------------------------------------------------------
;                     object         | way of transfering | way of accessability
;-------------------------------------------------------------------------------
;offset of ghost bitmap 			 | stack segment      | [bp + 22]
;grid's horizontal size				 | stack segment      | [bp + 20]
;grid's vertical size				 | stack segment	  | [bp + 18]
;offset of grid					 	 | stack segment 	  | [bp + 16]
;offset of point bitmap			 	 | stack segment 	  | [bp + 14]
;offset of energizer bitmap		 	 | stack segment 	  | [bp + 12]
;left value of ghost on the grid 	 | stack segment 	  | [bp + 10]
;top value of ghost on the grid   	 | stack segment 	  | [bp + 8]
;horizontal size of ghost		 	 | stack segment 	  | [bp + 6]
;vertical size of ghost          	 | stack segment 	  | [bp + 4]
;OUTPUT								 | 				 	  |
;new left value of ghost on the grid | stack segment 	  | [sp]
;new top value of ghost on the grid  | stack segment 	  | [sp + 2]
;Local variables					 |					  |
;place in grid						 | stack segment 	  | [bp - 2]
proc MoveGhostDown
	push bp
	mov bp, sp
	sub sp, 2
	
	push ax
	push bx
	push cx
	
	;first we check if we can move
	;location = Grid.Offset + Location.Left + (Location.Top * Grid.X)
	mov bx, [bp + 16]
	mov cx, [bp + 8]
@@Calculate:
	add bx, [bp + 20]
	loop @@Calculate
	
	add bx, [bp + 10]
	mov [bp - 2], bx
	add bx, [bp + 20] ;1 downwards
	
	cmp [byte bx], 0
	je @@NoMovement
	cmp [byte bx], 5
	jae @@NoMovement
	cmp [byte bx], 4
	je @@MoveThroughTunnel
	jmp @@Movement
	
@@NoMovement:
	mov ax, [bp + 10]
	mov [bp + 24], ax
	mov ax, [bp + 8]
	mov [bp + 26], ax
	
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@EndProc
	
@@MoveThroughTunnel:
	mov ax, [bp + 10]
	mov [bp + 24], ax
	
	mov [word bp + 26], 1 ;1 before the teleport
	jmp @@Movement
	
	jmp @@UnDrawGhost
	
@@Movement:
	mov ax, [bp + 10]
	mov [bp + 24], ax
	mov ax, [bp + 8]
	inc ax
	mov [bp + 26], ax
	
@@UnDrawGhost:
	mov bx, [bp - 2]
	cmp [byte bx], 2
	je @@DrawPoint
	cmp [byte bx], 3
	je @@DrawEnergizer
	jmp @@ClearScreen

@@DrawPoint:
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@ReDraw
	
@@DrawEnergizer:
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	jmp @@ReDraw
	
@@ClearScreen:
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call ClearTile
	
@@ReDraw:
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
@@EndProc:
	pop cx
	pop bx
	pop ax

	add sp, 2
	pop bp
	ret 20
endp MoveGhostDown

;first we set the new location of the ghost

;then we undraw the ghost
;if the ghost stood on a point, redraw a point
;if the ghost stood on an energizer, redraw an energizer
;if the ghost stood on a barrier, redraw a barrier
;else, clear the tile

;then draw the ghost at it's new location

;-------------------------------------------------------------------------------
;                     object         | way of transfering | way of accessability
;-------------------------------------------------------------------------------
;offset of the barrier				 | stack segment	  | [bp + 22]
;grid's horizontal size				 | stack segment	  | [bp + 20]
;offset of grid					 	 | stack segment 	  | [bp + 18]
;offset of ghost bitmap 			 | stack segment      | [bp + 16]
;offset of point bitmap			 	 | stack segment 	  | [bp + 14]
;offset of energizer bitmap		 	 | stack segment 	  | [bp + 12]
;left value of ghost on the grid 	 | stack segment 	  | [bp + 10]
;top value of ghost on the grid   	 | stack segment 	  | [bp + 8]
;horizontal size of ghost		 	 | stack segment 	  | [bp + 6]
;vertical size of ghost          	 | stack segment 	  | [bp + 4]
;OUTPUT								 | 				 	  |
;new left value of ghost on the grid | stack segment 	  | [sp]
;new top value of ghost on the grid  | stack segment 	  | [sp + 2]
;Local variables					 |					  |
;place in grid						 | stack segment 	  | [bp - 2]
proc MoveWallBreakerRight
	push bp
	mov bp, sp
	sub sp, 2
	
	push ax
	push bx
	push dx
	
	;first we calculate the place in the grid
	;location = Grid.Offset + Location.Left + (Location.Top * Grid.X)
	mov ax, [bp + 8]
	mov bx, [bp + 20]
	xor dx, dx
	mul bx
	add ax, [bp + 10]
	add ax, [bp + 18]
	mov [bp - 2], ax
	
	;now we undraw the ghost from its current position
	mov bx, [bp - 2]
	cmp [byte bx], 2
	je @@Point
	cmp [byte bx], 3
	je @@Energizer
	cmp [byte bx], 5
	jae @@Barrier
	jmp @@Movement
	
@@Barrier:
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	jmp @@ReDraw
	
@@Movement:
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call ClearTile
	jmp @@ReDraw
	
@@Point:
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	jmp @@ReDraw

@@Energizer:
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
@@ReDraw:
	inc bx ;bx now holds the place in the grid to the right of the current place
	
	cmp [byte bx], 0
	je @@NoMovement
	cmp [byte bx], 1
	je @@Regular_Movement
	cmp [byte bx], 2
	je @@Regular_Movement
	cmp [byte bx], 3
	je @@Regular_Movement
	cmp [byte bx], 4
	je @@Teleport
	jmp @@Breakable_Wall_Movement
	
@@NoMovement:
	mov ax, [bp + 10]
	mov [bp + 24], ax
	mov ax, [bp + 8]
	mov [bp + 26], ax	
	jmp @@ReDraw_Ghost

@@Regular_Movement:
	mov ax, [bp + 10]
	inc ax
	mov [bp + 24], ax
	mov ax, [bp + 8]
	mov [bp + 26], ax	
	jmp @@ReDraw_Ghost
	
@@Teleport:
	mov [word bp + 24], 1 ;1 before the teleport
	
	mov ax, [bp + 8]
	mov [bp + 26], ax
	jmp @@ReDraw_Ghost

@@Breakable_Wall_Movement:
	mov bx, [bp - 2]
	inc bx
	inc [byte bx]
	
	cmp [byte bx], 8 ;the wall was attemped to be broken for 3 times, it will now break
	je @@BreakWall
	
	mov ax, [bp + 10]
	mov [bp + 24], ax
	mov ax, [bp + 8]
	mov [bp + 26], ax
	jmp @@ReDraw_Ghost
	
@@BreakWall:
	mov ax, [bp + 10]
	inc ax
	mov [bp + 24], ax
	mov ax, [bp + 8]
	mov [bp + 26], ax
	
	mov [byte bx], 5 ;change the pixel from an unbreakable wall, to a normal path

@@ReDraw_Ghost:
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	pop dx
	pop bx
	pop ax
	
	add sp, 2
	pop bp
	ret 20
endp MoveWallBreakerRight

;-------------------------------------------------------------------------------
;                     object         | way of transfering | way of accessability
;-------------------------------------------------------------------------------
;offset of the barrier				 | stack segment	  | [bp + 22]
;grid's horizontal size				 | stack segment	  | [bp + 20]
;offset of grid					 	 | stack segment 	  | [bp + 18]
;offset of ghost bitmap 			 | stack segment      | [bp + 16]
;offset of point bitmap			 	 | stack segment 	  | [bp + 14]
;offset of energizer bitmap		 	 | stack segment 	  | [bp + 12]
;left value of ghost on the grid 	 | stack segment 	  | [bp + 10]
;top value of ghost on the grid   	 | stack segment 	  | [bp + 8]
;horizontal size of ghost		 	 | stack segment 	  | [bp + 6]
;vertical size of ghost          	 | stack segment 	  | [bp + 4]
;OUTPUT								 | 				 	  |
;new left value of ghost on the grid | stack segment 	  | [sp]
;new top value of ghost on the grid  | stack segment 	  | [sp + 2]
;Local variables					 |					  |
;place in grid						 | stack segment 	  | [bp - 2]
proc MoveWallBreakerLeft
	push bp
	mov bp, sp
	sub sp, 2

	push ax
	push bx
	push dx
	
	;first we calculate the place in the grid
	;location = Grid.Offset + Location.Left + (Location.Top * Grid.X)
	mov ax, [bp + 8]
	mov bx, [bp + 20]
	xor dx, dx
	mul bx
	add ax, [bp + 10]
	add ax, [bp + 18]
	mov [bp - 2], ax
	
	;now we undraw the ghost from its current position
	mov bx, [bp - 2]
	cmp [byte bx], 2
	je @@Point
	cmp [byte bx], 3
	je @@Energizer
	cmp [byte bx], 5
	jae @@Barrier
	jmp @@Movement
	
@@Barrier:
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	jmp @@ReDraw
@@Movement:
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call ClearTile
	jmp @@ReDraw
	
@@Point:
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	jmp @@ReDraw

@@Energizer:
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
@@ReDraw:
	dec bx ;bx now holds the place in the grid to the dec of the current place
	
	cmp [byte bx], 0
	je @@NoMovement
	cmp [byte bx], 1
	je @@Regular_Movement
	cmp [byte bx], 2
	je @@Regular_Movement
	cmp [byte bx], 3
	je @@Regular_Movement
	cmp [byte bx], 4
	je @@Teleport
	jmp @@Breakable_Wall_Movement
	
@@NoMovement:
	mov ax, [bp + 10]
	mov [bp + 24], ax
	mov ax, [bp + 8]
	mov [bp + 26], ax	
	jmp @@ReDraw_Ghost

@@Regular_Movement:
	mov ax, [bp + 10]
	dec ax
	mov [bp + 24], ax
	mov ax, [bp + 8]
	mov [bp + 26], ax	
	jmp @@ReDraw_Ghost
	
@@Teleport:
	mov ax, [bp + 20]
	sub ax, 2
	mov [bp + 24], ax ;1 before the teleport
	
	mov ax, [bp + 8]
	mov [bp + 26], ax
	jmp @@ReDraw_Ghost

@@Breakable_Wall_Movement:
	mov bx, [bp - 2]
	dec bx
	inc [byte bx]
	
	cmp [byte bx], 8 ;the wall was attemped to be broken for 3 times, it will now break
	je @@BreakWall
	
	mov ax, [bp + 10]
	mov [bp + 24], ax
	mov ax, [bp + 8]
	mov [bp + 26], ax
	jmp @@ReDraw_Ghost
	
@@BreakWall:
	mov ax, [bp + 10]
	dec ax
	mov [bp + 24], ax
	mov ax, [bp + 8]
	mov [bp + 26], ax
	
	mov [byte bx], 5 ;change the pixel from an unbreakable wall, to a normal path

@@ReDraw_Ghost:
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	pop dx
	pop bx
	pop ax
	
	add sp, 2
	pop bp
	ret 20
endp MoveWallBreakerLeft

;-------------------------------------------------------------------------------
;                     object         | way of transfering | way of accessability
;-------------------------------------------------------------------------------
;offset of the barrier				 | stack segment	  | [bp + 24]
;grid's vertical size				 | stack segment	  | [bp + 22]
;grid's horizontal size				 | stack segment	  | [bp + 20]
;offset of grid					 	 | stack segment 	  | [bp + 18]
;offset of ghost bitmap 			 | stack segment      | [bp + 16]
;offset of point bitmap			 	 | stack segment 	  | [bp + 14]
;offset of energizer bitmap		 	 | stack segment 	  | [bp + 12]
;left value of ghost on the grid 	 | stack segment 	  | [bp + 10]
;top value of ghost on the grid   	 | stack segment 	  | [bp + 8]
;horizontal size of ghost		 	 | stack segment 	  | [bp + 6]
;vertical size of ghost          	 | stack segment 	  | [bp + 4]
;OUTPUT								 | 				 	  |
;new left value of ghost on the grid | stack segment 	  | [sp]
;new top value of ghost on the grid  | stack segment 	  | [sp + 2]
;Local variables					 |					  |
;place in grid						 | stack segment 	  | [bp - 2]
proc MoveWallBreakerUp
	push bp
	mov bp, sp
	sub sp, 2
	
	push ax
	push bx
	push dx
	
	;first we calculate the place in the grid
	;location = Grid.Offset + Location.Left + (Location.Top * Grid.X)
	mov ax, [bp + 8]
	mov bx, [bp + 20]
	xor dx, dx
	mul bx
	add ax, [bp + 10]
	add ax, [bp + 18]
	mov [bp - 2], ax
	
	;now we undraw the ghost from its current position
	mov bx, [bp - 2]
	cmp [byte bx], 2
	je @@Point
	cmp [byte bx], 3
	je @@Energizer
	cmp [byte bx], 5
	jae @@Barrier
	jmp @@Movement
	
@@Barrier:
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	jmp @@ReDraw
	
@@Movement:
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call ClearTile
	jmp @@ReDraw
	
@@Point:
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	jmp @@ReDraw

@@Energizer:
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
@@ReDraw:
	sub bx, [bp + 20] ;bx now holds the place in the grid upwards of the current place
	
	cmp [byte bx], 0
	je @@NoMovement
	cmp [byte bx], 1
	je @@Regular_Movement
	cmp [byte bx], 2
	je @@Regular_Movement
	cmp [byte bx], 3
	je @@Regular_Movement
	cmp [byte bx], 4
	je @@Teleport
	jmp @@Breakable_Wall_Movement
	
@@NoMovement:
	mov ax, [bp + 10]
	mov [bp + 26], ax
	mov ax, [bp + 8]
	mov [bp + 28], ax	
	jmp @@ReDraw_Ghost

@@Regular_Movement:
	mov ax, [bp + 10]
	mov [bp + 26], ax
	mov ax, [bp + 8]
	dec ax
	mov [bp + 28], ax	
	jmp @@ReDraw_Ghost
	
@@Teleport:
	mov ax, [bp + 10]
	mov [bp + 26], ax
	
	mov ax, [bp + 22]
	sub ax, 2
	mov [bp + 28], ax ;1 before the teleport
	jmp @@ReDraw_Ghost

@@Breakable_Wall_Movement:
	mov bx, [bp - 2]
	sub bx, [bp + 20]
	inc [byte bx]
	
	cmp [byte bx], 8 ;the wall was attemped to be broken for 3 times, it will now break
	je @@BreakWall
	
	mov ax, [bp + 10]
	mov [bp + 26], ax
	mov ax, [bp + 8]
	mov [bp + 28], ax
	jmp @@ReDraw_Ghost
	
@@BreakWall:
	mov ax, [bp + 10]
	mov [bp + 26], ax
	mov ax, [bp + 8]
	dec ax
	mov [bp + 28], ax
	
	mov [byte bx], 5 ;change the pixel from an unbreakable wall, to a normal path

@@ReDraw_Ghost:
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 28]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	pop dx
	pop bx
	pop ax
	
	add sp, 2
	pop bp
	ret 22
endp MoveWallBreakerUp

;-------------------------------------------------------------------------------
;                     object         | way of transfering | way of accessability
;-------------------------------------------------------------------------------
;offset of the barrier				 | stack segment	  | [bp + 24]
;grid's vertical size				 | stack segment	  | [bp + 22]
;grid's horizontal size				 | stack segment	  | [bp + 20]
;offset of grid					 	 | stack segment 	  | [bp + 18]
;offset of ghost bitmap 			 | stack segment      | [bp + 16]
;offset of point bitmap			 	 | stack segment 	  | [bp + 14]
;offset of energizer bitmap		 	 | stack segment 	  | [bp + 12]
;left value of ghost on the grid 	 | stack segment 	  | [bp + 10]
;top value of ghost on the grid   	 | stack segment 	  | [bp + 8]
;horizontal size of ghost		 	 | stack segment 	  | [bp + 6]
;vertical size of ghost          	 | stack segment 	  | [bp + 4]
;OUTPUT								 | 				 	  |
;new left value of ghost on the grid | stack segment 	  | [sp]
;new top value of ghost on the grid  | stack segment 	  | [sp + 2]
;Local variables					 |					  |
;place in grid						 | stack segment 	  | [bp - 2]
proc MoveWallBreakerDown
	push bp
	mov bp, sp
	sub sp, 2
	
	push ax
	push bx
	push dx
	
	;first we calculate the place in the grid
	;location = Grid.Offset + Location.Left + (Location.Top * Grid.X)
	mov ax, [bp + 8]
	mov bx, [bp + 20]
	xor dx, dx
	mul bx
	add ax, [bp + 10]
	add ax, [bp + 18]
	mov [bp - 2], ax
	
	;now we undraw the ghost from its current position
	mov bx, [bp - 2]
	cmp [byte bx], 2
	je @@Point
	cmp [byte bx], 3
	je @@Energizer
	cmp [byte bx], 5
	jae @@Barrier
	jmp @@Movement
	
@@Barrier:
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	jmp @@ReDraw
	
@@Movement:
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call ClearTile
	jmp @@ReDraw
	
@@Point:
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	jmp @@ReDraw

@@Energizer:
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
@@ReDraw:
	add bx, [bp + 20] ;bx now holds the place in the grid downwards of the current place
	
	cmp [byte bx], 0
	je @@NoMovement
	cmp [byte bx], 1
	je @@Regular_Movement
	cmp [byte bx], 2
	je @@Regular_Movement
	cmp [byte bx], 3
	je @@Regular_Movement
	cmp [byte bx], 4
	je @@Teleport
	jmp @@Breakable_Wall_Movement
	
@@NoMovement:
	mov ax, [bp + 10]
	mov [bp + 26], ax
	mov ax, [bp + 8]
	mov [bp + 28], ax	
	jmp @@ReDraw_Ghost

@@Regular_Movement:
	mov ax, [bp + 10]
	mov [bp + 26], ax
	mov ax, [bp + 8]
	inc ax
	mov [bp + 28], ax	
	jmp @@ReDraw_Ghost
	
@@Teleport:
	mov ax, [bp + 10]
	mov [bp + 26], ax
	
	mov [word bp + 28], 1 ;1 before the teleport
	jmp @@ReDraw_Ghost

@@Breakable_Wall_Movement:
	mov bx, [bp - 2]
	add bx, [bp + 20]
	inc [byte bx]
	
	cmp [byte bx], 8 ;the wall was attemped to be broken for 3 times, it will now break
	je @@BreakWall
	
	mov ax, [bp + 10]
	mov [bp + 26], ax
	mov ax, [bp + 8]
	mov [bp + 28], ax
	jmp @@ReDraw_Ghost
	
@@BreakWall:
	mov ax, [bp + 10]
	mov [bp + 26], ax
	mov ax, [bp + 8]
	inc ax
	mov [bp + 28], ax
	
	mov [byte bx], 5 ;change the pixel from an unbreakable wall, to a normal path

@@ReDraw_Ghost:
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 28]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call DrawBitmap
	
	pop dx
	pop bx
	pop ax
	
	add sp, 2
	pop bp
	ret 22
endp MoveWallBreakerDown

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;end of ghost movement area
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;----------------------------------------------------------------------------
;                     object      | way of transfering | way of accessability
;----------------------------------------------------------------------------
;pacman left location on the grid | stack segment	   | [bp + 10]
;pacman top location on the grid  | stack segment      | [bp + 8]
;ghost left location on the grid  | stack segment      | [bp + 6]
;ghost top location on the grid   | stack segment      | [bp + 4]
;OUTPUT							  |					   |
;boolean (1 = true) (0 = false)   | satck segment	   | [sp]
proc CheckForContact
	push bp
	mov bp, sp
	
	push ax
	
	;if the left and top location of both players is the same, there is contact
	mov ax, [bp + 10]
	cmp ax, [bp + 6]
	jne @@NoContact ;left locations
	
	mov ax, [bp + 8]
	cmp ax, [bp + 4]
	jne @@NoContact ;top location
	
@@Contact:
	mov [word bp + 12], 1
	jmp @@EndProc
	
@@NoContact:
	mov [word bp + 12], 0
	
@@EndProc:
	
	pop ax
	
	pop bp
	ret 8
endp CheckForContact

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;start of ghost's moving algorithms
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;-------------------------------------------------------------------------------
;                    object         | way of transfering  | way of accessability
;-------------------------------------------------------------------------------
;offset of ghost's current direction | stack segment	  | [bp + 24]
;offset of grid					 	| stack segment 	  | [bp + 22]
;grid's horizonta size			 	| stack segment 	  | [bp + 20]
;grid's vertical size			 	| stack segment 	  | [bp + 18]
;offset of ghost bitmap			 	| stack segment 	  | [bp + 16]
;offset of point					| stack segment 	  | [bp + 14]
;offset of energizer bitmap		 	| stack segment 	  | [bp + 12]
;left value of ghost on the grid 	| stack segment 	  | [bp + 10]
;top value of ghost on the grid  	| stack segment 	  | [bp + 8]
;horizontal size of ghost		 	| stack segment 	  | [bp + 6]
;vertical size of ghost			 	| stack segment 	  | [bp + 4]
;OUTPUT								| 					  |
;new left value 					| stack segment		  | [sp]
;new top value						| stack segment		  | [sp + 2]
;Local variable						|					  |
;new left value						| stack segment		  | [bp - 2]
;new top value						| stack segment		  | [bp - 4]
proc FirstMovingAlgorithm ;circle the map
;The algorithm
;according to the current direction you enter one of the 4 following paths
;in each path you try to move to the current direction in the path
;if you cannot move to the current direction you try the next one in the path

;Right -> Down -> Up -> Left
;Left -> Down -> Up -> Right
;Up -> Right -> Left -> Down
;Down -> Right -> Left -> Up

;the way of checking if the move was successful is...
;you try to move and check if the new location is equal to the previous location

	push bp
	mov bp, sp
	sub sp, 4
	
	push ax
	push bx
	
	mov bx, [bp + 24]
	mov bx, [bx]
	and bx, 0Fh
	cmp bx, 1
	je @@JMPright
	cmp bx, 2
	je @@JMPleft
	cmp bx, 3
	je @@JMPup
	jmp @@JMPdown
	
@@JMPright:
	jmp @@MoveRight
@@JMPleft:
	jmp @@MoveLeft
@@JMPup:
	jmp @@MoveUp
@@JMPdown:
	jmp @@MoveDown
	
@@MoveRight:
	push ax
	push ax ;2 extra pushes for the returning values
	
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call MoveGhostRight
	
	pop ax
	mov [bp - 2], ax
	pop ax
	mov [bp - 4], ax
	
	mov ax, [bp - 2]
	cmp ax, [bp + 10]
	je @@CantMoveRight
	
	mov bx, [bp + 24]
	mov [byte bx], 1 ;1 is the direction to the right
	
	mov ax, [bp - 2]
	mov [bp + 26], ax
	mov ax, [bp - 4]
	mov [bp + 28], ax
	jmp @@EndProc
	
@@CantMoveRight:
	cmp bx, 1
	je @@JMPdown
	cmp bx, 3
	je @@MoveLeft
	cmp bx, 4
	je @@MoveLeft
	
@@MoveLeft:
	push ax
	push ax ;2 extra pushes for the returning values
	
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call MoveGhostLeft
	
	pop ax
	mov [bp - 2], ax
	pop ax
	mov [bp - 4], ax
	
	mov ax, [bp - 2]
	cmp ax, [bp + 10]
	je @@CantMoveLeft
	
	mov bx, [bp + 24]
	mov [byte bx], 2 ;2 is the direction to the left
	
	mov ax, [bp - 2]
	mov [bp + 26], ax
	mov ax, [bp - 4]
	mov [bp + 28], ax
	jmp @@EndProc
	
@@CantMoveLeft:
	cmp bx, 2
	je @@MoveDown
	cmp bx, 3
	je @@MoveDown
	cmp bx, 4
	je @@MoveUp
	
@@MoveUp:
	push ax
	push ax ;2 extra pushes for the returning values
	
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call MoveGhostUp
	
	pop ax
	mov [bp - 2], ax
	pop ax
	mov [bp - 4], ax
	
	mov ax, [bp - 4]
	cmp ax, [bp + 8]
	je @@CantMoveUp
	
	mov bx, [bp + 24]
	mov [byte bx], 3 ;3 is the direction upwards
	
	mov ax, [bp - 2]
	mov [bp + 26], ax
	mov ax, [bp - 4]
	mov [bp + 28], ax
	jmp @@EndProc
	
@@CantMoveUp:
	cmp bx, 3
	je @@JMPright2
	cmp bx, 1
	je @@JMPleft2
	cmp bx, 2
	je @@JMPleft2
	
@@JMPright2:
	jmp @@MoveRight
@@JMPleft2:
	jmp @@MoveLeft
@@JMPup2:
	jmp @@MoveUp
@@JMPdown2:
	jmp @@MoveDown
@@SkipJMP2:
	
@@MoveDown:
	push ax
	push ax ;2 extra pushes for the returning values
	
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call MoveGhostDown
	
	pop ax
	mov [bp - 2], ax
	pop ax
	mov [bp - 4], ax
	
	mov ax, [bp - 4]
	cmp ax, [bp + 8]
	je @@CantMoveDown
	
	mov bx, [bp + 24]
	mov [byte bx], 4 ;4 is the direction downwards
	
	mov ax, [bp - 2]
	mov [bp + 26], ax
	mov ax, [bp - 4]
	mov [bp + 28], ax
	jmp @@EndProc
	
@@CantMoveDown:	
	cmp bx, 4
	je @@JMPright2
	cmp bx, 2
	je @@JMPup2
	cmp bx, 1
	je @@JMPup2
	
@@EndProc:
	
	pop bx
	pop ax
	
	add sp, 4
	pop bp
	ret 22
endp FirstMovingAlgorithm

;-------------------------------------------------------------------------------
;                    object          | way of transfering  | way of accessability
;-------------------------------------------------------------------------------
;pacman's left location in the grid  | stack segment       | [bp + 26]
;pacman's top location in the grid   | stack segment	   | [bp + 24]
;offset of grid					 	 | stack segment 	   | [bp + 22]
;grid's horizonta size			 	 | stack segment 	   | [bp + 20]
;grid's vertical size			 	 | stack segment 	   | [bp + 18]
;offset of ghost bitmap			 	 | stack segment 	   | [bp + 16]
;offset of point					 | stack segment 	   | [bp + 14]
;offset of energizer bitmap		 	 | stack segment 	   | [bp + 12]
;left value of ghost on the grid 	 | stack segment 	   | [bp + 10]
;top value of ghost on the grid  	 | stack segment 	   | [bp + 8]
;horizontal size of ghost		 	 | stack segment 	   | [bp + 6]
;vertical size of ghost			 	 | stack segment 	   | [bp + 4]
;OUTPUT								 | 					   | 
;new left value 					 | stack segment	   | [sp]
;new top value						 | stack segment	   | [sp + 2]
proc SecendMovingAlgorithm ;roughly followes pacman
;if Pacman's y value is bigger than the Ghost's y value, move down
;if Pacman's y value is smaller than the ghost's y value, move up
;if Pacman's y value is equal to the Ghost's y value, check the x values
;if Pacman's x value is bigger than the Ghost's x value, move right
;if Pacman's x value is smaller than the Ghost's x value, move left

	push bp
	mov bp, sp
	
	push ax
	
	mov ax, [bp + 10]
	cmp ax, [bp + 26]
	;Ghost(x) > Pacman(x)
	ja @@MoveLeft
	;Ghost(x) < Pacman(x)
	jb @@MoveRight
	jmp @@PacmanAndGhostOnSameX
	

@@MoveLeft:
	push ax
	push ax ;2 extra pushes for the returning values
	
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call MoveGhostLeft
	
	pop ax
	mov [bp + 28], ax
	pop ax
	mov [bp + 30], ax
	jmp @@EndProc

@@MoveRight:
	push ax
	push ax ;2 extra pushes for the returning values
	
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call MoveGhostRight
	
	pop ax
	mov [bp + 28], ax
	pop ax
	mov [bp + 30], ax
	jmp @@EndProc

@@PacmanAndGhostOnSameX:
	mov ax, [bp + 8]
	cmp ax, [bp + 24]
	;Ghost(y) > Pacman(y)
	ja @@MoveUp
	;Ghost(y) < Pacman(y)
	jb @@MoveDown
	;Ghost(y) = Pacman(y)
	jmp @@EndProc
	
@@MoveUp:
	push ax
	push ax ;2 extra pushes for the returning values
	
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call MoveGhostUp
	
	pop ax
	mov [bp + 28], ax
	pop ax
	mov [bp + 30], ax
	jmp @@EndProc
	
@@MoveDown:
	push ax
	push ax ;2 extra pushes for the returning values
	
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call MoveGhostDown
	
	pop ax
	mov [bp + 28], ax
	pop ax
	mov [bp + 30], ax
	jmp @@EndProc
	
@@EndProc:
	pop ax
	
	pop bp
	ret 24
endp SecendMovingAlgorithm

;----------------------------------------------------------------------------
;                     object      | way of transfering | way of accessability
;----------------------------------------------------------------------------
;horizontal size of a tile		  | stack segment 	   | [bp + 54]
;vertical size of a tile		  | stack segment 	   | [bp + 52]
;offset of point bitmap			  | stack segment 	   | [bp + 50]
;offset of energizer bitmap		  | stack segment 	   | [bp + 48]
;offset of ghost bitmap			  | stack segment 	   | [bp + 46]
;offset of directions array		  | stack segment 	   | [bp + 44]
;offset of array to hold the path | stack segment 	   | [bp + 42]
;offset of path head			  | stack segment 	   | [bp + 40]
;offset of path tail			  | stack segment 	   | [bp + 38]
;value of path length			  | stack segment 	   | [bp + 36]
;offset of openlist			  	  | stack segment 	   | [bp + 34]
;offset of openlist head		  | stack segment 	   | [bp + 32]
;offset of openlist tail		  | stack segment 	   | [bp + 30]
;value of openlist length		  | stack segment 	   | [bp + 28]
;offset of closedlist			  | stack segment 	   | [bp + 26]
;offset of closedlist head		  | stack segment 	   | [bp + 24]
;offset of closedlist tail		  | stack segment 	   | [bp + 22]
;value of closedlist length		  | stack segment 	   | [bp + 20]
;offset of node array			  | stack segment 	   | [bp + 18]
;offset of grid					  | stack segment 	   | [bp + 16]
;horizontal value of grid		  | stack segment 	   | [bp + 14]
;vertical value of grid			  | stack segment 	   | [bp + 12]
;left value of destination		  | stack segment 	   | [bp + 10]
;top value of destination		  | stack segment 	   | [bp + 8]
;current left value				  | stack segment 	   | [bp + 6]
;current top value				  | stack segment 	   | [bp + 4]
;OUTPUT							  |				  	   |
;new left value					  | satck segment 	   | [sp]
;new top value					  | stack segment 	   | [sp + 2]
proc ThirdMovingAlgorithm ;takes the most efficient way to pacman
;call the A* algorithm with the base location being your current location and destination being pacman's location
;pop the last value in the path and move the ghost to this popped pixel

	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	
	mov ax, [bp + 44]
	push ax
	mov ax, [bp + 42]
	push ax
	mov ax, [bp + 40]
	push ax
	mov ax, [bp + 38]
	push ax
	mov ax, [bp + 36]
	push ax
	mov ax, [bp + 34]
	push ax
	mov ax, [bp + 32]
	push ax
	mov ax, [bp + 30]
	push ax
	mov ax, [bp + 28]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call A_Star
	
	push ax ;1 extra push for the returning value
	mov bx, [bp + 40]
	mov bx, [bx]
	push bx
	mov bx, [bp + 38]
	mov bx, [bx]
	push bx
	call IsQueueEmpty
	pop ax
	cmp ax, 1
	jne @@QueueIsNotEmpty
	
	mov ax, [bp + 6]
	mov [bp + 56], ax
	mov ax, [bp + 4]
	mov [bp + 58], ax
	jmp @@EndProc
	
@@QueueIsNotEmpty:
	mov ax, [bp + 4]
	mov bx, [bp + 14]
	xor dx, dx
	mul bx
	add ax, [bp + 6]
	add ax, [bp + 16]
	mov bx, ax
	
	cmp [byte bx], 2 ;point
	je @@ReDraw_Point_Background
	cmp [byte bx], 3 ;energizer
	je @@ReDraw_Energizer_Background
	;normal floor or teleport
	
@@ReDraw_Normal_Background:
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp + 54]
	push ax
	mov ax, [bp + 52]
	push ax
	call ClearTile
	jmp @@GetNewLocation
	
@@ReDraw_Point_Background:
	mov ax, [bp + 50]
	push ax
	jmp @@ReDraw_Background
	
@@ReDraw_Energizer_Background:
	mov ax, [bp + 48]
	push ax

@@ReDraw_Background:
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp + 54]
	push ax
	mov ax, [bp + 52]
	push ax
	call DrawBitmap

@@GetNewLocation:	
	push ax
	push ax ;2 extra pushes for the returning values
	mov ax, [bp + 42]
	push ax
	mov ax, [bp + 38]
	push ax
	mov ax, [bp + 36]
	push ax
	call PopLIFO
	pop cx
	pop dx
	
	mov ax, [bp + 46]
	push ax
	push cx
	push dx
	mov ax, [bp + 54]
	push ax
	mov ax, [bp + 52]
	push ax
	call DrawBitmap
	
	mov [bp + 56], cx
	mov [bp + 58], dx
	
@@EndProc:	
	pop dx
	pop cx
	pop bx
	pop ax

	pop bp
	ret 52
endp ThirdMovingAlgorithm

;----------------------------------------------------------------------
;                 object    | way of transfering | way of accessability
;----------------------------------------------------------------------
;offset of barrier			| stack segment 	 | [bp + 28]
;offset of grid	 			| stack segment 	 | [bp + 26]
;grid's vertical size	 	| stack segment 	 | [bp + 24]
;grid's horizontal size	 	| stack segment 	 | [bp + 22]
;offset of point bitmap	 	| stack segment 	 | [bp + 20]
;offset of energizer bitmap | stack segment 	 | [bp + 18]
;left value of pacman	 	| stack segment 	 | [bp + 16]
;top value of pacman	 	| stack segment 	 | [bp + 14]
;offset of ghost bitmap	 	| stack segment 	 | [bp + 12]
;left value of ghost	 	| stack segment 	 | [bp + 10]
;top value of ghost		 	| stack segment 	 | [bp + 8]
;ghost's horizontal size 	| stack segment 	 | [bp + 6] 
;ghost's vertical size	 	| stack segment 	 | [bp + 4]
;OUTPUT						|				 	 |
;ghost's new left value		| stack segment	 	 | [sp]
;ghost's new top value		| stack segment	 	 | [sp + 2]
proc FourthMovingAlgorithm ;roughly followes pacman and can breach wall after 3 tries
;the fourth ghost choose to which direction to move as such:
;calculate the absolute value of the subtraction of the current location and destination of both the x and y values
;then check which is bigger, the absolute value of x subtraction or the one of the y
;if the x value is bigger, we move on the x axis, if the y value is bigger, we move on the y axis

;if we move on the y axis we do the following
;if Pacman's y value is bigger than the Ghost's y value
;move down
;else move up

;if we move on the x axis we do the following
;if Pacman's x value is bigger than the Ghost's x value
;move right
;else move left

;this ghost can also breach and move through a wall if he tried to breach said wall for 3 times

	push bp
	mov bp, sp
	
	push ax
	
	push ax ;1 extra push for the returning value
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	call CalculateFourthMovingAlgorithmMove
	pop ax
	
	cmp ax, 2
	je @@MoveVertically
	jmp @@MoveHorizontally

@@MoveVertically:	
	mov ax, [bp + 8]
	cmp ax, [bp + 14]
	jb @@MoveDown
	ja @@MoveUp
	
	mov ax, [bp + 16]
	mov [bp + 30], ax
	mov ax, [bp + 14]
	mov [bp + 32], ax
	jmp @@EndProc
	
@@MoveUp:
	push ax
	push ax ;2 extra pushes for the returning values

	mov ax, [bp + 28]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call MoveWallBreakerUp
	pop ax
	mov [bp + 30], ax
	pop ax
	mov [bp + 32], ax
	jmp @@EndProc
	
@@MoveDown:
	push ax
	push ax ;2 extra pushes for the returning values

	mov ax, [bp + 28]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call MoveWallBreakerDown
	pop ax
	mov [bp + 30], ax
	pop ax
	mov [bp + 32], ax
	jmp @@EndProc

@@MoveHorizontally:
	mov ax, [bp + 10]
	cmp ax, [bp + 16]
	jb @@MoveRight
	ja @@MoveLeft
	
	mov ax, [bp + 16]
	mov [bp + 30], ax
	mov ax, [bp + 14]
	mov [bp + 32], ax
	jmp @@EndProc
	
@@MoveRight:
	push ax
	push ax ;2 extra pushes for the returning values

	mov ax, [bp + 28]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call MoveWallBreakerRight
	pop ax
	mov [bp + 30], ax
	pop ax
	mov [bp + 32], ax
	jmp @@EndProc
	
@@MoveLeft:
	push ax
	push ax ;2 extra pushes for the returning values

	mov ax, [bp + 28]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call MoveWallBreakerLeft
	pop ax
	mov [bp + 30], ax
	pop ax
	mov [bp + 32], ax
	
@@EndProc:
	pop ax
	
	pop bp
	ret 26
endp FourthMovingAlgorithm

;----------------------------------------------------------------------------
;               object		      | way of transfering | way of accessability
;----------------------------------------------------------------------------
;offset of quarter indicator	  | stack segment	   | [bp + 56]
;horizontal size of a tile		  | stack segment 	   | [bp + 54]
;vertical size of a tile		  | stack segment 	   | [bp + 52]
;offset of point bitmap			  | stack segment 	   | [bp + 50]
;offset of energizer bitmap		  | stack segment 	   | [bp + 48]
;offset of ghost bitmap			  | stack segment 	   | [bp + 46]
;offset of directions array		  | stack segment 	   | [bp + 44]
;offset of array to hold the path | stack segment 	   | [bp + 42]
;offset of path head			  | stack segment 	   | [bp + 40]
;offset of path tail			  | stack segment 	   | [bp + 38]
;value of path length			  | stack segment 	   | [bp + 36]
;offset of openlist			  	  | stack segment 	   | [bp + 34]
;offset of openlist head		  | stack segment 	   | [bp + 32]
;offset of openlist tail		  | stack segment 	   | [bp + 30]
;value of openlist length		  | stack segment 	   | [bp + 28]
;offset of closedlist			  | stack segment 	   | [bp + 26]
;offset of closedlist head		  | stack segment 	   | [bp + 24]
;offset of closedlist tail		  | stack segment 	   | [bp + 22]
;value of closedlist length		  | stack segment 	   | [bp + 20]
;offset of node array			  | stack segment 	   | [bp + 18]
;offset of grid					  | stack segment 	   | [bp + 16]
;horizontal value of grid		  | stack segment 	   | [bp + 14]
;vertical value of grid			  | stack segment 	   | [bp + 12]
;left value of destination		  | stack segment 	   | [bp + 10]
;top value of destination		  | stack segment 	   | [bp + 8]
;current left value				  | stack segment 	   | [bp + 6]
;current top value				  | stack segment 	   | [bp + 4]
;OUTPUT							  |				  	   |
;new left value					  | satck segment 	   | [sp]
;new top value					  | stack segment 	   | [sp + 2]
proc FifthMovingAlgorithm
;the fifth moving algorithm is a ghost used when the ghost are hunted by pacman
;the procedure calculates on which quarter of the map pacman is on
;and makes the a move using A* algorithm to a place far from pacman

;this is the map quarters
; 0 | 1
;======
; 2 | 3

;if pacman is on 0, move to 2
;if pacman is on 2, move to 3
;if pacman is on 3, move to 1
;if pacman is on 1, move to 0

	push bp
	mov bp, sp
	
	push ax
	push bx
	push dx

	push ax ;1 extra push for the returning value
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	call CalculateQuarter
	pop ax
	
	mov bx, [bp + 56]
	mov bx, [bx]
	and bx, 0Fh
	cmp ax, bx
	jne @@A_Star
	jmp @@After_A_Star
	
@@A_Star:
	mov bx, ax
	
	mov ax, [bp + 44]
	push ax
	mov ax, [bp + 42]
	push ax
	mov ax, [bp + 40]
	push ax
	mov ax, [bp + 38]
	push ax
	mov ax, [bp + 36]
	push ax
	mov ax, [bp + 34]
	push ax
	mov ax, [bp + 32]
	push ax
	mov ax, [bp + 30]
	push ax
	mov ax, [bp + 28]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 12]
	push ax
	
	cmp bx, 0
	je @@Zero
	cmp bx, 1
	je @@One
	cmp bx, 2
	je @@Two
	jmp @@Three
	
@@Zero:
	mov bx, [bp + 56]
	mov [byte bx], 0

	mov ax, 1
	push ax
	mov ax, 20
	push ax
	jmp @@Call_A_Star
	
@@One:
	mov bx, [bp + 56]
	mov [byte bx], 1

	mov ax, 1
	push ax
	push ax
	jmp @@Call_A_Star
	
@@Two:
	mov bx, [bp + 56]
	mov [byte bx], 2

	mov ax, 21
	push ax
	mov ax, 20
	push ax
	jmp @@Call_A_Star
	
@@Three:
	mov bx, [bp + 56]
	mov [byte bx], 3

	mov ax, 21
	push ax
	mov ax, 1
	push ax

@@Call_A_Star:
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call A_Star

@@After_A_Star:	
	push ax ;1 extra push for the returing value
	mov bx, [bp + 40]
	mov bx, [bx]
	push bx
	mov bx, [bp + 38]
	mov bx, [bx]
	push bx
	call IsQueueEmpty
	pop ax
	cmp ax, 0
	je @@MakeMove
	
	mov ax, [bp + 6]
	mov [bp + 58], ax
	mov ax, [bp + 4]
	mov [bp + 60], ax
	
	mov bx, [bp + 56]
	mov [byte bx], -1 ;reset quarter indicator since the ghost is not pointing to any quarter
	jmp @@ReDraw

@@MakeMove:	
	push ax
	push ax ;2 extra pushes for the returning values
	mov ax, [bp + 42]
	push ax
	mov ax, [bp + 38]
	push ax
	mov ax, [bp + 36]
	push ax
	call PopLIFO
	pop ax
	mov [bp + 58], ax
	pop ax
	mov [bp + 60], ax
	
	;calculate the value of the current place in the grid
	;place = (Current.Top * Grid.X) + Current.Left + Grid.Offset
	mov ax, [bp + 4]
	mov bx, [bp + 14]
	xor dx, dx
	mul bx
	add ax, [bp + 6]
	add ax, [bp + 16]
	mov bx, ax
	
	cmp [byte bx], 2 ;point
	je @@ReDraw_Point_Background
	cmp [byte bx], 3 ;energizer
	je @@ReDraw_Energizer_Background
	;normal floor or teleport
	
@@ReDraw_Normal_Background:
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp + 54]
	push ax
	mov ax, [bp + 52]
	push ax
	call ClearTile
	jmp @@ReDraw

@@ReDraw_Point_Background:
	mov ax, [bp + 50]
	push ax
	jmp @@ReDraw_Background
	
@@ReDraw_Energizer_Background:
	mov ax, [bp + 48]
	push ax

@@ReDraw_Background:
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp + 54]
	push ax
	mov ax, [bp + 52]
	push ax
	call DrawBitmap

@@ReDraw:
	mov ax, [bp + 46]
	push ax
	mov ax, [bp + 58]
	push ax
	mov ax, [bp + 60]
	push ax
	mov ax, [bp + 54]
	push ax
	mov ax, [bp + 52]
	push ax
	call DrawBitmap
	
@@EndProc:
	pop dx
	pop bx
	pop ax
	
	pop bp
	ret 54
endp FifthMovingAlgorithm

;----------------------------------------------------------------------
;               object		| way of transfering | way of accessability
;----------------------------------------------------------------------
;offset of barrier			| stack segment 	 | [bp + 28]
;offset of grid	 			| stack segment 	 | [bp + 26]
;grid's vertical size	 	| stack segment 	 | [bp + 24]
;grid's horizontal size	 	| stack segment 	 | [bp + 22]
;offset of point bitmap	 	| stack segment 	 | [bp + 20]
;offset of energizer bitmap | stack segment 	 | [bp + 18]
;left value of pacman	 	| stack segment 	 | [bp + 16]
;top value of pacman	 	| stack segment 	 | [bp + 14]
;offset of ghost bitmap	 	| stack segment 	 | [bp + 12]
;left value of ghost	 	| stack segment 	 | [bp + 10]
;top value of ghost		 	| stack segment 	 | [bp + 8]
;ghost's horizontal size 	| stack segment 	 | [bp + 6] 
;ghost's vertical size	 	| stack segment 	 | [bp + 4]
;OUTPUT						|				 	 |
;ghost's new left value		| stack segment	 	 | [sp]
;ghost's new top value		| stack segment	 	 | [sp + 2]
proc SixthMovingAlgorithm
;the sixth moving algorithm is a ghost used when the ghost are hunted by pacman
;the procedure calculates on which quarter of the map pacman is on
;and makes the a move using the fourth movement algorithm to a place far from pacman

;this is the map quarters
; 0 | 1
;======
; 2 | 3

;if pacman is on 0, move to 2
;if pacman is on 2, move to 3
;if pacman is on 3, move to 1
;if pacman is on 1, move to 0

	push bp
	mov bp, sp
	
	push ax
	
	push ax
	push ax ;2 extra pushes for the returning value
	mov ax, [bp + 28]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 18]
	push ax
	
	push ax ;1 extra push for the returning value
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 14]
	push ax
	call CalculateQuarter
	pop ax
	
	cmp ax, 0
	je @@Zero
	cmp ax, 1
	je @@One
	cmp ax, 2
	je @@Two
	jmp @@Three
	
@@Zero:
	mov ax, 1
	push ax
	mov ax, 20
	push ax
	jmp @@MakeMove
	
@@One:
	mov ax, 1
	push ax
	push ax
	jmp @@MakeMove
	
@@Two:
	mov ax, 21
	push ax
	mov ax, 20
	push ax
	jmp @@MakeMove
	
@@Three:
	mov ax, 21
	push ax
	mov ax, 1
	push ax
	
@@MakeMove:	
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call FourthMovingAlgorithm
	pop ax
	mov [bp + 30], ax
	pop ax
	mov [bp + 32], ax
	
	pop ax
	
	pop bp
	ret 26
endp SixthMovingAlgorithm

;----------------------------------------------------------------------------
;                     object      | way of transfering | way of accessability
;----------------------------------------------------------------------------
;hunted boolean of the ghost	  | stack segment	   | [bp + 58]
;alive boolean of the ghost		  | stack segment 	   | [bp + 56]
;horizontal size of a tile		  | stack segment 	   | [bp + 54]
;vertical size of a tile		  | stack segment 	   | [bp + 52]
;offset of point bitmap			  | stack segment 	   | [bp + 50]
;offset of energizer bitmap		  | stack segment 	   | [bp + 48]
;offset of ghost bitmap			  | stack segment 	   | [bp + 46]
;offset of directions array		  | stack segment 	   | [bp + 44]
;offset of array to hold the path | stack segment 	   | [bp + 42]
;offset of path head			  | stack segment 	   | [bp + 40]
;offset of path tail			  | stack segment 	   | [bp + 38]
;value of path length			  | stack segment 	   | [bp + 36]
;offset of openlist			  	  | stack segment 	   | [bp + 34]
;offset of openlist head		  | stack segment 	   | [bp + 32]
;offset of openlist tail		  | stack segment 	   | [bp + 30]
;value of openlist length		  | stack segment 	   | [bp + 28]
;offset of closedlist			  | stack segment 	   | [bp + 26]
;offset of closedlist head		  | stack segment 	   | [bp + 24]
;offset of closedlist tail		  | stack segment 	   | [bp + 22]
;value of closedlist length		  | stack segment 	   | [bp + 20]
;offset of node array			  | stack segment 	   | [bp + 18]
;offset of grid					  | stack segment 	   | [bp + 16]
;horizontal value of grid		  | stack segment 	   | [bp + 14]
;vertical value of grid			  | stack segment 	   | [bp + 12]
;left value of destination		  | stack segment 	   | [bp + 10]
;top value of destination		  | stack segment 	   | [bp + 8]
;current left value				  | stack segment 	   | [bp + 6]
;current top value				  | stack segment 	   | [bp + 4]
;OUTPUT							  |				  	   |
;new left value					  | satck segment 	   | [sp]
;new top value					  | stack segment 	   | [sp + 2]
proc MoveBackToSpawn
;calls A* algorithm
;while the current location is not equal to the destination
;keep following the A* generated path

	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	
	;if the queue is empty, call A*
	push ax ;1 extra push for the returning value
	mov bx, [bp + 40]
	mov bx, [bx]
	push bx
	mov bx, [bp + 38]
	mov bx, [bx]
	push bx
	call IsQueueEmpty
	pop ax
	cmp ax, 0
	jne @@QueueIsEmpty
	jmp @@QueueIsNotEmpty

@@QueueIsEmpty:	
	mov ax, [bp + 44]
	push ax
	mov ax, [bp + 42]
	push ax
	mov ax, [bp + 40]
	push ax
	mov ax, [bp + 38]
	push ax
	mov ax, [bp + 36]
	push ax
	mov ax, [bp + 34]
	push ax
	mov ax, [bp + 32]
	push ax
	mov ax, [bp + 30]
	push ax
	mov ax, [bp + 28]
	push ax
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 20]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call A_Star
	
	;if the queue is still empty, the ghost is at the spawn, respawn
	push ax ;1 extra push for the returning value
	mov bx, [bp + 40]
	mov bx, [bx]
	push bx
	mov bx, [bp + 38]
	mov bx, [bx]
	push bx
	call IsQueueEmpty
	pop ax
	cmp ax, 0
	je @@QueueIsNotEmpty
	
	mov bx, [bp + 56]
	mov [byte bx], 1
	
	mov bx, [bp + 58]
	mov [byte bx], 0
	
	mov ax, [bp + 6]
	mov [bp + 60], ax
	mov ax, [bp + 4]
	mov [bp + 62], ax
	
	jmp @@EndProc

@@QueueIsNotEmpty:
	mov ax, [bp + 4]
	mov bx, [bp + 14]
	xor dx, dx
	mul bx
	add ax, [bp + 6]
	add ax, [bp + 16]
	mov bx, ax
	
	cmp [byte bx], 2 ;point
	je @@ReDraw_Point_Background
	cmp [byte bx], 3 ;energizer
	je @@ReDraw_Energizer_Background
	;normal floor or teleport
	
@@ReDraw_Normal_Background:
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp + 54]
	push ax
	mov ax, [bp + 52]
	push ax
	call ClearTile
	jmp @@GetNewLocation
	
@@ReDraw_Point_Background:
	mov ax, [bp + 50]
	push ax
	jmp @@ReDraw_Background
	
@@ReDraw_Energizer_Background:
	mov ax, [bp + 48]
	push ax

@@ReDraw_Background:
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp + 54]
	push ax
	mov ax, [bp + 52]
	push ax
	call DrawBitmap

@@GetNewLocation:	
	push ax
	push ax ;2 extra pushes for the returning values
	mov ax, [bp + 42]
	push ax
	mov ax, [bp + 38]
	push ax
	mov ax, [bp + 36]
	push ax
	call PopLIFO
	pop cx
	pop dx
	
	mov ax, [bp + 46]
	push ax
	push cx
	push dx
	mov ax, [bp + 54]
	push ax
	mov ax, [bp + 52]
	push ax
	call DrawBitmap
	
	mov [bp + 60], cx
	mov [bp + 62], dx

@@EndProc:
	pop dx
	pop cx
	pop bx
	pop ax

	pop bp
	ret 56
endp MoveBackToSpawn

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;end of ghost's moving algorithms area
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;----------------------------------------------------------------------------------------
;                     object      	  		  | way of transfering | way of accessability
;----------------------------------------------------------------------------------------
;pacman's left value 						   | stack segment 	   | [bp + 10]
;pacman's top value	 						   | stack segment 	   | [bp + 8]
;ghost's left value	 						   | stack segment     | [bp + 6]
;ghost's top value	 						   | stack segment     | [bp + 4]
;OUTPUT				 						   |			       |
;a value indicating to which direction to move | stack segment     | [sp]
;1 = on x xsis, 2 = y xsis					   |			       |
proc CalculateFourthMovingAlgorithmMove
;calculate the absolute value of the subtraction of both ys and xs
;return 1 if the x value is bigger
;return 2 if the y value is bigger

;return Max(Abs(X1 - X2), Abs(Y1, Y2))

	push bp
	mov bp, sp
	
	push ax
	push bx
	push dx
	
	;calculate the distance between the X values
	mov ax, [bp + 6]
	mov bx, [bp + 10]
	cmp ax, bx
	jb @@PacmanxIsBigger
	
@@GhostxIsBigger:
	sub ax, bx
	jmp @@CalculateyDistance
	
@@PacmanxIsBigger:
	sub bx, ax
	mov ax, bx
	
@@CalculateyDistance:
	mov dx, ax

	mov ax, [bp + 4]
	mov bx, [bp + 8]
	cmp ax, bx
	jb @@PacmanyIsBigger
	
@@GhostyIsBigger:
	sub ax, bx
	jmp @@CalculateMax
	
@@PacmanyIsBigger:
	sub bx, ax
	mov ax, bx
	
@@CalculateMax:
	cmp dx, ax
	jb @@yIsMax
	
@@xIsMax:
	mov [word bp + 12], 1
	jmp @@EndProc
	
@@yIsMax:	
	mov [word bp + 12], 2

@@EndProc:
	pop dx
	pop bx
	pop ax
	
	pop bp
	ret 8
endp CalculateFourthMovingAlgorithmMove

;-----------------------------------------------------------------------------------------
;               object						   | way of transfering | way of accessability
;-----------------------------------------------------------------------------------------
;pacman left location						   | stack segment 		| [bp + 6]
;pacman top location						   | stack segment 		| [bp + 4]
;OUTPUT										   |			   		|
;a value indicating in which quarter pacman is | stack segment 		| [sp]
proc CalculateQuarter
	push bp
	mov bp, sp
	
;the quarter map
; 0 | 1
;======
; 2 | 3

;base value is 0
;if x value is bigger than the middle, add 1 to the value
;if y value is equal or bigger than the middle, add 2 to the value
	
	mov [word bp + 8], 0 ;set the minimum quarter value
	
	cmp [word bp + 6], 11
	ja @@AddXvalue
	jmp @@CheckYvalue
	
@@AddXvalue:
	inc [word bp + 8]

@@CheckYvalue:
	cmp [word bp + 4], 11
	jae @@AddYvalue
	jmp @@EndProc

@@AddYvalue:
	add [word word bp + 8], 2

@@EndProc:	
	pop bp
	ret 4
endp CalculateQuarter

;****************************************
;this area is related to the A* algorithm
;****************************************

;----------------------------------------------------------------------------
;                     object      | way of transfering | way of accessability
;----------------------------------------------------------------------------
;offset of directions array		  | stack segment 	   | [bp + 44]
;offset of array to hold the path | stack segment 	   | [bp + 42]
;offset of path head			  | stack segment 	   | [bp + 40]
;offset of path tail			  | stack segment 	   | [bp + 38]
;value of path length			  | stack segment 	   | [bp + 36]
;offset of openlist			  	  | stack segment 	   | [bp + 34]
;offset of openlist head		  | stack segment 	   | [bp + 32]
;offset of openlist tail		  | stack segment 	   | [bp + 30]
;value of openlist length		  | stack segment 	   | [bp + 28]
;offset of closedlist			  | stack segment 	   | [bp + 26]
;offset of closedlist head		  | stack segment 	   | [bp + 24]
;offset of closedlist tail		  | stack segment 	   | [bp + 22]
;value of closedlist length		  | stack segment 	   | [bp + 20]
;offset of node array			  | stack segment 	   | [bp + 18]
;offset of grid					  | stack segment 	   | [bp + 16]
;horizontal value of grid		  | stack segment 	   | [bp + 14]
;vertical value of grid			  | stack segment 	   | [bp + 12]
;left value of destination		  | stack segment 	   | [bp + 10]
;top value of destination		  | stack segment 	   | [bp + 8]
;current left value				  | stack segment 	   | [bp + 6]
;current top value				  | stack segment 	   | [bp + 4]
proc A_Star
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	push si
	
	;clear path, close and open lists
	mov ax, [bp + 34]
	push ax
	mov ax, [bp + 32]
	push ax
	mov ax, [bp + 30]
	push ax
	call Clear
	
	mov ax, [bp + 26]
	push ax
	mov ax, [bp + 24]
	push ax
	mov ax, [bp + 22]
	push ax
	call Clear
	
	mov ax, [bp + 42]
	push ax
	mov ax, [bp + 40]
	push ax
	mov ax, [bp + 38]
	push ax
	call Clear
	
	;insert the base location to the openlist
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp + 34]
	push ax
	mov bx, [bp + 32]
	mov bx, [bx]
	push bx
	mov ax, [bp + 30]
	push ax
	mov ax, [bp + 28]
	push ax
	call Insert
	
	;set base node
	;set it's parents to -1 and G value to 0
	mov ax, -1
	push ax
	push ax
	xor ax, ax
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp + 14]
	push ax
	call Set
	
@@CheckCurrent:
	;the loop will continue while the openlist is not empty
	push ax ;1 extra push for the returning value
	mov bx, [bp + 32]
	mov bx, [bx]
	push bx
	mov bx, [bp + 30]
	mov bx, [bx]
	push bx
	call IsQueueEmpty
	pop ax
	cmp ax, 1
	jne @@Continue_Check
	jmp @@EndProc
	
@@Continue_Check:	
	;pop the value with the min F 
	push ax ;1 extra push for the returning value
	mov ax, [bp + 34]
	push ax
	mov ax, [bp + 32]
	push ax
	mov ax, [bp + 30]
	push ax
	mov ax, [bp + 28]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	call FindMinFlocation
	pop ax ;ax now holds the location in the openlist with the minimum F value
	
	;remove it from the openlist
	push ax
	push ax ;2 extra pushes for the returning value
	push ax
	mov ax, [bp + 34]
	push ax
	mov ax, [bp + 32]
	push ax
	mov bx, [bp + 30]
	mov bx, [bx]
	push bx
	mov ax, [bp + 28]
	push ax
	call Remove
	pop ax
	mov [bp + 6], ax
	pop ax
	mov [bp + 4], ax
	
	;now we check if the current value is the destination
	push ax ;1 extra push for the returning value
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call IsDestination
	pop ax	
	cmp ax, 0
	je @@Insert_To_ClosedList
	
	;if current is the destination, we now calculate the path and exit the procedure
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 42]
	push ax
	mov ax, [bp + 40]
	push ax
	mov ax, [bp + 38]
	push ax
	mov ax, [bp + 36]
	push ax
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	call TracePath
	jmp @@EndProc
	
@@Insert_To_ClosedList:
	;if current is not the destination add it to the closedlist
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp + 26]
	push ax
	mov bx, [bp + 24]
	mov bx, [bx]
	push bx
	mov ax, [bp + 22]
	push ax
	mov ax, [bp + 20]
	push ax
	call Insert
	
	mov si, [bp + 44]	
	mov cx, 4
@@Generate_Next_Successor:
	;check if the successor is inside the range of the grid
	push ax ;1 extra push for the returning
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 6]
	add ax, [si]
	push ax
	mov ax, [bp + 4]
	add ax, [si + 2]
	push ax
	call IsValid
	pop ax
	cmp ax, 0
	jne @@Continue_Check_Successor1
	jmp @@Set_Next_Successor

@@Continue_Check_Successor1:	
	;check if you can stand on the successored pixel
	push ax ;1 extra push for the returning value
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 6]
	add ax, [si]
	push ax
	mov ax, [bp + 4]
	add ax, [si + 2]
	push ax
	call IsUnBlocked
	pop ax
	cmp ax, 0
	jne @@Continue_Check_Successor2
	jmp @@Set_Next_Successor
	
@@Continue_Check_Successor2:
	;check if the successor is inside the closedlist
	push ax ;1 extra push for the returning value
	mov ax, [bp + 6]
	add ax, [si]
	push ax
	mov ax, [bp + 4]
	add ax, [si + 2]
	push ax
	mov ax, [bp + 26]
	push ax
	mov bx, [bp + 24]
	mov bx, [bx]
	push bx
	mov bx, [bp + 22]
	mov bx, [bx]
	push bx
	mov ax, [bp + 20]
	push ax
	call Contains
	pop ax
	cmp ax, 1
	jne @@Continue_Check_Successor3
	jmp @@Set_Next_Successor

@@Continue_Check_Successor3:	
	;check if the successor is inside the openlist
	push ax ;1 extra push for the returning value
	mov ax, [bp + 6]
	add ax, [si]
	push ax
	mov ax, [bp + 4]
	add ax, [si + 2]
	push ax
	mov ax, [bp + 34]
	push ax
	mov bx, [bp + 32]
	mov bx, [bx]
	push bx
	mov bx, [bp + 30]
	mov bx, [bx]
	push bx
	mov ax, [bp + 28]
	push ax
	call Contains
	pop ax
	cmp ax, 0
	je @@OpenList_Does_Not_Contain_Successor
	
	;if the successor is inside the openlist
	;check if the new G value is smaller than the current G value
	
	;generate the current G value
	push ax ;1 extra push for the returning
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp + 14]
	push ax
	call Gget
	pop dx
	inc dx ;dx now contains the G value of the successor
	
	;Calculate the new G value
	push ax ;1 extra push for the returning value
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 6]
	add ax, [si]
	push ax
	mov ax, [bp + 4]
	add ax, [si + 2]
	push ax
	mov ax, [bp + 14]
	push ax
	call Gget
	pop ax
	
	cmp dx, ax
	jae @@Set_Next_Successor
	
	;if the new G value is smaller than the previous one, update the node
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	push dx
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 6]
	add ax, [si]
	push ax
	mov ax, [bp + 4]
	add ax, [si + 2]
	push ax
	mov ax, [bp + 14]
	push ax
	call Set
	jmp @@Set_Next_Successor

@@OpenList_Does_Not_Contain_Successor:
	;update the node and add it to the openlist
	
	push ax ;1 extra push for the returning
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp + 14]
	push ax
	call Gget
	pop dx
	inc dx ;dx now contains the G value of the successor
	
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	push dx
	mov ax, [bp + 18]
	push ax
	mov ax, [bp + 6]
	add ax, [si]
	push ax
	mov ax, [bp + 4]
	add ax, [si + 2]
	push ax
	mov ax, [bp + 14]
	push ax
	call Set
	
	mov ax, [bp + 6]
	add ax, [si]
	push ax
	mov ax, [bp + 4]
	add ax, [si + 2]
	push ax
	mov ax, [bp + 34]
	push ax
	mov bx, [bp + 32]
	mov bx, [bx]
	push bx
	mov ax, [bp + 30]
	push ax
	mov ax, [bp + 28]
	push ax
	call Insert

	
@@Set_Next_Successor:
	add si, 4
	
	dec cx
	cmp cx, 0
	je @@Loop_Check_Current
	jmp @@Generate_Next_Successor
	
@@Loop_Check_Current:
	jmp @@CheckCurrent

@@EndProc:
	pop si
	pop dx
	pop cx
	pop bx
	pop ax

	pop bp
	ret 42
endp A_Star

;----------------------------------------------------------------------------
;                     object      | way of transfering | way of accessability
;----------------------------------------------------------------------------
;grid's horizontal value		  | stack segment 	   | [bp + 18]
;offset of array to hold the path | stack segment 	   | [bp + 16]
;offset of path_head	   		  | stack segment 	   | [bp + 14]
;offset of path_tail	   		  | stack segment 	   | [bp + 12]
;value of path length	   		  | stack segment 	   | [bp + 10]
;offset of node array 	   		  | stack segment 	   | [bp + 8]
;left value of destination 		  | stack segment 	   | [bp + 6]
;top value of destination  		  | stack segment 	   | [bp + 4]
;Local variables				  |				  	   |
;current x value		          | stack segment 	   | [bp - 2]
;current y value      			  | stack segment 	   | [bp - 4]
;x value						  | stack segment 	   | [bp - 6]
;y value						  | stack segment 	   | [bp - 8]
proc TracePath
	push bp
	mov bp, sp
	sub sp, 8
	
	push ax
	push bx
	
	mov ax, [bp +  6]
	mov [bp - 2], ax
	mov ax, [bp + 4]
	mov [bp - 4], ax ;set destination to current

	;here we trace the path
	;this loop will continue until the Parent_X and Parent_Y are equal to -1
@@NextPixel:
	cmp [word bp - 2], -1
	je @@EndProc
	cmp [word bp - 4], -1
	je @@EndProc
	
	;insert the current node to the path list
	mov ax, [bp - 2]
	push ax
	mov ax, [bp - 4]
	push ax
	mov ax, [bp + 16]
	push ax
	mov bx, [bp + 14]
	mov bx, [bx]
	push bx
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	call Insert
	
	;generate current's parent x and y coordinates
	push ax ;1 extra push for the returning value
	mov ax, [bp + 8]
	push ax
	mov ax, [bp - 2]
	push ax
	mov ax, [bp - 4]
	push ax
	mov ax, [bp + 18]
	push ax
	call Xget
	pop ax
	mov [bp - 6], ax
	
	push ax ;1 extra push for the returning value
	mov ax, [bp + 8]
	push ax
	mov ax, [bp - 2]
	push ax
	mov ax, [bp - 4]
	push ax
	mov ax, [bp + 18]
	push ax
	call Yget
	pop ax
	mov [bp - 8], ax
	
	;set current to generated x and y
	mov ax, [bp - 6]
	mov [bp - 2], ax
	mov ax, [bp - 8]
	mov [bp - 4], ax
	
	jmp @@NextPixel
	
@@EndProc:
	;now we pop the last value since it is the base location
	push ax
	push ax ;2 extra pushes for the returning value
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	call PopLIFO
	pop ax
	pop ax

	pop bx
	pop ax

	add sp, 8
	pop bp
	ret 16
endp TracePath

;------------------------------------------------------------------
;         object      	| way of transfering | way of accessability
;------------------------------------------------------------------
;destination left value | stack segment 	 | [bp + 10]
;destination top value	| stack segment 	 | [bp + 8]
;current left value		| stack segment 	 | [bp + 6]
;current top value		| stack segment 	 | [bp + 4]
;OUTPUT					|				 	 |
;boolean (1 = true)		| stack segment  	 | [sp]
proc IsDestination
	push bp
	mov bp, sp
	
	push ax
	
	;if current x and y are equal to destination x and y return true, else return false
	mov ax, [bp + 6]
	cmp ax, [bp + 10]
	jne @@IsNotDestination
	
	mov ax, [bp + 4]
	cmp ax, [bp + 8]
	jne @@IsNotDestination
	
@@IsDestination:
	mov [word bp + 12], 1
	jmp @@EndProc
	
@@IsNotDestination:
	mov [word bp + 12], 0
	
@@EndProc:
	pop ax
	
	pop bp
	ret 8
endp IsDestination

;--------------------------------------------------------------------
;              object     | way of transfering | way of accessability
;--------------------------------------------------------------------
;offset of grid			  | stack segment 	   | [bp + 10]
;horizontal value of grid | stack segment 	   | [bp + 8]
;current left value		  | stack segment 	   | [bp + 6]
;current top value		  | stack segment 	   | [bp + 4]
;OUTPUT					  |				  	   |
;boolean (1 = true)		  | stack segment 	   | [sp]
proc IsUnBlocked
	push bp
	mov bp, sp
	
	push ax
	push bx
	push dx
	
	;calculate the place in the dataseg
	;offset in dataseg = Grid.Offset + Current.Left + (Current.Top * Grid.X)
	mov ax, [bp + 4]
	mov bx, [bp + 8]
	xor dx, dx
	mul bx
	add ax, [bp + 6]
	add ax, [bp + 10]
	mov bx, ax
	
	;if the value in the grid is 0 or above 4 the pixel is a barrier therefore blocked
	cmp [byte bx], 0
	je @@IsBlocked
	cmp [byte bx], 5
	jae @@IsBlocked
	jmp @@IsUnBlocked
	
@@IsBlocked:
	mov [word bp + 12], 0
	jmp @@EndProc
	
@@IsUnBlocked:
	mov [word bp + 12], 1
	
@@EndProc:
	pop dx
	pop bx
	pop ax

	pop bp
	ret 8
endp IsUnBlocked

;--------------------------------------------------------------------------------
;             object    | way of transfering | way of accessability
;--------------------------------------------------------------------------------
;grid's horizontal size | stack segment	 	 | [bp + 10]
;grid's vertical size   | stack segment 	 | [bp + 8]
;current left value		| stack segment 	 | [bp + 6]
;current top value		| stack segment 	 | [bp + 4]
;OUTPUT					|					 |
;boolean (1 = true)		| stack segment 	 | [sp]
proc IsValid
	push bp
	mov bp, sp
	
	push ax
	
	;if Current.Left < Grid.X and Current.Top < Grid.Y, return true
	;else return false
	mov ax, [bp + 6]
	cmp ax, [bp + 10]
	jb @@IsValid
	
	mov ax, [bp + 4]
	cmp ax, [bp + 8]
	jb @@IsValid

@@IsNotValid:	
	mov [word bp + 12], 0
	jmp @@EndProc
	
@@IsValid:
	mov [word bp + 12], 1
	
@@EndProc:
	pop ax
	
	pop bp
	ret 8
endp IsValid

;--------------------------------------------------------------------------------
;           object      | way of transfering | way of accessability
;--------------------------------------------------------------------------------
;destination left value | stack segment 	 | [bp + 10]
;destination top value  | stack segment 	 | [bp + 8]
;current left value		| stack segment 	 | [bp + 6]
;current top value		| stack segment 	 | [bp + 4]
;OUTPUT					|					 |
;H value				| stack segment  	 | [sp]
proc Manhattan
	push bp
	mov bp, sp
	
	push ax
	push bx
	
	;Manhattan calculation
	;H = Abs(Current.Left - Destination.Left) + Abs(Current.Top - Destination.Top)
	
	;since there is no function in assembly to calculate absolute value
	;we check which of the 2 numbers is bigger and subtract the small one from the big one
	
	;here we calculate the x value
	mov ax, [bp + 6]
	mov bx, [bp + 10]
	
	cmp ax, bx
	ja @@CurrentLeftIsBigger
	jmp @@DestinationLeftIsBigger
	
@@CurrentLeftIsBigger:
	sub ax, bx
	jmp @@CalculateY
	
@@DestinationLeftIsBigger:
	sub bx, ax
	mov ax, bx
	
@@CalculateY:
	mov [bp + 12], ax
	
	;here we calculate the y value
	mov ax, [bp + 4]
	mov bx, [bp + 8]
	
	cmp ax, bx
	ja @@CurrentTopIsBigger
	jmp @@DestinationTopIsBigger
	
@@CurrentTopIsBigger:
	sub ax, bx
	jmp @@EndProc
	
@@DestinationTopIsBigger:
	sub bx, ax
	mov ax, bx
	
@@EndProc:
	add [bp + 12], ax
	
	pop bx
	pop ax
	
	pop bp
	ret 8
endp Manhattan

;--------------------------------------------------------------------------------
;                     object     | way of transfering | way of accessability
;--------------------------------------------------------------------------------
;offset of the openlist		  	 | stack segment 	  | [bp + 18]
;offset of the openlist head  	 | stack segment 	  | [bp + 16]
;offset of the openlist tail 	 | stack segment 	  | [bp + 14]
;openlist length			  	 | stack segment 	  | [bp + 12]
;offset of nodes array		  	 | stack segment 	  | [bp + 10]
;horizontal value of grid	  	 | stack segment 	  | [bp + 8]
;destination left value	      	 | stack segment 	  | [bp + 6]
;destination top value		  	 | stack segment 	  | [bp + 4]
;OUTPUT						  	 |				 	  |
;the location inside	 	  	 | stack segment 	  | [sp]
;inside the openlist		  	 |				 	  |
;of the node with the least F 	 |				 	  |
;Local variables			  	 |				 	  |
;current miminum value	      	 | stack segment 	  | [bp - 2]
;current minimum location	  	 | stack segment 	  | [bp - 4]
;x value of current place	  	 | stack segment 	  | [bp - 6]
;y value of current place	  	 | stack segment 	  | [bp - 8]
;variable in openlist		  	 | stack segment 	  | [bp - 10]
;number of variables in openlist | stack segment 	  | [bp - 12]
;newF 						  	 | stack segment 	  | [bp - 14]
proc FindMinFlocation
	push bp
	mov bp, sp
	sub sp, 14
	
	push ax
	push bx
	push dx

	;in this procedure we want to find the location in a list with the minimum F value, F is calculated as such:
	;F = G + H
	;G is the distance from the starting node
	;H is the calculation of the Manhatten calculation (heuristics, an estimation of the distance from the destination node)
	
	;at start we set the first value in the list as the minimum
	;and then in a loop we check for each value is it's F value is smaller than the current minimum
	;if it is we update the minimum

	;get the x and y values of the first item in the list
	push ax
	push ax ;2 extra pushes for the returning values
	xor ax, ax
	push ax
	mov ax, [bp + 18]
	push ax
	mov bx, [bp + 16]
	mov bx, [bx]
	push bx
	mov ax, [bp + 12]
	push ax
	call GetValue
	pop ax
	mov [bp - 6], ax
	pop ax
	mov [bp - 8], ax
	
	;get the g value of the first item in the list
	push ax ;1 extra push for the returning value
	mov ax, [bp + 10]
	push ax
	mov ax, [bp - 6]
	push ax
	mov ax, [bp - 8]
	push ax
	mov ax, [bp + 8]
	push ax
	call Gget
	pop ax
	mov [bp - 2], ax
	
	;calculate the h value
	push ax ;1 extra push for the returning value
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp - 6]
	push ax
	mov ax, [bp - 8]
	push ax
	call Manhattan
	pop ax
	add [bp - 2], ax
	mov [word bp - 4], 0
	
	;calculate how many variables are in the list
	push ax ;1 extra push for the returning value
	mov ax, [bp + 18]
	push ax
	mov bx, [bp + 16]
	mov bx, [bx]
	push bx
	mov bx, [bp + 14]
	mov bx, [bx]
	push bx
	mov ax, [bp + 12]
	push ax
	call Count
	pop ax
	mov [bp - 12], ax
	mov [word bp - 10], 1 ;here we set a start to a loop, where we check all the values in the openlist, from the secend value
	
@@NextCombination:
	mov ax, [bp - 10]
	cmp ax, [bp - 12]
	je @@EndProc
	
	;get the x and y values of the currently checked item
	push ax
	push ax ;2 extra pushes for the returning values
	mov ax, [bp - 10]
	push ax
	mov ax, [bp + 18]
	push ax
	mov bx, [bp + 16]
	mov bx, [bx]
	push bx
	mov ax, [bp + 12]
	push ax
	call GetValue
	pop ax
	mov [bp - 6], ax
	pop ax
	mov [bp - 8], ax
	
	;get the g value of the item that is currently being checked
	push ax ;1 extra push for the returning value
	mov ax, [bp + 10]
	push ax
	mov ax, [bp - 6]
	push ax
	mov ax, [bp - 8]
	push ax
	mov ax, [bp + 8]
	push ax
	call Gget
	pop ax
	mov [bp - 14], ax
	
	;calculate the h value of the item that is currently being checked
	push ax ;1 extra push for the returning value
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	mov ax, [bp - 6]
	push ax
	mov ax, [bp - 8]
	push ax
	call Manhattan
	pop ax
	add [bp - 14], ax
	
	;check if the new minimum F is smaller than the current minimum F
	mov ax, [bp - 14]
	cmp [bp - 2], ax
	jbe @@LoopBackUp
	
	mov [bp - 2], ax
	mov ax, [bp - 10]
	mov [bp - 4], ax
	
@@LoopBackUp:
	inc [word bp - 10]
	jmp @@NextCombination
	
@@EndProc:
	mov ax, [bp - 4]
	mov [bp + 20], ax
	
	pop dx
	pop bx
	pop ax

	add sp, 14
	pop bp
	ret 16
endp FindMinFlocation

;**************
;end of A* area
;**************
	
;***************************************
;this area is related to the nodes array
;***************************************

;--------------------------------------------------------------------
;              object     | way of transfering | way of accessability
;--------------------------------------------------------------------
;x value to insert		  | stack segment 	   | [bp + 16]
;y value to insert		  | stack segment 	   | [bp + 14]
;g value to insert		  | stack segment 	   | [bp + 12]
;offset of node array	  | stack segment 	   | [bp + 10]
;left value of node		  | stack segment 	   | [bp + 8]
;top value of node		  | stack segment 	   | [bp + 6]
;horizontal value of grid | stack segment 	   | [bp + 4]
proc Set
	push bp
	mov bp, sp
	
	push ax
	
	mov ax, [bp + 16]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call Xset
	
	mov ax, [bp + 14]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call Yset
	
	mov ax, [bp + 12]
	push ax
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call Gset
	
	pop ax
	
	pop bp
	ret 14
endp Set

;------------------------------------------------------------------------
;                  object     | way of transfering | way of accessability
;------------------------------------------------------------------------
;x value to insert	  		  | stack segment 	   | [bp + 12]
;offset of node array 		  | stack segment 	   | [bp + 10]
;left value of node	  		  | stack segment 	   | [bp + 8]
;top value of node	  		  | stack segment 	   | [bp + 6]
;horizontal value of the grid | stack segment 	   | [bp + 4]
proc Xset
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	push si
	
	;calculate the place in dataseg of the node
	;offset in dataseg = Nodes.Offset + (Pixel.Top * Grid.X * 6) + (Pixel.Left * 6)
	mov ax, [bp + 6]
	mov bx, [bp + 4]
	xor dx, dx
	mul bx
	
	mov bx, 6
	xor dx, dx
	mul bx
	mov cx, ax
	
	mov ax, [bp + 8]
	mov bx, 6
	xor dx, dx
	mul bx
	add cx, ax
	mov bx, cx
	add bx, [bp + 10]
	
	mov ax, [bp + 12]
	mov [bx], ax
	
	pop si
	pop dx
	pop cx
	pop bx
	pop dx
	
	pop bp
	ret 10
endp Xset

;------------------------------------------------------------------------
;              object      	  | way of transfering | way of accessability
;------------------------------------------------------------------------
;y value to insert	  		  | stack segment 	   | [bp + 12]
;offset of node array 		  | stack segment 	   | [bp + 10]
;left value of node	  		  | stack segment 	   | [bp + 8]
;top value of node	  		  | stack segment 	   | [bp + 6]
;horizontal value of the grid | stack segment 	   | [bp + 4]
proc Yset
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	push si
	
	;calculate the place in dataseg of the node
	;offset in dataseg = Nodes.Offset + (Pixel.Top * Grid.X * 6) + (Pixel.Left * 6)
	mov ax, [bp + 6]
	mov bx, [bp + 4]
	xor dx, dx
	mul bx
	
	mov bx, 6
	xor dx, dx
	mul bx
	mov cx, ax
	
	mov ax, [bp + 8]
	mov bx, 6
	xor dx, dx
	mul bx
	add cx, ax
	mov bx, cx
	add bx, [bp + 10]
	
	add bx, 2
	mov ax, [bp + 12]
	mov [bx], ax
	
	pop si
	pop dx
	pop cx
	pop bx
	pop dx
	
	pop bp
	ret 10
endp Yset

;------------------------------------------------------------------------
;                     object  | way of transfering | way of accessability
;------------------------------------------------------------------------
;G value to insert	  		  | stack segment 	   | [bp + 12]
;offset of node array 		  | stack segment 	   | [bp + 10]
;left value of node	  		  | stack segment 	   | [bp + 8]
;top value of node	  		  | stack segment 	   | [bp + 6]
;horizontal value of the grid | stack segment 	   | [bp + 4]
proc Gset
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	push si
	
	;calculate the place in dataseg of the node
	;offset in dataseg = Nodes.Offset + (Pixel.Top * Grid.X * 6) + (Pixel.Left * 6)
	mov ax, [bp + 6]
	mov bx, [bp + 4]
	xor dx, dx
	mul bx
	
	mov bx, 6
	xor dx, dx
	mul bx
	mov cx, ax
	
	mov ax, [bp + 8]
	mov bx, 6
	xor dx, dx
	mul bx
	add cx, ax
	mov bx, cx
	add bx, [bp + 10]
	
	add bx, 4
	mov ax, [bp + 12]
	mov [bx], ax
	
	pop si
	pop dx
	pop cx
	pop bx
	pop dx
	
	pop bp
	ret 10
endp Gset

;------------------------------------------------------------------------
;                  object     | way of transfering | way of accessability
;------------------------------------------------------------------------
;offset of node array 		  | stack segment 	   | [bp + 10]
;left value of node	  		  | stack segment      | [bp + 8]
;top value of node	  		  | stack segment 	   | [bp + 6]
;horizontal value of the grid | stack segment 	   | [bp + 4]
;OUTPUT						  |				  	   |
;the x value				  | stack segment 	   | [sp]
;the y value				  | stack segment 	   | [sp + 2]
;the g value				  | stack segment 	   | [sp + 4]
proc Get
	push bp
	mov bp, sp
	
	push ax ;1 extra push for the returning value
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call Xget
	pop ax
	mov [bp + 12], ax
	
	push ax ;1 extra push for the returning value
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call Yget
	pop ax
	mov [bp + 14], ax
	
	push ax ;1 extra push for the returning value
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov ax, [bp + 6]
	push ax
	mov ax, [bp + 4]
	push ax
	call Gget
	pop ax
	mov [bp + 16], ax
	
	pop bp
	ret 8
endp Get

;------------------------------------------------------------------------
;                 object      | way of transfering | way of accessability
;------------------------------------------------------------------------
;offset of node array 		  | stack segment 	   | [bp + 10]
;left value of node	  		  | stack segment 	   | [bp + 8]
;top value of node	  		  | stack segment 	   | [bp + 6]
;horizontal value of the grid | stack segment 	   | [bp + 4]
;OUTPUT						  |				  	   |
;the x value				  | stack segment 	   | [sp]
proc Xget
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	push si
	
	;calculate the place in dataseg of the node
	;offset in dataseg = Nodes.Offset + (Pixel.Top * Grid.X * 6) + (Pixel.Left * 6)
	mov ax, [bp + 6]
	mov bx, [bp + 4]
	xor dx, dx
	mul bx
	
	mov bx, 6
	xor dx, dx
	mul bx
	mov cx, ax
	
	mov ax, [bp + 8]
	mov bx, 6
	xor dx, dx
	mul bx
	add cx, ax
	mov bx, cx
	add bx, [bp + 10]
	
	mov ax, [bx]
	mov [bp + 12], ax
	
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	
	pop bp
	ret 8
endp Xget

;------------------------------------------------------------------------
;                object       | way of transfering | way of accessability
;------------------------------------------------------------------------
;offset of node array 		  | stack segment 	   | [bp + 10]
;left value of node	  		  | stack segment 	   | [bp + 8]
;top value of node	  		  | stack segment 	   | [bp + 6]
;horizontal value of the grid | stack segment	   | [bp + 4]
;OUTPUT						  |				 	   |
;the y value				  | stack segment 	   | [sp]
proc Yget
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	push si
	
	;calculate the place in dataseg of the node
	;offset in dataseg = Nodes.Offset + (Pixel.Top * Grid.X * 6) + (Pixel.Left * 6)
	mov ax, [bp + 6]
	mov bx, [bp + 4]
	xor dx, dx
	mul bx
	
	mov bx, 6
	xor dx, dx
	mul bx
	mov cx, ax
	
	mov ax, [bp + 8]
	mov bx, 6
	xor dx, dx
	mul bx
	add cx, ax
	mov bx, cx
	add bx, [bp + 10]
	
	add bx, 2
	mov ax, [bx]
	mov [bp + 12], ax
	
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	
	pop bp
	ret 8
endp Yget

;------------------------------------------------------------------------
;                  object     | way of transfering | way of accessability
;------------------------------------------------------------------------
;offset of node array 		  | stack segment 	   | [bp + 10]
;left value of node	  		  | stack segment 	   | [bp + 8]
;top value of node	  		  | stack segment 	   | [bp + 6]
;horizontal value of the grid | stack segment 	   | [bp + 4]
;OUTPUT						  |				  	   |
;the g value				  | stack segment 	   | [sp]
proc Gget
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	push si
	
	;calculate the place in dataseg of the node
	;offset in dataseg = Nodes.Offset + (Pixel.Top * Grid.X * 6) + (Pixel.Left * 6)
	mov ax, [bp + 6]
	mov bx, [bp + 4]
	xor dx, dx
	mul bx
	
	mov bx, 6
	xor dx, dx
	mul bx
	mov cx, ax
	
	mov ax, [bp + 8]
	mov bx, 6
	xor dx, dx
	mul bx
	add cx, ax
	mov bx, cx
	add bx, [bp + 10]
	
	add bx, 4
	mov ax, [bx]
	mov [bp + 12], ax
	
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	
	pop bp
	ret 8
endp Gget

;*****************
;end of nodes area
;*****************

;*********************************
;this area is related to the queue
;*********************************

;--------------------------------------------------------------
;          object   | way of transfering | way of accessability
;--------------------------------------------------------------
;X value         	| stack segment 	 | [bp + 14]
;Y value         	| stack segment 	 | [bp + 12]
;offset of queue 	| stack segment 	 | [bp + 10]
;value of head   	| stack segment 	 | [bp + 8]
;value of tail   	| stack segment 	 | [bp + 6]
;value of length 	| stack segment 	 | [bp + 4]
;OUTPUT			 	|				 	 |
;boolean (1 = true) | stack segment 	 | [sp]
proc Contains
	push bp
	mov bp, sp
	
	push ax
	push bx
	push dx
	
	;in a loop we go from the value of the head to the value of the tail
	;and check if the x and y values of the item in the list are the same as the x and y entered by the user
	mov bx, [bp + 8]
	
@@NextCombination:
	cmp bx, [bp + 6]
	je @@DoesNotContain
	
	mov ax, [bx]
	cmp ax, [bp + 14]
	jne @@Calculate
	
	mov ax, [bx + 2]
	cmp ax, [bp + 12]
	jne @@Calculate
	
	jmp @@Contain
	
@@Calculate:
	;calculate the offset in dataseg of the place to check
	;offset = (Checked_Offset + 4 - Queue.Offset)% Queue.Length + Queue.Offset
	mov ax, bx
	add ax, 4
	sub ax, [bp + 10]
	mov bx, [bp + 4]
	xor dx, dx
	div bx
	add dx, [bp + 10]
	
	mov bx, dx
	jmp @@NextCombination
	
@@DoesNotContain:
	mov [word bp + 16], 0
	jmp @@EndProc
	
@@Contain:
	mov [word bp + 16], 1
	
@@EndProc:
	pop dx
	pop bx
	pop ax
	
	pop bp
	ret 12
endp Contains

;-----------------------------------------------------------
;        object  | way of transfering | way of accessability
;-----------------------------------------------------------
;offset of queue | stack segment 	  | [bp + 8]
;offset of head  | stack segment 	  | [bp + 6]
;offset of tail  | stack segment 	  | [bp + 4]
proc Clear
	push bp
	mov bp, sp
	
	push ax
	push bx
	
	;set the head and tail values both equal to the offset of the queue
	mov ax, [bp + 8]
	
	mov bx, [bp + 6]
	mov [bx], ax
	mov bx, [bp + 4]
	mov [bx], ax
	
	pop bx
	pop ax
	
	pop bp
	ret 6
endp Clear

;-------------------------------------------------------------
;       object     | way of transfering | way of accessability
;-------------------------------------------------------------
;X value to insert  | stack segment		| [bp + 14]
;Y value to insert  | stack segment     | [bp + 12]
;offset of queue 	| stack segment 	| [bp + 10]
;value of head 		| stack segment 	| [bp + 8]
;offset of tail	 	| stack segment 	| [bp + 6]
;length of queue 	| stack segment 	| [bp + 4]
proc Insert
	push bp
	mov bp, sp
	
	push ax
	push bx
	push dx
	
	;if the queue is full, do not insert a new value
	push ax ;1 extra push for the returning value
	mov ax, [bp + 10]
	push ax
	mov ax, [bp + 8]
	push ax
	mov bx, [bp + 6]
	mov bx, [bx]
	push bx
	mov ax, [bp + 4]
	push ax
	call IsQueueFull
	pop ax
	
	cmp ax, 1
	je @@EndProc
	
	;insert value
	mov bx, [bp + 6]
	mov bx, [bx]
	mov ax, [bp + 14]
	mov [bx], ax
	mov ax, [bp + 12]
	mov [bx + 2], ax
	
	;calculate the new value of the tail
	;new tail value = (Tail.value + 4 - Queue.Offset)% Queue.Length + Queue.Offset
	mov bx, [bp + 6]
	mov bx, [bx]
	sub bx, [bp + 10]
	add bx, 4
	mov ax, bx
	
	mov bx, [bp + 4]
	xor dx, dx
	div bx
	add dx, [bp + 10]
	
	mov bx, [bp + 6]
	mov [bx], dx
	
@@EndProc:	
	pop dx
	pop bx
	pop ax
	
	pop bp
	ret 12
endp Insert

;-----------------------------------------------------------------
;         object       | way of transfering | way of accessability
;-----------------------------------------------------------------
;place in queue		   | stack segment 	    | [bp + 12]
;offset of queue	   | stack segment 	    | [bp + 10]
;offset of head	   	   | stack segment 	    | [bp + 8]
;value of tail		   | stack segment 	    | [bp + 6]
;length of queue	   | stack segment 	    | [bp + 4]
;OUTPUT				   |			   	    |
;the returning X value | stack segment 	    | [sp]
;the returning Y value | stack segment 	    | [sp + 2]
proc Remove
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	push si
	
	;place of value = [(place * 4) + Queue.Head.Value - Queue.Offset]% Queue.Length + Queue.Offset
	mov ax, [bp + 12]
	mov bx, 4
	xor dx, dx
	mul bx
	
	mov bx, [bp + 8]
	mov bx, [bx]
	add ax, bx
	sub ax, [bp + 10]
	
	mov bx, [bp + 4]
	xor dx, dx
	div bx
	add dx, [bp + 10]
	
	mov si, dx ;si now holds the offset of the place inside the queue
	
	mov ax, [si]
	mov [bp + 14], ax
	mov ax, [si + 2]
	mov [bp + 16], ax
	
	;after we remove the value from the list there is a hole in it
	;here we push every value that was before of it one place up in the list
	;and then set the new value of the head
	
	mov bx, [bp + 8]
	mov bx, [bx]
	mov cx, bx ;cx is the value of the head
	
	mov bx, si ;bx is the offset of the popped value
	
	;in the loop
	;bx will be the offset to move the values to
	;si will be the offset to move the values from
	
@@ag:
	cmp bx, cx ;the loop will go on as long as we did not move everything forwards
	je @@Continue
	
	push bx
	
	;calculate the offset in dataseg of the place to check
	;offset = (Checked_Offset - 4 - Queue.Offset + Queue.Length)% Queue.Length + Queue.Offset
	mov ax, bx
	sub ax, 4
	sub ax, [bp + 10]
	add ax, [bp + 4]
	mov bx, [bp + 4]
	xor dx, dx
	div bx
	add dx, [bp + 10]
	
	mov si, dx
	pop bx
	
	mov ax, [si] ;move from the previous place to the current place
	mov [bx], ax
	mov ax, [si + 2]
	mov [bx + 2], ax
	
	mov bx, si ;set the previous place as the current place
	
	jmp @@ag
	
@@Continue:
	
	;calculate the new value of the head
	;new head value = (Head.Value + 4 - Queue.Offset)% Queue.Length + Queue.Offset
	mov bx, [bp + 8]
	mov bx, [bx]
	sub bx, [bp + 10]
	add bx, 4
	
	mov ax, bx
	mov bx, [bp + 4]
	xor dx, dx
	div bx
	mov bx, [bp + 10]
	add dx, bx
	
	mov bx, [bp + 8]
	mov [bx], dx

@@EndProc:	
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	
	pop bp
	ret 10
endp Remove

;--------------------------------------------------------------
;     object      	| way of transfering | way of accessability
;--------------------------------------------------------------
;place in queue		| stack segment 	 | [bp + 10]
;offset of openlist | stack segment 	 | [bp + 8]
;value of head		| stack segment 	 | [bp + 6]
;length of openlist | stack segment 	 | [bp + 4]
;OUTPUT				|					 |
;x value			| stack segment 	 | [sp]
;y value 			| stack segment 	 | [sp + 2]
proc GetValue
	push bp
	mov bp, sp
	
	push ax
	push bx
	push dx
	
	;place of value = [(place * 4) + Queue.Head.Value - Queue.Offset]% Queue.Length + Queue.Offset
	mov ax, [bp + 10]
	mov bx, 4
	xor dx, dx
	mul bx
	add ax, [bp + 6]
	sub ax, [bp + 8]
	
	mov bx, [bp + 4]
	xor dx, dx
	div bx
	add dx, [bp + 8]
	
	mov bx, dx
	
	mov ax, [bx]
	mov [bp + 12], ax
	mov ax, [bx + 2]
	mov [bp + 14], ax
	
	pop dx
	pop bx
	pop ax
	
	pop bp
	ret 8
endp GetValue

;----------------------------------------------------------------
;    object      	| way of transfering   | way of accessability
;----------------------------------------------------------------
;value of head 	    | stack segment 	   | [bp + 6]
;value of tail	    | stack segment 	   | [bp + 4]
;OUTPUT		   	    |			   	   	   |
;boolean (1 = true) | stack segment 	   | [sp]
proc IsQueueEmpty
	push bp
	mov bp, sp
	
	push ax
	
	;the queue is empty is the head value is equal to the tail value
	mov ax, [bp + 6]
	cmp ax, [bp + 4]
	jne @@QueueIsNotEmpty
	
@@QueueIsEmpty:
	mov [word bp + 8], 1
	jmp @@EndProc
	
@@QueueIsNotEmpty:
	mov [word bp + 8], 0
	
@@EndProc:
	pop ax
	
	pop bp
	ret 4
endp IsQueueEmpty

;--------------------------------------------------------------
;          object   | way of transfering | way of accessability
;--------------------------------------------------------------
;offset of queue 	| stack segment 	 | [bp + 10]
;value of head 	    | stack segment 	 | [bp + 8]
;value of tail	 	| stack segment 	 | [bp + 6]
;length of queue 	| stack segment 	 | [bp + 4]
;OUTPUT			 	|				 	 |
;boolean (1 = true) | stack segment 	 | [sp]
proc IsQueueFull
	push bp
	mov bp, sp
	
	push ax
	push bx
	push dx
	
	;the queue is full if (Tail.Value + 4 - Queue.Offset)% Queue.Length + Queue.Offset is equal to the value of the head
	mov ax, [bp + 6]
	add ax, 4
	sub ax, [bp + 10]
	
	mov bx, [bp + 4]
	xor dx, dx
	div bx
	add dx, [bp + 10]
	
	cmp dx, [bp + 8]
	jne @@QueueIsNotFull
	
@@QueueIsFull:
	mov [word bp + 12], 1
	jmp @@EndProc
	
@@QueueIsNotFull:
	mov [word bp + 12], 0
	
@@EndProc:
	pop dx
	pop bx
	pop ax
	
	pop bp
	ret 8
endp IsQueueFull

;---------------------------------------------------------------
;      object      	 | way of transfering | way of accessability
;---------------------------------------------------------------
;offset of queue	 | stack segment 	  | [bp + 10]
;value of head		 | stack segment 	  | [bp + 8]
;value of tail		 | stack segment 	  | [bp + 6]
;length of queue	 | stack segment 	  | [bp + 4]
;OUTPUT				 | 				 	  |
;number of variables | stack segment  	  | [sp]
proc Count
	push bp
	mov bp, sp
	
	push ax
	push bx
	push cx
	push dx
	
	mov ax, [bp + 8]
	mov bx, [bp + 6]
	xor cx, cx ;cx will be the counter
	
	;ax is the current offset
	;bx is the tail value
	;when ax will be equal to bx that means that we went through all of the queue
	
@@NextNumber:
	cmp ax, bx
	je @@EndProc
	
	inc cx
	
	;calculate the offset in dataseg of the place to check
	;offset = (Checked_Offset + 4 - Queue.Offset)% Queue.Length + Queue.Offset
	add ax, 4
	sub ax, [bp + 10]
	mov bx, [bp + 4]
	xor dx, dx
	div bx
	add dx, [bp + 10]
	
	mov ax, dx
	mov bx, [bp + 6]
	jmp @@NextNumber
	
@@EndProc:	
	mov [bp + 12], cx
	
	pop dx
	pop cx
	pop bx
	pop ax
	
	pop bp
	ret 8
endp Count

;-----------------------------------------------------------
;       object   | way of transfering | way of accessability
;-----------------------------------------------------------
;offset of queue | stack segment      | [bp + 8]
;offset of tail  | stack segment 	  | [bp + 6]
;length of queue | satck segment      | [bp + 4]
;OUTPUT			 |					  |
;popped x value  | stack segment 	  | [sp]
;popped y value  | stack segment 	  | [sp + 2]
proc PopLIFO
	push bp
	mov bp, sp
	
	push ax
	push bx
	push dx
	
	;new tail value = (Tail.value + 4 - Queue.Offset)% Queue.Length + Queue.Offset
	mov bx, [bp + 6]
	mov bx, [bx]
	sub bx, 4
	sub bx, [bp + 8]
	mov ax, bx
	
	mov bx, [bp + 4]
	xor dx, dx
	div bx
	add dx, [bp + 8]
	
	mov bx, [bp + 6]
	mov [bx], dx
	
	mov bx, dx
	mov ax, [bx]
	mov [bp + 10], ax
	mov ax, [bx + 2]
	mov [bp + 12], ax
	
	pop dx
	pop bx
	pop ax
	
	pop bp
	ret 6
endp PopLIFO

;*****************
;end of queue area
;*****************

END start