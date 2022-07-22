local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")


return {

keyCommands = {

-- Temporary
{combos = {{key = '`', reformers = {'LAlt'}}}, down = ICommandToggleConsole, name = _('Toggle Console'), category = _('Debug')},

{combos = {{key = 'Home', reformers = {'RWin'}}} , 			down = iCommandEnginesStart, name = _('Start Procedure'), category = _('Cheat')},
{combos = {{key = 'End', reformers = {'RWin'}}} , 			down = iCommandEnginesStop, name = _('Stop Procedure'), category = _('Cheat')},

-- Gameplay
{combos = {{key = 'Pause', reformers = {'LShift', 'LWin'}}}, down = iCommandActivePauseOnOff, name = _('Pause Active'), category = _('General')},
{combos = {{key = 'Esc'}}, 									down = iCommandQuit, name = _('Exit mission'), category = _('General')},
{combos = {{key = 'B', reformers = {'LAlt'}}},				down = iCommandViewBriefing, name = _('Briefing window'), category = _('General')},
{combos = {{key = 'J', reformers = {'RAlt'}}}, 				down = iCommandPlaneJump, name = _('Jump into selected aircraft'), category = _('General')},
{combos = {{key = 'Pause'}}, 								down = iCommandBrakeGo, name = _('Pause'), category = _('General')},
{combos = {{key = 'Z', reformers = {'LCtrl'}}}, 			down = iCommandAccelerate, name = _('Time accelerate'), category = _('General')},
{combos = {{key = 'Z', reformers = {'LAlt'}}}, 				down = iCommandDecelerate, name = _('Time decelerate'), category = _('General')},
{combos = {{key = 'Z', reformers = {'LShift'}}}, 			down = iCommandNoAcceleration, name = _('Time normal'), category = _('General')},
{combos = {{key = '\''}}, 									down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},
{combos = {{key = '\'', reformers = {'RShift'}}}, 			down = iCommandDebriefing, name = _('Show debriefing window'), category = _('General')},
{combos = {{key = 'Y', reformers = {'LCtrl'}}}, 			down = iCommandInfoOnOff, name = _('Info bar view toggle'), category = _('General')},
{combos = {{key = 'Tab', reformers = {'RCtrl', 'RShift'}}}, down = iCommandRecoverHuman, name = _('Get new plane - respawn'), category = _('General')},
{combos = {{key = 'SysRQ'}}, 								down = iCommandScreenShot, name = _('Screenshot'), category = _('General')},
{combos = {{key = 'Tab', reformers = {'LShift'}}}, 			down = iCommandTrkEsc, name = _('Playback track cancel'), category = _('General')},
{combos = {{key = 'Pause', reformers = {'RShift'}}},		down = iCommandOneFrame, name = _('One frame mode'), category = _('General')},
{combos = {{key = 'Pause', reformers = {'RCtrl'}}}, 		down = iCommandGraphicsFrameRate, name = _('Frame rate counter - Service info'), category = _('General')},
{combos = {{key = 'Y', reformers = {'LAlt'}}}, 				down = iCommandViewCoordinatesInLinearUnits, name = _('Coordinates units change'), category = _('General')},
{combos = {{key = 'C', reformers = {'LAlt'}}}, 				down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{combos = {{key = 'Enter', reformers = {'RCtrl'}}}, 		down = iCommandPlane_ShowControls, name = _('Controls indicator') , category = _('General')},
{combos = {{key = 'P', reformers = {'RShift'}}}, 			down = iCommandCockpitShowPilotOnOff, name = _('Show pilot'), category = _('General')},

{combos = {{key = 'Tab'}}, 									down = iCommandChat, name = _('Multiplayer chat - mode All'), category = _('General')},
{combos = {{key = 'Tab', reformers = {'LCtrl'}}}, 			down = iCommandFriendlyChat, name = _('Multiplayer chat - mode Allies'), category = _('General')},
--{combos = {{key = 'M', reformers = {'RCtrl'}}}, 			down = iCommandChat, name = _('Multiplayer chat - mode All'), category = _('General')},
--{combos = {{key = 'M', reformers = {'RAlt'}}}, 			down = iCommandFriendlyChat, name = _('Multiplayer chat - mode Allies'), category = _('General')},
{combos = {{key = '\'', reformers = {'LAlt'}}}, 			down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},


-- Communications
{combos = {{key = 'E', reformers = {'LWin'}}}, 				down = iCommandPlaneDoAndHome, name = _('COMM Dispatch wingmans - complete mission and RTB (easy communication only)'), category = _('Communications')},
{combos = {{key = 'R', reformers = {'LWin'}}}, 				down = iCommandPlaneDoAndBack, name = _('COMM Dispatch wingmans - complete mission and rejoin (easy communication only)'), category = _('Communications')},
{combos = {{key = 'T', reformers = {'LWin'}}}, 				down = iCommandPlaneFormation, name = _('COMM Toggle formation (easy communication only)'), category = _('Communications')},
{combos = {{key = 'Y', reformers = {'LWin'}}}, 				down = iCommandPlaneJoinUp, name = _('COMM Join up formation (easy communication only)'), category = _('Communications')},
{combos = {{key = 'Q', reformers = {'LWin'}}}, 				down = iCommandPlaneAttackMyTarget, name = _('COMM Attack my target (easy communication only)'), category = _('Communications')},
{combos = {{key = 'W', reformers = {'LWin'}}}, 				down = iCommandPlaneCoverMySix, name = _('COMM Cover me (easy communication only)'), category = _('Communications')},
{combos = {{key = 'U', reformers = {'LWin'}}}, 				down = iCommandAWACSHomeBearing, name = _('COMM Ask AWACS home airbase (easy communication only)'), category = _('Communications')},
{combos = {{key = 'G', reformers = {'LWin'}}}, 				down = iCommandPlane_EngageGroundTargets, name = _('COMM Attack Ground Targets (easy communication only)'), category = _('Communications')},
{combos = {{key = 'D', reformers = {'LWin'}}}, 				down = iCommandPlane_EngageAirDefenses, name = _('COMM Attack Air Defenses (easy communication only)'), category = _('Communications')},
{combos = {{key = '\\'}}, 									down = iCommandToggleCommandMenu, name = _('COMM Communication menu'), category = _('Communications')},
{combos = {{key = '\\', reformers = {'RShift'}}}, 			down = ICommandSwitchDialog, name = _('COMM Switch dialog'), category = _('Communications')},
{combos = {{key = '\\', reformers = {'RCtrl'}}}, 			down = ICommandSwitchToCommonDialog, name = _('COMM Switch to main menu'), category = _('Communications')},
{combos = {{key = '\\', reformers = {'RAlt'}}},				down = iCommandPlane_P_51_PTT_on, up = iCommandPlane_P_51_PTT_off, name = _('COMM Push to talk'), category = _('Communications')},

-- View                                                    
{combos = {{key = 'Num4'}}, 								pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'Num6'}}, 								pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'Num8'}}, 								pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'Num2'}}, 								pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'Num9'}}, 								pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'Num3'}}, 								pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'Num1'}}, 								pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'Num7'}}, 								pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{combos = {{key = 'Num5'}}, 								pressed = iCommandViewCenter, name = _('View Center'), category = _('View')},

{combos = {{key = 'Num*'}}, 								pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},
{combos = {{key = 'Num/'}}, 								pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
{combos = {{key = 'NumEnter'}}, 							down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
{combos = {{key = 'Num*', reformers = {'RCtrl'}}}, 			pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
{combos = {{key = 'Num/', reformers = {'RCtrl'}}}, 			pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
{combos = {{key = 'NumEnter', reformers = {'RCtrl'}}}, 		down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
{combos = {{key = 'Num*', reformers = {'LAlt'}}}, 			down = iCommandViewSpeedUp, name = _('F11 camera moving forward'), category = _('View')},
{combos = {{key = 'Num/', reformers = {'LAlt'}}}, 			down = iCommandViewSlowDown, name = _('F11 camera moving backward'), category = _('View')},


{combos = {{key = 'F1'}}, 									down = iCommandViewCockpit, name = _('F1 Cockpit view'), category = _('View')},
{combos = {{key = 'F1', reformers = {'LCtrl'}}}, 			down = iCommandNaturalViewCockpitIn, name = _('F1 Natural head movement view'), category = _('View')},
{combos = {{key = 'F1', reformers = {'LAlt'}}}, 			down = iCommandViewHUDOnlyOnOff, name = _('F1 HUD only view switch'), category = _('View')},
{combos = {{key = 'F2'}}, 									down = iCommandViewAir, name = _('F2 Aircraft view'), category = _('View')},
{combos = {{key = 'F2', reformers = {'LCtrl'}}},		 	down = iCommandViewMe, name = _('F2 View own aircraft'), category = _('View')},
{combos = {{key = 'F2', reformers = {'RAlt'}}}, 			down = iCommandViewFromTo, name = _('F2 Toggle camera position'), category = _('View')},
{combos = {{key = 'F2', reformers = {'LAlt'}}},			 	down = iCommandViewLocal, name = _('F2 Toggle local camera control'), category = _('View')},
{combos = {{key = 'F3'}}, 									down = iCommandViewTower, name = _('F3 Fly-By view'), category = _('View')},
{combos = {{key = 'F3', reformers = {'LCtrl'}}},		 	down = iCommandViewTowerJump, name = _('F3 Fly-By jump view'), category = _('View')},
{combos = {{key = 'F4'}}, 									down = iCommandViewChaseArcade, name = _('F4 Arcade View'), category = _('View')},
{combos = {{key = 'F4', reformers = {'LShift'}}}, 			down = iCommandViewRear, name = _('F4 Look back view'), category = _('View')},
{combos = {{key = 'F4', reformers = {'LCtrl'}}},		 	down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
{combos = {{key = 'F5'}}, 									down = iCommandViewFight, name = _('F5 nearest AC view'), category = _('View')},
{combos = {{key = 'F5', reformers = {'LCtrl'}}},		 	down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
{combos = {{key = 'F6'}}, 									down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
{combos = {{key = 'F6', reformers = {'LCtrl'}}},		 	down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
{combos = {{key = 'F7'}}, 									down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
{combos = {{key = 'F7', reformers = {'LCtrl'}}},  			down = iCommandViewJFO, name = _('F7 Ground JFO/JTAC view'), category = _('View')},
--{combos = {{key = 'F8'}}, 							down = iCommandViewTargets, name = _('F8 Target view'), category = _('View')},
--{combos = {{key = 'F8', reformers = {'RAlt'}}}, 	down = iCommandViewTargetType, name = _('F8 Player targets/All targets filter'), category = _('View')},
{combos = {{key = 'F9'}}, 									down = iCommandViewNavy, name = _('F9 Ship view'), category = _('View')},
{combos = {{key = 'F9', reformers = {'LAlt'}}}, 			down = iCommandViewLndgOfficer, name = _('F9 Landing signal officer view'), category = _('View')},
{combos = {{key = 'F10'}}, 									down = iCommandViewAWACS, name = _('F10 Theater map view'), category = _('View')},
{combos = {{key = 'F10', reformers = {'LCtrl'}}},		 	down = iCommandViewAWACSJump, name = _('F10 Jump to theater map view over current point'), category = _('View')},
{combos = {{key = 'F11'}}, 									down = iCommandViewFree, name = _('F11 Airport free camera'), category = _('View')},
{combos = {{key = 'F11', reformers = {'LCtrl'}}},		 	down = iCommandViewFreeJump, name = _('F11 Jump to free camera'), category = _('View')},
{combos = {{key = 'F12'}}, 									down = iCommandViewStatic, name = _('F12 Static object view'), category = _('View')},
{combos = {{key = 'F12', reformers = {'LCtrl'}}},		 	down = iCommandViewMirage, name = _('F12 Civil traffic view'), category = _('View')},
{combos = {{key = 'F12', reformers = {'LShift'}}}, 			down = iCommandViewLocomotivesToggle, name = _('F12 Trains/cars toggle'), category = _('View')},
{combos = {{key = 'F1', reformers = {'LWin'}}} ,		 	down = iCommandViewPitHeadOnOff, name = _('F1 Head shift movement on / off'), category = _('View')},

{combos = {{key = ']', reformers = {'LShift'}}}, 			down = iCommandViewFastKeyboard, name = _('Camera view keyboard rate fast'), category = _('View')},
{combos = {{key = ']', reformers = {'LCtrl'}}}, 			down = iCommandViewSlowKeyboard, name = _('Camera view keyboard rate slow'), category = _('View')},
{combos = {{key = ']', reformers = {'LAlt'}}}, 				down = iCommandViewNormalKeyboard, name = _('Camera view keyboard rate normal'), category = _('View')},
{combos = {{key = '[', reformers = {'LShift'}}}, 			down =  iCommandViewFastMouse, name = _('Camera view mouse rate fast'), category = _('View')},
{combos = {{key = '[', reformers = {'LCtrl'}}}, 			down = iCommandViewSlowMouse, name = _('Camera view mouse rate slow'), category = _('View')},
{combos = {{key = '[', reformers = {'LAlt'}}}, 				down = iCommandViewNormalMouse, name = _('Camera view mouse rate normal'), category = _('View')},



-- Cockpit view
{combos = {{key = 'Num0'}}, 								down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = _('Cockpit panel view in'), category = _('View Cockpit')},
{combos = {{key = 'Num0', reformers = {'RCtrl'}}}, 			down = iCommandViewTempCockpitToggle, name = _('Cockpit panel view toggle'), category = _('View Cockpit')},
{combos = {{key = 'Num0', reformers = {'RAlt'}}}, 			down = iCommandViewSaveAngles, name = _('Save Cockpit Angles'), category = _('View Cockpit')}, -- Save current cockpit camera angles for fast numpad jumps  
{combos = {{key = 'Num8', reformers = {'RShift'}}}, 		pressed = iCommandViewUp, up = iCommandViewStop, name = _('View up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RShift'}}}, 		pressed = iCommandViewDown, up = iCommandViewStop, name = _('View down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RShift'}}}, 		pressed = iCommandViewLeft, up = iCommandViewStop, name = _('View left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RShift'}}}, 		pressed = iCommandViewRight, up = iCommandViewStop, name = _('View right'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RShift'}}}, 		pressed = iCommandViewUpRight, up = iCommandViewStop, name = _('View up right'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RShift'}}}, 		pressed = iCommandViewDownRight, up = iCommandViewStop, name = _('View down right'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RShift'}}}, 		pressed = iCommandViewDownLeft, up = iCommandViewStop, name = _('View down left'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RShift'}}}, 		pressed = iCommandViewUpLeft, up = iCommandViewStop, name = _('View up left'), category = _('View Cockpit')},

{combos = {{key = 'Num8', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Camera view up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Camera view down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Camera view left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Camera view right'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Camera view up-left'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Camera view down-left'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Camera view up-right'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Camera view down-right'), category = _('View Cockpit')},

{combos = {{key = 'Num8', reformers = {'RAlt'}}}, 			down = iCommandViewCameraUpSlow, name = _('Camera view up slow'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RAlt'}}},		 	down = iCommandViewCameraDownSlow, name = _('Camera view down slow'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RAlt'}}}, 			down = iCommandViewCameraLeftSlow, name = _('Camera view left slow'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RAlt'}}},		 	down = iCommandViewCameraRightSlow, name = _('Camera view right slow'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RAlt'}}},		 	down = iCommandViewCameraUpLeftSlow, name = _('Camera view up-left slow'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RAlt'}}}, 			down = iCommandViewCameraDownLeftSlow, name = _('Camera view down-left slow'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RAlt'}}},		 	down = iCommandViewCameraDownRight, name = _('Camera view down-right slow'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RAlt'}}},		 	down = iCommandViewCameraUpRightSlow, name = _('Camera view up-right slow'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RShift'}}},			down = iCommandViewCameraCenter, name = _('Center camera view'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RCtrl'}}},		 	down = iCommandViewCameraReturn, name = _('Return camera'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RAlt'}}}, 			down = iCommandViewCameraBaseReturn, name = _('Return camera base'), category = _('View Cockpit')},

{combos = {{key = 'Num0', reformers = {'LWin'}}},			down = iCommandViewSnapView0,	up = iCommandViewSnapViewStop, name = _('Snap View 0'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'LWin'}}}, 			down = iCommandViewSnapView1,	up = iCommandViewSnapViewStop, name = _('Snap View 1'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'LWin'}}}, 			down = iCommandViewSnapView2,	up = iCommandViewSnapViewStop, name = _('Snap View 2'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'LWin'}}}, 			down = iCommandViewSnapView3,	up = iCommandViewSnapViewStop, name = _('Snap View 3'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'LWin'}}}, 			down = iCommandViewSnapView4,	up = iCommandViewSnapViewStop, name = _('Snap View 4'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'LWin'}}}, 			down = iCommandViewSnapView5,	up = iCommandViewSnapViewStop, name = _('Snap View 5'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'LWin'}}}, 			down = iCommandViewSnapView6,	up = iCommandViewSnapViewStop, name = _('Snap View 6'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'LWin'}}},			down = iCommandViewSnapView7,	up = iCommandViewSnapViewStop, name = _('Snap View 7'), category = _('View Cockpit')},
{combos = {{key = 'Num8', reformers = {'LWin'}}}, 			down = iCommandViewSnapView8,	up = iCommandViewSnapViewStop, name = _('Snap View 8'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'LWin'}}}, 			down = iCommandViewSnapView9,	up = iCommandViewSnapViewStop, name = _('Snap View 9'), category = _('View Cockpit')},

{combos = {{key = 'N', reformers = {'RWin'}}}, 				down = iCommandViewLeftMirrorOn ,	up = iCommandViewLeftMirrorOff , name = _('Mirror glance'), category = _('View Cockpit')},


{combos = {{key = 'Num*', reformers = {'RShift'}}}, 		pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},
{combos = {{key = 'Num/', reformers = {'RShift'}}}, 		pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},


-- Cockpit Camera Motion (������������ ������ � ������)
{combos = {{key = 'Num8', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
{combos = {{key = 'Num*', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
{combos = {{key = 'Num/', reformers = {'RCtrl','RShift'}}, {key = 'Num-', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RCtrl','RShift'}}}, down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},

{down = iCommand_ExplorationStart, name = _('Enable visual recon mode'), category = _('View Cockpit')},
{combos = {{key = 'F1', reformers = {'LShift'}}},  down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode (press and hold)'), category = _('View Cockpit')},

-- Extended view
{combos = {{key = 'J', reformers = {'LShift'}}}, 			down = iCommandViewCameraJiggle, name = _('Camera jiggle toggle'), category = _('View Extended')},
{combos = {{key = 'K', reformers = {'LAlt'}}}, 				down = iCommandViewKeepTerrain, name = _('Camera terrain altitude hold'), category = _('View Extended')},
{combos = {{key = 'Home', reformers = {'RCtrl','RShift'}}}, down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
{combos = {{key = 'End', reformers = {'RCtrl' ,'RShift'}}}, down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
{combos = {{key = 'Delete', reformers = {'RCtrl'}}}, 		down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},
{combos = {{key = 'Num+', reformers = {'RCtrl'}}}, 		down = iCommandViewPlus, name = _('Camera ordnance tracking'), category = _('View Extended')},
{combos = {{key = 'PageDown', reformers = {'LCtrl'}}}, 		down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View Extended')},
{combos = {{key = 'PageUp', reformers = {'LCtrl'}}}, 		down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View Extended')},
{combos = {{key = 'Delete', reformers = {'LAlt'}}}, 		down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View Extended')},
{combos = {{key = 'Insert', reformers = {'LAlt'}}}, 		down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View Extended')},

-- Padlock

{combos = {{key = 'Num.', reformers = {'RShift'}}}, 		down = iCommandAllMissilePadlock, name = _('Padlock missiles all'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RAlt'}}}, 			down = iCommandThreatMissilePadlock, name = _('Padlock missile threat'), category = _('View Padlock')},
{combos = {{key = 'Num.'}}, 								down = iCommandViewLock, name = _('Padlock cycle'), category = _('View Padlock')},
{combos = {{key = 'NumLock'}}, 								down = iCommandViewUnlock, name = _('Padlock Off (stop padlock)'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RCtrl'}}}, 			down = iCommandViewTerrainLock, name = _('Padlock terrain point'), category = _('View Padlock')},


-- Labels
{combos = {{key = 'F10', reformers = {'LShift'}}}, 			down = iCommandMarkerState, name = _('Labels All'), category = _('Labels')},
{combos = {{key = 'F2', reformers = {'LShift'}}}, 			down = iCommandMarkerStatePlane, name = _('Labels Aircraft'), category = _('Labels')},
{combos = {{key = 'F6', reformers = {'LShift'}}}, 			down = iCommandMarkerStateRocket, name = _('Labels Missile'), category = _('Labels')},
{combos = {{key = 'F9', reformers = {'LShift'}}}, 			down = iCommandMarkerStateShip, name = _('Labels Vehicle & Ship'), category = _('Labels')},

-- Stick
{combos = {{key = 'Space', reformers = {'RAlt'}}}, 			down = iCommandPlanePickleOn, up = iCommandPlanePickleOff, name = _('Weapon release'), category = _('Stick')},
{combos = {{key = 'Space'}}, 								down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = _('MG131/151 fire'), category = _('Stick')},

{combos = {{key = 'Space', reformers = {'RCtrl'}}},			down = device_commands.Button_19, up = device_commands.Button_19, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('MG131 fire'), category = _('Stick')},

-- Flight Control
{combos = {{key = 'Up'}},									down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Flight Nose Down'), category = _('Flight Control')},
{combos = {{key = 'Down'}},									down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Flight Nose Up'), category = _('Flight Control')},
{combos = {{key = 'Left'}},									down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Flight Left Wing Down'), category = _('Flight Control')},
{combos = {{key = 'Right'}},								down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Flight Right Wing Down'), category = _('Flight Control')},
{combos = {{key = 'Z'}},									down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Flight Rudder Left'), category = _('Flight Control')},
{combos = {{key = 'X'}},									down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Flight Rudder Right'), category = _('Flight Control')},

{combos = {{key = 'Num+'}}, 								pressed = device_commands.Button_2, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = 1.0, 	name = _('Throttle Increase'), category = _('Flight Control')},
{combos = {{key = 'Num-'}}, 								pressed = device_commands.Button_2, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = -1.0,	name = _('Throttle Decrease'), category = _('Flight Control')},

-- Systems
{combos = {{key = 'W'}}, 									down = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff, name = _('Wheel brake Both'), category = _('Systems')},
{combos = {{key = 'W', reformers = {'LCtrl'}}}, 			down = iCommandPlaneWheelBrakeLeftOn, up = iCommandPlaneWheelBrakeLeftOff, name = _('Wheel brake Left'), category = _('Systems')},
{combos = {{key = 'W', reformers = {'LAlt'}}}, 				down = iCommandPlaneWheelBrakeRightOn, up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel brake Right'), category = _('Systems')},
{combos = {{key = 'E', reformers = {'LCtrl'}}}, 			down = iCommandPlaneEject, name = _('Bailout'), category = _('Systems')},

{combos = {{key = 'C', reformers = {'LCtrl'}}}, 			pressed = device_commands.Button_2, cockpit_device_id  = devices.CPT_MECH, value_pressed = 1.0, name = _('Canopy Closing'), category = _('Systems')},
{combos = {{key = 'C', reformers = {'LShift'}}}, 			pressed = device_commands.Button_2, cockpit_device_id  = devices.CPT_MECH, value_pressed = -1.0, name = _('Canopy Opening'), category = _('Systems')},
{combos = {{key = 'C', reformers = {'LShift', 'LCtrl'}}},	down = device_commands.Button_7, cockpit_device_id  = devices.CPT_MECH, value_down = 1.0, name = _('Canopy Emergency Release'), category = _('Systems')},

{combos = {{key = 'V', reformers = {'LAlt'}}},				pressed = device_commands.Button_2, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_pressed = -1.0, name = _('Horizon Cage'), category = _('Front Dash')},
{combos = {{key = 'V', reformers = {'LCtrl'}}},				pressed = device_commands.Button_2, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_pressed = 1.0, name = _('Horizon Uncage'), category = _('Front Dash')},

{combos = {{key = 'C', reformers = {'RAlt'}}},				pressed = device_commands.Button_2, cockpit_device_id = devices.REMOTE_COMPASS, value_pressed = 0.05, name = _('Compass Bezel CW'), category = 'Front Dash'},
{combos = {{key = 'C', reformers = {'RCtrl'}}},				pressed = device_commands.Button_2, cockpit_device_id = devices.REMOTE_COMPASS, value_pressed = -0.05, name = _('Compass Bezel CCW'), category = 'Front Dash'},

--Altimeter 
{combos = {{key = 'P', reformers = {'LCtrl'}}},				pressed = device_commands.Button_1, cockpit_device_id = devices.ALTIMETER, value_pressed = -0.04, name = _('Altimeter Pressure Decrease'), category = _('Front Dash')},
{combos = {{key = 'P', reformers = {'LShift'}}},			pressed = device_commands.Button_1, cockpit_device_id = devices.ALTIMETER, value_pressed = 0.04, name = _('Altimeter Pressure Increase'), category = _('Front Dash')},

--- Kneeboard
{combos = {{key = ']'}}						   , 			down = device_commands.Button_1, cockpit_device_id  = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Next Page')  , category = _('Kneeboard')},
{combos = {{key = '['}}						   , 			down = device_commands.Button_2, cockpit_device_id  = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{combos = {{key = 'K', reformers = {'RShift'}}}, 			down = iCommandPlaneShowKneeboard,	name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{combos = {{key = 'K'}}						   , 			down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{combos = {{key = 'K', reformers = {'RCtrl'}}} , 			down = device_commands.Button_3	, cockpit_device_id  = devices.KNEEBOARD,value_down = 1.0, name = _('Kneeboard current position mark point')  , category = _('Kneeboard')},


--GunSight EZ42
{combos = {{key = 'M'}}, 								down = device_commands.Button_14, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_down = 1.0,   name = _('Gunsight power'), category = _('EZ42 gunsight')},
{combos = {{key = 'M', reformers = {'LCtrl','LWin'}}}, 	down = device_commands.Button_1, cockpit_device_id = devices.EZ42_GUNSIGHT, value_down = 1.0, name = _('Gunsight ON'), category = _('EZ42 gunsight')},
{combos = {{key = 'M', reformers = {'LShift','LWin'}}}, down = device_commands.Button_1, cockpit_device_id = devices.EZ42_GUNSIGHT, value_down = 0.0, name = _('Gunsight OFF'), category = _('EZ42 gunsight')},

{combos = {{key = 'N'}}, 								down = device_commands.Button_15, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_down = 1.0,   name = _('Gunsight night lens'), category = _('EZ42 gunsight')},
{combos = {{key = 'N', reformers = {'LCtrl','LWin'}}},	down = device_commands.Button_11, cockpit_device_id = devices.EZ42_GUNSIGHT, value_down = 1.0, name = _('Gunsight Night Filter ON'), category = _('EZ42 gunsight')},
{combos = {{key = 'N', reformers = {'LShift','LWin'}}},	down = device_commands.Button_11, cockpit_device_id = devices.EZ42_GUNSIGHT, value_down = 0.0, name = _('Gunsight Night Filter OFF'), category = _('EZ42 gunsight')},

{combos = {{key = 'O', reformers = {'RCtrl'}}}, 			pressed = device_commands.Button_6, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = 1.0,	 name = _('Gunsight brightness Increase'), category = _('EZ42 gunsight')},
{combos = {{key = 'O', reformers = {'RAlt'}}}, 				pressed = device_commands.Button_6, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = -1.0,	 name = _('Gunsight brightness Decrease'), category = _('EZ42 gunsight')},
{combos = {{key = ','}}, 									pressed = device_commands.Button_10, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = 0.5,   name = _('Gunsight target span Increase'), category = _('EZ42 gunsight')},
{combos = {{key = '/'}}, 									pressed = device_commands.Button_10, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = -0.5,   name = _('Gunsight target span Decrease'), category = _('EZ42 gunsight')},
{combos = {{key = ';'}}, 									pressed = device_commands.Button_16, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = 0.7,	 name = _('Gunsight range to target Increase'), category = _('EZ42 gunsight')},
{combos = {{key = '.'}}, 									pressed = device_commands.Button_16, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = -0.7,	 name = _('Gunsight range to target Decrease'), category = _('EZ42 gunsight')},
{pressed = device_commands.Button_18, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = 1.0,	 name = _('Altitude correction Increase'), category = _('EZ42 gunsight')},
{pressed = device_commands.Button_18, cockpit_device_id  = devices.EZ42_GUNSIGHT, value_pressed = -1.0,	 name = _('Altitude correction Decrease'), category = _('EZ42 gunsight')},


--Weapon System
{combos = {{key = 'R', reformers = {'LCtrl'}}}, 			down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Bomb Emergency Release'), category = _('Weapon System')},
{combos = {{key = 'C',}}, 									down = device_commands.Button_13, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0,   name = _('Master Arm'), category = _('Weapon System')},
{combos = {{key = 'C', reformers = {'LCtrl','LWin'}}},		down = device_commands.Button_3, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Master Arm ON'), category = _('Weapon System')},
{combos = {{key = 'C', reformers = {'LShift','LWin'}}},		down = device_commands.Button_3, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = _('Master Arm OFF'), category = _('Weapon System')},

{combos = {{key = 'B', reformers = {'LShift'}}}, 			down = device_commands.Button_18, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = -1.0,   name = _('Bomb fusing selector Left'), category = _('Weapon System')},
{combos = {{key = 'B', reformers = {'LCtrl'}}},	 			down = device_commands.Button_18, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0,   name = _('Bomb fusing selector Right'), category = _('Weapon System')},
{combos = {{key = '1', reformers = {'LCtrl'}}}, 			down = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = _('Bomb fusing selector dive OV'), category = _('Weapon System')},
{combos = {{key = '2', reformers = {'LCtrl'}}}, 			down = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.1, name = _('Bomb fusing selector dive MV'), category = _('Weapon System')},
{combos = {{key = '3', reformers = {'LCtrl'}}}, 			down = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.2, name = _('Bomb fusing selector OFF'), category = _('Weapon System')},
{combos = {{key = '4', reformers = {'LCtrl'}}}, 			down = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.3, name = _('Bomb fusing selector level MV'), category = _('Weapon System')},
{combos = {{key = '5', reformers = {'LCtrl'}}}, 			down = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.4, name = _('Bomb fusing selector level OV'), category = _('Weapon System')},

{combos = {{key = '1', reformers = {'LCtrl','LWin'}}},	pressed = device_commands.Button_14, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = -0.1,   name = _('Ammo counter 1 Decrease'), category = _('Weapon System')},
{combos = {{key = '1', reformers = {'LAlt','LWin'}}},	pressed = device_commands.Button_14, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = 0.1,   name = _('Ammo counter 1 Increase'), category = _('Weapon System')},
{combos = {{key = '2', reformers = {'LCtrl','LWin'}}},	pressed = device_commands.Button_15, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = -0.1,   name = _('Ammo counter 2 Decrease'), category = _('Weapon System')},
{combos = {{key = '2', reformers = {'LAlt','LWin'}}},	pressed = device_commands.Button_15, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = 0.1,   name = _('Ammo counter 2 Increase'), category = _('Weapon System')},
{combos = {{key = '3', reformers = {'LCtrl','LWin'}}},	pressed = device_commands.Button_16, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = -0.1,   name = _('Ammo counter 3 Decrease'), category = _('Weapon System')},
{combos = {{key = '3', reformers = {'LAlt','LWin'}}},	pressed = device_commands.Button_16, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = 0.1,   name = _('Ammo counter 3 Increase'), category = _('Weapon System')},
{combos = {{key = '4', reformers = {'LCtrl','LWin'}}},	pressed = device_commands.Button_17, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = -0.1,   name = _('Ammo counter 4 Decrease'), category = _('Weapon System')},
{combos = {{key = '4', reformers = {'LAlt','LWin'}}},	pressed = device_commands.Button_17, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = 0.1,   name = _('Ammo counter 4 Increase'), category = _('Weapon System')},

{combos = {{key = 'O', reformers = {'LShift'}}},		down = device_commands.Button_8, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Main Rocket Switch ON'), category = _('Weapon System')},
{combos = {{key = 'O', reformers = {'LCtrl'}}},			down = device_commands.Button_8, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = _('Main Rocket Switch OFF'), category = _('Weapon System')},

{combos = {{key = 'K', reformers = {'LShift'}}},		down = device_commands.Button_9, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Rocket Emergency Release Cover OPEN'), category = _('Weapon System')},
{combos = {{key = 'I', reformers = {'LShift'}}},		down = device_commands.Button_10, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Rocket Emergency Release ON'), category = _('Weapon System')},
{combos = {{key = 'I', reformers = {'LCtrl'}}},			down = device_commands.Button_10, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = _('Rocket Emergency Release OFF'), category = _('Weapon System')},

--landing gear
{combos = {{key = 'G'}}, 									down = device_commands.Button_10, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Up/Down'), category = _('Systems')},

{combos = {{key = 'G', reformers = {'RAlt','RCtrl'}}}, 		down = device_commands.Button_11, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Retraction Cover'), category = _('Systems')},
{combos = {{key = 'H', reformers = {'RAlt','RWin'}}},		down = device_commands.Button_6, cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 0.0, name = _('Landing Gear Retraction Cover Down'), category = _('Systems')},
{combos = {{key = 'H', reformers = {'RShift','RWin'}}},		down = device_commands.Button_6, cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Retraction Cover Up'), category = _('Systems')},

{combos = {{key = 'G', reformers = {'RAlt','RShift'}}}, 	down = device_commands.Button_5, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Retraction'), category = _('Systems')},
{combos = {{key = 'G', reformers = {'RCtrl','RShift'}}}, 	down = device_commands.Button_7, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Extending'), category = _('Systems')},

{combos = {{key = 'G', reformers = {'RAlt','RWin'}}}, 		down = device_commands.Button_9, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Emergency Release'), category = _('Systems')},
{combos = {{key = 'G', reformers = {'RCtrl','RWin'}}}, 		down = device_commands.Button_8, cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 0.0, name = _('Landing Gear Emergency Handle Push'), category = _('Systems')},
{combos = {{key = 'G', reformers = {'RShift','RWin'}}}, 	down = device_commands.Button_8, cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Emergency Handle Pull'), category = _('Systems')},

--flaps
{combos = {{key = 'F', reformers = {'LShift'}}} , 			down = device_commands.Button_1, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Flaps Up'), category = _('Flight Control')},
{combos = {{key = 'F', reformers = {'LCtrl'}}}, 			down = device_commands.Button_2, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Flaps Take Off'), category = _('Flight Control')},
{combos = {{key = 'F'}}, 									down = device_commands.Button_3, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Flaps Landing'), category = _('Flight Control')},

--engine control
{combos = {{key = 'Home'}},									down = device_commands.Button_8, up = device_commands.Button_10, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.0, value_up = 0.5, name = _('Starter Power'), category = _('Engine Control')},
{combos = {{key = 'Home', reformers = {'RCtrl'}}},			down = device_commands.Button_9, up = device_commands.Button_10, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, value_up = 0.5, name = _('Starter Clutch'), category = _('Engine Control')},
{combos = {{key = 'Home', reformers = {'RShift'}}},			down = device_commands.Button_7, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('Starter Switch Cover'), category = _('Engine Control')},

{combos = {{key = 'M', reformers = {'RShift'}}},			down = device_commands.Button_14, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('MBG Emergency Handle'), category = _('Engine Control')},
{combos = {{key = 'M', reformers = {'RShift','RWin'}}},		down = device_commands.Button_13, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.0, name = _('MBG Emergency Handle Push'), category = _('Engine Control')},
{combos = {{key = 'M', reformers = {'RAlt','RWin'}}},		down = device_commands.Button_13, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('MBG Emergency Handle Pull'), category = _('Engine Control')},

{combos = {{key = 'E'}},			    					down = device_commands.Button_16, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('MW-50 Switch'), category = _('Engine Control')},
{combos = {{key = 'E', reformers = {'RShift'}}},			down = device_commands.Button_15, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('MW-50 Switch ON'), category = _('Engine Control')},
{combos = {{key = 'E', reformers = {'RCtrl'}}},				down = device_commands.Button_15, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.0, name = _('MW-50 Switch OFF'), category = _('Engine Control')},

{combos = {{key = 'End'}}, 									down = device_commands.Button_5, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0,	 name = _('Magneto Switch Forward'), category = _('Engine Control')},
{combos = {{key = 'End',reformers = {'RShift'}}}, 			down = device_commands.Button_5, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = -1.0,	 name = _('Magneto Switch Backward'), category = _('Engine Control')},

{combos = {{key = '0',reformers = {'RShift'}}}, 			down = device_commands.Button_4, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.0, name = _('Magneto Switch OFF'), category = _('Engine Control')},
{combos = {{key = '1',reformers = {'RShift'}}}, 			down = device_commands.Button_4, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.3, name = _('Magneto Switch 1'), category = _('Engine Control')},
{combos = {{key = '2',reformers = {'RShift'}}}, 			down = device_commands.Button_4, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.6, name = _('Magneto Switch 2'), category = _('Engine Control')},
{combos = {{key = '3',reformers = {'RShift'}}}, 			down = device_commands.Button_4, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.9, name = _('Magneto Switch 1+2'), category = _('Engine Control')},


{combos = {{key = 'Home', reformers = {'RAlt'}}} , 			down = iCommandLeftEngineStart, name = _('Throttle to START'), category = _('Engine Control')},
{combos = {{key = 'End', reformers = {'RAlt'}}} , 			down = iCommandLeftEngineStop, name = _('Throttle to IDLE'), category = _('Engine Control')},
{combos = {{key = 'X', reformers = {'LCtrl'}}}, 			down = device_commands.Button_12, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('Throttle Control Lock'), category = _('Engine Control')},

--oxygen
{combos = {{key = 'B', reformers = {'RShift'}}},			down = device_commands.Button_2, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_down = 1.0, name = _('Oxygen Emergency Knob'), category = _('Oxygen System')},
{combos = {{key = 'B', reformers = {'RShift','RWin'}}},		down = device_commands.Button_1, cockpit_device_id = devices.OXYGEN_SYSTEM, value_down = 0.0, name = _('Emergency Oxygen ON'), category = _('Oxygen System')},
{combos = {{key = 'B', reformers = {'RAlt','RWin'}}},		down = device_commands.Button_1, cockpit_device_id = devices.OXYGEN_SYSTEM, value_down = 1.0, name = _('Emergency Oxygen OFF'), category = _('Oxygen System')},

{combos = {{key = 'B', reformers = {'RCtrl'}}},				pressed = device_commands.Button_4, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_pressed = -0.5, name = _('Oxygen Valve Close'), category = _('Oxygen System')},
{combos = {{key = 'B', reformers = {'RAlt'}}},				pressed = device_commands.Button_4, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_pressed = 0.5, name = _('Oxygen Valve Open'), category = _('Oxygen System')},

--trimmer
{combos = {{key = ';', reformers = {'RCtrl'}}}, 			down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Trim Elevator Down'), category = _('Flight Control')},
{combos = {{key = '.', reformers = {'RCtrl'}}}, 			down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = -1.0, value_up = 0.0, name = _('Trim Elevator Up'), category = _('Flight Control')},

{combos = {{key = 'A', reformers = {'LCtrl'}}}, 			pressed = device_commands.Button_14, cockpit_device_id  = devices.CONTROL_SYSTEM, value_pressed = -0.1, name = _('Radiator Flaps Close'), category = _('Engine Control')},
{combos = {{key = 'A', reformers = {'LAlt'}}},	 			pressed = device_commands.Button_14, cockpit_device_id  = devices.CONTROL_SYSTEM, value_pressed = 0.1, name = _('Radiator Flaps Open'), category = _('Engine Control')},

--fuel system
{combos = {{key = 'T'}},									down = device_commands.Button_5, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Fuel Selector Valve Up'), category = _('Fuel Control')},
{combos = {{key = 'T', reformers = {'RShift'}}},			down = device_commands.Button_5, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = -1.0, name = _('Fuel Selector Valve Down'), category = _('Fuel Control')},
{combos = {{key = '1', reformers = {'RAlt'}}},				down = device_commands.Button_1, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.0, name = _('Fuel Selector Valve OFF'), category = _('Fuel Control')},
{combos = {{key = '2', reformers = {'RAlt'}}},				down = device_commands.Button_1, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.1, name = _('Fuel Selector Valve AFT Tank Closed'), category = _('Fuel Control')},
{combos = {{key = '3', reformers = {'RAlt'}}},				down = device_commands.Button_1, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.2, name = _('Fuel Selector Valve FWD Tank Closed'), category = _('Fuel Control')},
{combos = {{key = '4', reformers = {'RAlt'}}},				down = device_commands.Button_1, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.3, name = _('Fuel Selector Valve Open'), category = _('Fuel Control')},

{combos = {{key = 'T', reformers = {'RAlt'}}},				down = device_commands.Button_6, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Fuel Gauge Selector to the Right'), category = _('Fuel Control')},
{combos = {{key = 'T', reformers = {'RCtrl'}}},				down = device_commands.Button_6, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = -1.0, name = _('Fuel Gauge Selector to the Left'), category = _('Fuel Control')},

{combos = {{key = '5', reformers = {'RAlt'}}},				down = device_commands.Button_2, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.0, name = _('Fuel Gauge Selector FWD'), category = _('Fuel Control')},
{combos = {{key = '6', reformers = {'RAlt'}}},				down = device_commands.Button_2, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.5, name = _('Fuel Gauge Selector OFF'), category = _('Fuel Control')},
{combos = {{key = '7', reformers = {'RAlt'}}},				down = device_commands.Button_2, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Fuel Gauge Selector AFT'), category = _('Fuel Control')},

{combos = {{key = 'T', reformers = {'RWin'}}},				down = device_commands.Button_4, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('MW-B4 Selector'), category = _('Fuel Control')},

{combos = {{key = 'T', reformers = {'LShift'}}},			down = device_commands.Button_8, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Cold Start/Wind Screen Washer to the Right'), category = _('Fuel Control')},
{combos = {{key = 'T', reformers = {'LAlt'}}},				down = device_commands.Button_8, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = -1.0, name = _('Cold Start/Wind Screen Washer to the Left'), category = _('Fuel Control')},

{combos = {{key = 'P', reformers = {'LAlt'}}},				down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Primer Pump'), category = _('Fuel Control')},

--radio
{combos = {{key = 'N', reformers = {'LShift'}}},			down = device_commands.Button_2, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Radio Channel Selector CW'), category = _('VHF Radio')},
{combos = {{key = 'N', reformers = {'LCtrl'}}},				down = device_commands.Button_2, cockpit_device_id  = devices.VHF_RADIO, value_down = -1.0, name = _('Radio Channel Selector CCW'), category = _('VHF Radio')},
{combos = {{key = '1', reformers = {'LShift'}}},			down = device_commands.Button_1, cockpit_device_id = devices.VHF_RADIO, value_down = 0.0, name = _('Radio Channel Selector I'), category = _('VHF Radio')},
{combos = {{key = '2', reformers = {'LShift'}}},			down = device_commands.Button_1, cockpit_device_id = devices.VHF_RADIO, value_down = 0.1, name = _('Radio Channel Selector II'), category = _('VHF Radio')},
{combos = {{key = '3', reformers = {'LShift'}}},			down = device_commands.Button_1, cockpit_device_id = devices.VHF_RADIO, value_down = 0.2, name = _('Radio Channel Selector III'), category = _('VHF Radio')},
{combos = {{key = '4', reformers = {'LShift'}}},			down = device_commands.Button_1, cockpit_device_id = devices.VHF_RADIO, value_down = 0.3, name = _('Radio Channel Selector IV'), category = _('VHF Radio')},

{combos = {{key = 'C', reformers = {'LWin'}}},				down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Radio Mode RADIO/ADF'), category = _('VHF Radio')},
{combos = {{key = 'C', reformers = {'LCtrl','LWin'}}},		down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 0.0, name = _('Radio Mode ADF'), category = _('VHF Radio')},
{combos = {{key = 'C', reformers = {'LShift','LWin'}}},		down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Radio Mode RADIO'), category = _('VHF Radio')},

{combos = {{key = 'D', reformers = {'LShift'}}}, 			pressed = device_commands.Button_4, cockpit_device_id  = devices.VHF_RADIO, value_pressed = 0.2, name = _('Radio Volume Increase'), category = _('VHF Radio')},
{combos = {{key = 'D', reformers = {'LAlt'}}},	 			pressed = device_commands.Button_4, cockpit_device_id  = devices.VHF_RADIO, value_pressed = -0.2, name = _('Radio Volume Decrease'), category = _('VHF Radio')},

{combos = {{key = 'G', reformers = {'LShift'}}}, 			pressed = device_commands.Button_9, cockpit_device_id  = devices.VHF_RADIO, value_pressed = 0.1, name = _('Radio Tuning Increase'), category = _('VHF Radio')},
{combos = {{key = 'G', reformers = {'LAlt'}}},	 			pressed = device_commands.Button_9, cockpit_device_id  = devices.VHF_RADIO, value_pressed = -0.1, name = _('Radio Tuning Decrease'), category = _('VHF Radio')},

--electric
{combos = {{key = 'D', reformers = {'RWin'}}},				down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Electric Emergency Disconnect'), category = _('Electric System')},
{combos = {{key = 'C', reformers = {'RWin'}}},				down = device_commands.Button_3, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Cover'), category = _('Electric System')},

{combos = {{key = '1', reformers = {'LWin'}}},	down = device_commands.Button_5, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Flaps, Trimmer, Artificial Horizon Power'), category = _('Electric System')},
{combos = {{key = '1', reformers = {'LWin','LCtrl'}}},	down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Flaps, Trimmer, Artificial Horizon Off'), category = _('Electric System')},
{combos = {{key = '2', reformers = {'LWin'}}},	down = device_commands.Button_6, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Landing Gear Power On'), category = _('Electric System')},
{combos = {{key = '2', reformers = {'LWin','LCtrl'}}},	down = device_commands.Button_19, up = device_commands.Button_19, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Landing Gear Power Off'), category = _('Electric System')},
{combos = {{key = '3', reformers = {'LWin'}}},	down = device_commands.Button_7, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Pitot and Heating Cover On'), category = _('Electric System')},
{combos = {{key = '3', reformers = {'LWin','LCtrl'}}},	down = device_commands.Button_20, up = device_commands.Button_20, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Pitot and Heating Cover Off'), category = _('Electric System')},
{combos = {{key = '4', reformers = {'LWin'}}},	down = device_commands.Button_8, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB FuG25a On'), category = _('Electric System')},
{combos = {{key = '4', reformers = {'LWin','LCtrl'}}},	down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB FuG25a Off'), category = _('Electric System')},
{combos = {{key = '5', reformers = {'LWin'}}},	down = device_commands.Button_9, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB FuG16ZY On'), category = _('Electric System')},
{combos = {{key = '5', reformers = {'LWin','LCtrl'}}},	down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB FuG16ZY Off'), category = _('Electric System')},
{combos = {{key = '6', reformers = {'LWin'}}},	down = device_commands.Button_10, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Instrument Lights, Gun-sight, Indicators, Compass, Starter On'), category = _('Electric System')},
{combos = {{key = '6', reformers = {'LWin','LCtrl'}}},	down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Instrument Lights, Gun-sight, Indicators, Compass, Starter Off'), category = _('Electric System')},
{combos = {{key = '7', reformers = {'LWin'}}},	down = device_commands.Button_11, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Generator On'), category = _('Electric System')},
{combos = {{key = '7', reformers = {'LWin','LCtrl'}}},	down = device_commands.Button_24, up = device_commands.Button_24, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Generator Off'), category = _('Electric System')},
{combos = {{key = '8', reformers = {'LWin'}}},	down = device_commands.Button_12, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Battery On'), category = _('Electric System')},
{combos = {{key = '8', reformers = {'LWin','LCtrl'}}},	down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Battery Off'), category = _('Electric System')},

{combos = {{key = '1', reformers = {'RWin'}}},	down = device_commands.Button_13, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Navigation Lights On'), category = _('Electric System')},
{combos = {{key = '1', reformers = {'RWin','RCtrl'}}},	down = device_commands.Button_26, up = device_commands.Button_26, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Navigation Lights Off'), category = _('Electric System')},
{combos = {{key = '2', reformers = {'RWin'}}},	down = device_commands.Button_14, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Forward Tank Pump On'), category = _('Electric System')},
{combos = {{key = '2', reformers = {'RWin','RCtrl'}}},	down = device_commands.Button_27, up = device_commands.Button_27, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Forward Tank Pump Off'), category = _('Electric System')},
{combos = {{key = '3', reformers = {'RWin'}}},	down = device_commands.Button_15, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Rear Tank Pump On'), category = _('Electric System')},
{combos = {{key = '3', reformers = {'RWin','RCtrl'}}},	down = device_commands.Button_28, up = device_commands.Button_28, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Rear Tank Pump Off'), category = _('Electric System')},
{combos = {{key = '4', reformers = {'RWin'}}},	down = device_commands.Button_16, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB Auxiliary Tank Pump On'), category = _('Electric System')},
{combos = {{key = '4', reformers = {'RWin','RCtrl'}}},	down = device_commands.Button_29, up = device_commands.Button_29, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Auxiliary Tank Pump Off'), category = _('Electric System')},
{combos = {{key = '5', reformers = {'RWin'}}},	down = device_commands.Button_17, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('CB MW-50 On'), category = _('Electric System')},
{combos = {{key = '5', reformers = {'RWin','RCtrl'}}},	down = device_commands.Button_30, up = device_commands.Button_30, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB MW-50 Off'), category = _('Electric System')},

{combos = {{key = 'L', reformers = {'LShift'}}}, pressed = device_commands.Button_1, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = 0.007, name = _('Instrument Brightness Increase'), category = _('Electric System')},
{combos = {{key = 'L', reformers = {'LCtrl'}}},pressed = device_commands.Button_1, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -0.007, name = _('Instrument Brightness Decrease'), category = _('Electric System')},

--Clock
{combos = {{key = 'W', reformers = {'RShift'}}}, 		down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.CLOCK, value_down = 1.0, value_up = 0.0,name = _('Stopwatch'), category = _('Clock')},

{combos = {{key = 'W', reformers = {'RAlt'}}}, 			down = device_commands.Button_2, cockpit_device_id = devices.CLOCK, value_down = 1.0, name = _('Clock Stop'), category = _('Clock')},
{combos = {{key = 'W', reformers = {'RCtrl'}}}, 		down = device_commands.Button_2, cockpit_device_id = devices.CLOCK, value_down = 0.0, name = _('Clock Start'), category = _('Clock')},

{combos = {{key = 'W', reformers = {'RAlt','RCtrl'}}}, 	pressed = device_commands.Button_4, cockpit_device_id = devices.CLOCK, value_pressed = 0.002, name = _('Clock Bezel CW'), category = _('Clock')},
{combos = {{key = 'W', reformers = {'RAlt','RShift'}}}, pressed = device_commands.Button_4, cockpit_device_id = devices.CLOCK, value_pressed = -0.002, name = _('Clock Bezel CCW'), category = _('Clock')},

},
}
