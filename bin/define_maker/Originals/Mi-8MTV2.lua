local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

return {

modifiers = {
['LShift'] = 'LShift',
['RShift'] = 'RShift',
['LAlt'] = 'LAlt',
['RAlt'] = 'RAlt',
['LCtrl'] = 'LCtrl',
['RCtrl'] = 'RCtrl',
['LWin'] = 'LWin',
['RWin'] = 'RWin',
},

keyCommands = {

{combos = {{key = 'Home', reformers = {'LWin'}}}, down = iCommandEnginesStart, name = _('Auto execute full start procedure'), category = _('Cheat')},
{combos = {{key = 'End' , reformers = {'LWin'}}} , down = iCommandEnginesStop, name = _('Auto execute full stop procedure') , category = _('Cheat')},
{combos = {{key = '`', reformers = {'LAlt'}}}, down = ICommandToggleConsole, name = _('Toggle Console'), category = _('Debug')},

-- General
{combos = {{key = 'Esc'}}, down = iCommandQuit, name = _('End mission'), category = _('General')},
{combos = {{key = 'Pause'}}, down = iCommandBrakeGo, name = _('Pause'), category = _('General')},
{combos = {{key = 'Z', reformers = {'LCtrl'}}}, down = iCommandAccelerate, name = _('Time accelerate'), category = _('General')},
{combos = {{key = 'Z', reformers = {'LAlt'}}}, down = iCommandDecelerate, name = _('Time decelerate'), category = _('General')},
{combos = {{key = 'Z', reformers = {'LShift'}}}, down = iCommandNoAcceleration, name = _('Time normal'), category = _('General')},
{combos = {{key = '\''}}, down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},
--{combos = {{key = 'Tab', reformers = {'LShift'}}}, down = iCommandTrkEsc, name = _('Playback track cancel'), category = _('General')},
{combos = {{key = 'Tab'}}, down = iCommandChat, name = _('Multiplayer chat - mode All'), category = _('General')},
{combos = {{key = 'Tab', reformers = {'LCtrl'}}}, down = iCommandFriendlyChat, name = _('Multiplayer chat - mode Allies'), category = _('General')},
{combos = {{key = 'Y', reformers = {'LCtrl'}}}, down = iCommandInfoOnOff, name = _('Info bar toggle'), category = _('General')},
{combos = {{key = 'Tab', reformers = {'RCtrl','RShift'}}}, down = iCommandRecoverHuman, name = _('Get New Plane - respawn'), category = _('General')},
{combos = {{key = 'C', reformers = {'LAlt'}}}, down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{combos = {{key = 'J', reformers = {'RAlt'}}}, down = iCommandPlaneJump, name = _('Jump into other aircraft'), category = _('General')},
{combos = {{key = 'SysRQ'}}, down = iCommandScreenShot, name = _('Screenshot'), category = _('General')},
{combos = {{key = 'Pause', reformers = {'RCtrl'}}}, down = iCommandGraphicsFrameRate, name = _('Frame rate counter - Service info'), category = _('General')},
{combos = {{key = 'Y', reformers = {'LAlt'}}}, down = iCommandViewCoordinatesInLinearUnits, name = _('Info bar coordinate units toggle'), category = _('General')},
{combos = {{key = 'P', reformers = {'RShift'}}}, down = iCommandCockpitShowPilotOnOff, name = _('Show Pilot Body'), category = _('General')},
{combos = {{key = 'Enter', reformers = {'RCtrl'}}}, down = iCommandPlane_ShowControls, name = _('Show controls indicator') , category = _('General')},
{combos = {{key = 'Pause', reformers = {'LShift', 'LWin'}}}, down = iCommandActivePauseOnOff, name = _('Active Pause'), category = _('Cheat')},

{combos = {{key = '\'', reformers = {'LAlt'}}}, 			down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},
{combos = {{key = '\'', reformers = {'RShift'}}}, 			down = iCommandDebriefing, name = _('Debriefing window'), category = _('General')},
{combos = {{key = 'B', reformers = {'LAlt'}}},				down = iCommandViewBriefing, name = _('Briefing window'), category = _('General')},

{combos = {{key = 'M'}},				down = iCommandToggleMirrors, name = _('Toggle mirrors'), category = _('General')},

{down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode on/off'), category = _('View Cockpit')},

-- View                                                    
{combos = {{key = 'Num4'}}, pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'Num6'}}, pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'Num8'}}, pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'Num2'}}, pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'Num9'}}, pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'Num3'}}, pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'Num1'}}, pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'Num7'}}, pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{combos = {{key = 'Num5'}}, pressed = iCommandViewCenter, name = _('Center View'), category = _('View')},

{combos = {{key = 'Num*'}}, pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},

{combos = {{key = 'Num/'}}, pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
{combos = {{key = 'NumEnter'}}, down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
{combos = {{key = 'Num*', reformers = {'RCtrl'}}}, pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
{combos = {{key = 'Num/', reformers = {'RCtrl'}}}, pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
{combos = {{key = 'NumEnter', reformers = {'RCtrl'}}}, down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
{combos = {{key = 'Num*', reformers = {'LAlt'}}}, down = iCommandViewSpeedUp, name = _('F11 camera moving forward'), category = _('View')},
{combos = {{key = 'Num/', reformers = {'LAlt'}}}, down = iCommandViewSlowDown, name = _('F11 camera moving backward'), category = _('View')},
{combos = {{key = 'PageDown', reformers = {'LCtrl'}}}, down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View')},
{combos = {{key = 'PageUp', reformers = {'LCtrl'}}}, down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View')},
{combos = {{key = 'Delete', reformers = {'LAlt'}}}, down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View')},
{combos = {{key = 'Insert', reformers = {'LAlt'}}}, down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View')},

{combos = {{key = 'F1'}}, down = iCommandViewCockpit, name = _('F1 Cockpit view'), category = _('View')},
{combos = {{key = 'F1', reformers = {'LCtrl'}}}, down = iCommandNaturalViewCockpitIn, name = _('F1 Natural head movement view'), category = _('View')},
{combos = {{key = 'F1', reformers = {'LAlt'}}}, down = iCommandViewHUDOnlyOnOff, name = _('F1 HUD only view switch'), category = _('View')},
{combos = {{key = 'F2'}}, down = iCommandViewAir, name = _('F2 Aircraft view'), category = _('View')},
{combos = {{key = 'F2', reformers = {'LCtrl'}}}, down = iCommandViewMe, name = _('F2 View own aircraft'), category = _('View')},
{combos = {{key = 'F2', reformers = {'RAlt'}}}, down = iCommandViewFromTo, name = _('F2 Toggle camera position'), category = _('View')},
{combos = {{key = 'F2', reformers = {'LAlt'}}}, down = iCommandViewLocal, name = _('F2 Toggle local camera control'), category = _('View')},
{combos = {{key = 'F3'}}, down = iCommandViewTower, name = _('F3 Fly-By view'), category = _('View')},
{combos = {{key = 'F3', reformers = {'LCtrl'}}}, down = iCommandViewTowerJump, name = _('F3 Fly-By jump view'), category = _('View')},
{combos = {{key = 'F4'}}, down = iCommandViewRear, name = _('F4 Look back view'), category = _('View')},
{combos = {{key = 'F4', reformers = {'LCtrl'}}}, down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
{combos = {{key = 'F4', reformers = {'LShift'}}},down = iCommandViewChaseArcade, name = _('F4 Arcade Chase view'), category = _('View')},
{combos = {{key = 'F5'}}, down = iCommandViewFight, name = _('F5 nearest AC view'), category = _('View')},
{combos = {{key = 'F5', reformers = {'LCtrl'}}}, down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
{combos = {{key = 'F6'}}, down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
{combos = {{key = 'F6', reformers = {'LCtrl'}}}, down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
{combos = {{key = 'F7'}}, down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
{combos = {{key = 'F8'}}, down = iCommandViewTargets, name = _('F8 Target view'), category = _('View')},
{combos = {{key = 'F8', reformers = {'RAlt'}}}, down = iCommandViewTargetType, name = _('F8 Player targets/All targets filter'), category = _('View')},
{combos = {{key = 'F9'}}, down = iCommandViewNavy, name = _('F9 Ship view'), category = _('View')},
{combos = {{key = 'F9', reformers = {'LAlt'}}}, down = iCommandViewLndgOfficer, name = _('F9 Landing signal officer view'), category = _('View')},
{combos = {{key = 'F10'}}, down = iCommandViewAWACS, name = _('F10 Theater map view'), category = _('View')},
{combos = {{key = 'F10', reformers = {'LCtrl'}}}, down = iCommandViewAWACSJump, name = _('F10 Jump to theater map view over current point'), category = _('View')},
{combos = {{key = 'F11'}}, down = iCommandViewFree, name = _('F11 Airport free camera'), category = _('View')},
{combos = {{key = 'F11', reformers = {'LCtrl'}}}, down = iCommandViewFreeJump, name = _('F11 Jump to free camera'), category = _('View')},
{combos = {{key = 'F12'}}, down = iCommandViewStatic, name = _('F12 Static object view'), category = _('View')},
{combos = {{key = 'F12', reformers = {'LCtrl'}}}, down = iCommandViewMirage, name = _('F12 Civil traffic view'), category = _('View')},
{combos = {{key = 'F12', reformers = {'LShift'}}}, down = iCommandViewLocomotivesToggle, name = _('F12 Trains/cars toggle'), category = _('View')},

-- View Cockpit
{combos = {{key = 'Num0'}}, down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = _('Cockpit panel view in'), category = _('View Cockpit')},
{combos = {{key = 'Num0', reformers = {'RCtrl'}}}, down = iCommandViewTempCockpitToggle, name = _('Cockpit panel view toggle'), category = _('View Cockpit')},
--// Save current cockpit camera angles for fast numpad jumps  
{combos = {{key = 'Num0', reformers = {'RAlt'}}}, down = iCommandViewSaveAngles, name = _('Save Cockpit Angles'), category = _('View Cockpit')},
{combos = {{key = 'Num8', reformers = {'RShift'}}}, pressed = iCommandViewUp, up = iCommandViewStop, name = _('View up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RShift'}}}, pressed = iCommandViewDown, up = iCommandViewStop, name = _('View down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RShift'}}}, pressed = iCommandViewLeft, up = iCommandViewStop, name = _('View left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RShift'}}}, pressed = iCommandViewRight, up = iCommandViewStop, name = _('View right'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RShift'}}}, pressed = iCommandViewUpRight, up = iCommandViewStop, name = _('View up right'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RShift'}}}, pressed = iCommandViewDownRight, up = iCommandViewStop, name = _('View down right'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RShift'}}}, pressed = iCommandViewDownLeft, up = iCommandViewStop, name = _('View down left'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RShift'}}}, pressed = iCommandViewUpLeft, up = iCommandViewStop, name = _('View up left'), category = _('View Cockpit')},

{combos = {{key = '1'}}, down = device_commands.Button_1, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Pilot Seat'), category = _('View Cockpit')},
{combos = {{key = '2'}}, down = device_commands.Button_2, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Copilot Seat'), category = _('View Cockpit')},
{combos = {{key = '3'}}, down = device_commands.Button_3, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Technician Seat'), category = _('View Cockpit')},
--{combos = {{key = '4'}}, down = device_commands.Button_4, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Gunner Seat'), category = _('View Cockpit')},

{combos = {{key = ']', reformers = {'LShift'}}}, down = iCommandViewFastKeyboard, name = _('Fast cockpit keyboard'), category = _('View Cockpit')},
{combos = {{key = ']', reformers = {'LCtrl'}}}, down = iCommandViewSlowKeyboard, name = _('Slow cockpit keyboard'), category = _('View Cockpit')},
{combos = {{key = ']', reformers = {'LAlt'}}}, down = iCommandViewNormalKeyboard, name = _('Normal cockpit keyboard speed'), category = _('View Cockpit')},
{combos = {{key = '[', reformers = {'LShift'}}}, down =  iCommandViewFastMouse, name = _('Fast cockpit mouse'), category = _('View Cockpit')},
{combos = {{key = '[', reformers = {'LCtrl'}}}, down = iCommandViewSlowMouse, name = _('Slow cockpit mouse'), category = _('View Cockpit')},
{combos = {{key = '[', reformers = {'LAlt'}}}, down = iCommandViewNormalMouse, name = _('Normal cockpit mouse speed'), category = _('View Cockpit')},

{combos = {{key = 'Num8', reformers = {'RCtrl'}}}, down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Camera view up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RCtrl'}}}, down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Camera view down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RCtrl'}}}, down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Camera view left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RCtrl'}}}, down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Camera view right'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RCtrl'}}}, down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Camera view up-left'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RCtrl'}}}, down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Camera view down-left'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RCtrl'}}}, down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Camera view up-right'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RCtrl'}}}, down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Camera view down-right'), category = _('View Cockpit')},
--{combos = {{key = 'F1', reformers = {'RAlt'}}}, down = iCommandViewPanToggle, name = _('Camera pan mode toggle'), category = _('View Cockpit')},

{combos = {{key = 'Num8', reformers = {'RAlt'}}}, down = iCommandViewCameraUpSlow, name = _('Camera view up slow'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RAlt'}}}, down = iCommandViewCameraDownSlow, name = _('Camera view down slow'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RAlt'}}}, down = iCommandViewCameraLeftSlow, name = _('Camera view left slow'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RAlt'}}}, down = iCommandViewCameraRightSlow, name = _('Camera view right slow'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RAlt'}}}, down = iCommandViewCameraUpLeftSlow, name = _('Camera view up-left slow'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RAlt'}}}, down = iCommandViewCameraDownLeftSlow, name = _('Camera view down-left slow'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RAlt'}}}, down = iCommandViewCameraDownRight, name = _('Camera view up-right slow'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RAlt'}}}, down = iCommandViewCameraUpRightSlow, name = _('Camera view down-right slow'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RShift'}}}, down = iCommandViewCameraCenter, name = _('Center camera view'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RCtrl'}}}, down = iCommandViewCameraReturn, name = _('Return camera'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RAlt'}}}, down = iCommandViewCameraBaseReturn, name = _('Return camera base'), category = _('View Cockpit')},

{combos = {{key = 'Num0', reformers = {'LWin'}}}, down = iCommandViewSnapView0, up = iCommandViewSnapViewStop, name = _('Snap View 0'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'LWin'}}}, down = iCommandViewSnapView1, up = iCommandViewSnapViewStop, name = _('Snap View 1'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'LWin'}}}, down = iCommandViewSnapView2, up = iCommandViewSnapViewStop, name = _('Snap View 2'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'LWin'}}}, down = iCommandViewSnapView3, up = iCommandViewSnapViewStop, name = _('Snap View 3'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'LWin'}}}, down = iCommandViewSnapView4, up = iCommandViewSnapViewStop, name = _('Snap View 4'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'LWin'}}}, down = iCommandViewSnapView5, up = iCommandViewSnapViewStop, name = _('Snap View 5'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'LWin'}}}, down = iCommandViewSnapView6, up = iCommandViewSnapViewStop, name = _('Snap View 6'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'LWin'}}}, down = iCommandViewSnapView7, up = iCommandViewSnapViewStop, name = _('Snap View 7'), category = _('View Cockpit')},
{combos = {{key = 'Num8', reformers = {'LWin'}}}, down = iCommandViewSnapView8, up = iCommandViewSnapViewStop, name = _('Snap View 8'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'LWin'}}}, down = iCommandViewSnapView9, up = iCommandViewSnapViewStop, name = _('Snap View 9'), category = _('View Cockpit')},

{combos = {{key = 'F1', reformers = {'LWin'}}} , down = iCommandViewPitHeadOnOff, name = _('Head shift movement on / off'), category = _('View Cockpit')},

{combos = {{key = 'Num/', reformers = {'RShift'}}}, pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},
{combos = {{key = 'Num*', reformers = {'RShift'}}}, pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},

-- Cockpit Camera Motion (Передвижение камеры в кабине)
{combos = {{key = 'Num8', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
{combos = {{key = 'Num*', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
{combos = {{key = 'Num/', reformers = {'RCtrl','RShift'}}, {key = 'Num-', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RCtrl','RShift'}}}, down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},

-- External Cargo
{combos = {{key = 'C', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.CARGO_CAM, value_down = 1, value_up = 0, name = _('External Cargo Camera On/Off'), 	category = _("External Cargo")},
{combos = {{key = 'L', reformers = {'RCtrl','RShift'}}}, down = iCommandExtCargoHook, name = _('External Cargo Hook/Unhook'), 	category = _("External Cargo")},
{combos = {{key = 'K', reformers = {'RCtrl','RShift'}}}, down = iCommandExternalCargoAutounhook, name = _('External Cargo Autounhook'),	category = _("External Cargo")},

-- View Extended
{combos = {{key = 'J', reformers = {'LShift'}}}, down = iCommandViewCameraJiggle, name = _('Camera jiggle toggle'), category = _('View Extended')},
{combos = {{key = 'K', reformers = {'LAlt'}}}, down = iCommandViewKeepTerrain, name = _('Keep terrain camera altitude'), category = _('View Extended')},
{combos = {{key = 'Num+', reformers = {'RCtrl'}}}, down = iCommandViewPlus, name = _('Toggle tracking fire weapon'), category = _('View Extended')},
{combos = {{key = 'F', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
{combos = {{key = 'D', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
{combos = {{key = 'A', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},

-- View Padlock
{combos = {{key = 'Num.'}}, down = iCommandViewLock, name = _('Lock view (cycle padlock)'), category = _('View Padlock')},
{combos = {{key = 'NumLock'}}, down = iCommandViewUnlock, name = _('Unlock view (stop padlock)'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RShift'}}}, down = iCommandAllMissilePadlock, name = _('All missiles padlock'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RAlt'}}}, down = iCommandThreatMissilePadlock, name = _('Threat missile padlock'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RCtrl'}}}, down = iCommandViewTerrainLock, name = _('Lock terrain view'), category = _('View Padlock')},


--Ins Engines Start-Up Control Panel and levers
{combos = {{key = 'Home'}}, down = iCommandHelicopter_Selected_Engine_start, up = iCommandHelicopter_Selected_Engine_start_up, name = _('Start-up engine'), category = _('Ins Engines start-up control panel and levers')},
{combos = {{key = 'Home', reformers = {'RAlt'}}}, down = iCommandHelicopter_Selected_Engine_interrupt_start, up = iCommandHelicopter_Selected_Engine_interrupt_start_up, name = _('Interrupt start-up sequence'), category = _('Ins Engines start-up control panel and levers')},
{combos = {{key = 'Home', reformers = {'RShift'}}}, down = iCommandPlane_APU_Start, up = iCommandPlane_APU_Off, name = _('Start APU button'), category = _('Ins Engines start-up control panel and levers')},
{combos = {{key = 'End'}}, down = iCommandHelicopter_APU_stop, up = iCommandHelicopter_APU_stop_up, name = _('Stop APU button'), category = _('Ins Engines start-up control panel and levers')},
{combos = {{key = 'E'}}, down = iCommandHelicopter_Engine_Select, name = _('Engine selector'), category = _('Ins Engines start-up control panel and levers')},
{combos = {{key = 'E', reformers = {'LAlt'}}}, down = iCommandEngineLaunchMethod, name = _('Engine Startup/Crank/False Start selector'), category = _('Ins Engines start-up control panel and levers')},

{combos = {{key = 'Home', reformers = {'RCtrl'}}}, cockpit_device_id = devices.ENGINE_INTERFACE, down = device_commands.Button_60, value_down = 1.0, name = _('Throttle Up'), category = _('Ins Engines start-up control panel and levers')},
{combos = {{key = 'End', reformers = {'RCtrl'}}}, cockpit_device_id = devices.ENGINE_INTERFACE, down = device_commands.Button_60, value_down = -1.0, name = _('Throttle Down'), category = _('Ins Engines start-up control panel and levers')},
{combos = {{key = 'PageUp', reformers = {'RAlt'}}}, cockpit_device_id = devices.ENGINE_INTERFACE, down = device_commands.Button_58, value_down = 1.0, name = _('Left Throttle up (Idle-Medium-Auto-Full)'), category = _('Ins Engines start-up control panel and levers')},
{combos = {{key = 'PageDown', reformers = {'RAlt'}}}, cockpit_device_id = devices.ENGINE_INTERFACE, down = device_commands.Button_58, value_down = -1.0, name = _('Left Throttle down (Idle-Medium-Auto-Full)'), category = _('Ins Engines start-up control panel and levers')},
{combos = {{key = 'PageUp', reformers = {'RShift'}}}, cockpit_device_id = devices.ENGINE_INTERFACE, down = device_commands.Button_59, value_down = 1.0, name = _('Right Throttle up (Idle-Medium-Auto-Full)'), category = _('Ins Engines start-up control panel and levers')},
{combos = {{key = 'PageDown', reformers = {'RShift'}}}, cockpit_device_id = devices.ENGINE_INTERFACE, down = device_commands.Button_59, value_down = -1.0,  name = _('Right Throttle down (Idle-Medium-Auto-Full)'), category = _('Ins Engines start-up control panel and levers')},

{combos = {{key = 'PageUp', reformers = {'RCtrl'}}}, down = iCommandHelicopter_Left_Engine_Lock, name = _('Cut-off valve left engine'), category = _('Ins Engines start-up control panel and levers')},
{combos = {{key = 'PageDown', reformers = {'RCtrl'}}}, down = iCommandHelicopter_Right_Engine_Lock, name = _('Cut-off valve right engine'), category = _('Ins Engines start-up control panel and levers')},
{combos = {{key = 'PageUp'}}	, down = iCommandThrottleIncrease,	up = iCommandThrottleStop,	name = _('Correction increase'), category = _('Ins Collective Stick')},
{combos = {{key = 'PageDown'}}	, down = iCommandThrottleDecrease,	up = iCommandThrottleStop,	name = _('Correction decrease'), category = _('Ins Collective Stick')},


-- Labels
{combos = {{key = 'F10', reformers = {'LShift'}}}, down = iCommandMarkerState, name = _('All Labels'), category = _('Labels')},
{combos = {{key = 'F2', reformers = {'LShift'}}}, down = iCommandMarkerStatePlane, name = _('Aircraft Labels'), category = _('Labels')},
{combos = {{key = 'F6', reformers = {'LShift'}}}, down = iCommandMarkerStateRocket, name = _('Missile Labels'), category = _('Labels')},
{combos = {{key = 'F9', reformers = {'LShift'}}}, down = iCommandMarkerStateShip, name = _('Vehicle & Ship Labels'), category = _('Labels')},

--- Kneeboard
{combos = {{key = ']'}}						   , 	down = device_commands.Button_1, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Next Page')  , category = _('Kneeboard')},
{combos = {{key = '['}}						   , 	down = device_commands.Button_2, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{combos = {{key = 'K', reformers = {'RShift'}}}, 	down = iCommandPlaneShowKneeboard,	name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{combos = {{key = 'K'}}						   , 	down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{combos = {{key = 'K', reformers = {'RCtrl'}}} , 	down = device_commands.Button_3	, cockpit_device_id = devices.KNEEBOARD,value_down = 1.0, name = _('Kneeboard current position mark point')  , category = _('Kneeboard')},

--Night Vision Goggles
{combos = {{key = 'H', reformers = {'RShift'}}}		   , 	down    = iCommandViewNightVisionGogglesOn   , name = _('Night Vision Goggles')   , category = _('Sensors')},
{combos = {{key = 'H', reformers = {'RShift','RCtrl'}}}, 	pressed = iCommandPlane_Helmet_Brightess_Up  , name = _('Night Vision Goggles Gain Up')  , category = _('Sensors')},
{combos = {{key = 'H', reformers = {'RShift','RAlt'}}} , 	pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Night Vision Goggles Gain Down'), category = _('Sensors')},

-- Circuit breakers
{combos = {{key = '1', reformers = {'RCtrl','RShift'}}}, down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Group 1 CB switcher'), category = _('Overhead CB panel')},
{combos = {{key = '2', reformers = {'RCtrl','RShift'}}}, down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Group 2 CB switcher'), category = _('Overhead CB panel')},
{combos = {{key = '3', reformers = {'RCtrl','RShift'}}}, down = device_commands.Button_24, up = device_commands.Button_24, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Group 3 CB switcher'), category = _('Overhead CB panel')},
{combos = {{key = '4', reformers = {'RCtrl','RShift'}}}, down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Group 4 CB switcher'), category = _('Overhead CB panel')},
{combos = {{key = '5', reformers = {'RCtrl','RShift'}}}, down = device_commands.Button_26, up = device_commands.Button_26, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Group 5 CB switcher'), category = _('Overhead CB panel')},
{combos = {{key = '6', reformers = {'RCtrl','RShift'}}}, down = device_commands.Button_27, up = device_commands.Button_27, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Group 6 CB switcher'), category = _('Overhead CB panel')},
{combos = {{key = '7', reformers = {'RCtrl','RShift'}}}, down = device_commands.Button_28, up = device_commands.Button_28, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Group 7 CB switcher'), category = _('Overhead CB panel')},
{combos = {{key = '8', reformers = {'RCtrl','RShift'}}}, down = device_commands.Button_29, up = device_commands.Button_29, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Group 8 CB switcher'), category = _('Overhead CB panel')},
{combos = {{key = '9', reformers = {'RCtrl','RShift'}}}, down = device_commands.Button_30, up = device_commands.Button_30, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Group 9 CB switcher'), category = _('Overhead CB panel')},


-- Ins Countermeasures dispensers (щиток УВ-26)
{combos = {{key = 'D'}}, down = iCommand_UV26_Power, name = _('UV-26 Power'), category = _('Ins Countermeasures dispensers UV-26')},
{combos = {{key = 'Insert'}}, down = iCommandPlaneCMDDispence,  up = iCommandPlaneCMDDispenceOff, name = _('UV-26 Start dispensing'), category = _('Ins Countermeasures dispensers UV-26')},
{combos = {{key = 'Delete'}}, down = iCommandPlaneCMDDispenceStop,  up = iCommandPlaneCMDDispenceStopOff, name = _('UV-26 Stop dispensing'), category = _('Ins Countermeasures dispensers UV-26')},
{combos = {{key = 'Insert', reformers = {'RShift'}}}, down = iCommandPlaneCMDChangeRippleQuantity,  up = iCommandPlaneCMDChangeRippleQuantityOff, name = _('UV-26 Number of flare sequences'), category = _('Ins Countermeasures dispensers UV-26')},
{combos = {{key = 'Insert', reformers = {'RAlt'}}}, down = iCommandPlaneCMDChangeRippleInterval,    up = iCommandPlaneCMDChangeRippleIntervalOff, name = _('UV-26 Delay between sequences'), category = _('Ins Countermeasures dispensers UV-26')},
{combos = {{key = 'Insert', reformers = {'RCtrl'}}}, down = iCommandPlaneCMDChangeBurstAmount,  up = iCommandPlaneCMDChangeBurstAmountOff, name = _('UV-26 Number of flares in sequence'), category = _('Ins Countermeasures dispensers UV-26')},
{combos = {{key = 'Delete', reformers = {'RCtrl'}}}, down = iCommandPlaneCMDCancelCurrentProgram, up = iCommandPlaneCMDCancelCurrentProgramOff, name = _('UV-26 Reset current program'), category = _('Ins Countermeasures dispensers UV-26')},
{combos = {{key = ']', reformers = {'RAlt','RWin'}}}, down = device_commands.Button_14, cockpit_device_id = devices.UV_26, value_down = 1.0, name = _('UV-26 Change dispensing board Both-Right'), category = _('Ins Countermeasures dispensers UV-26')},
{combos = {{key = '[', reformers = {'RAlt','RWin'}}}, down = device_commands.Button_14, cockpit_device_id = devices.UV_26, value_down = -1.0, name = _('UV-26 Change dispensing board Left-Both'), category = _('Ins Countermeasures dispensers UV-26')},
{combos = {{key = ']', reformers = {'RAlt','RShift'}}}, down = iCommandPlaneCMDShowAmountOrProgram, name = _('UV-26 Amount flares counter / Programming'), category = _('Ins Countermeasures dispensers UV-26')},

-- Ins Cyclick Stick
{combos = {{key = 'Up'}},    pressed = iCommandPlaneUpStart    , up = iCommandPlaneUpStop  ,   name = _('Cyclic nose down'), category = _('Ins Cyclic Stick')},
{combos = {{key = 'Down'}},  pressed = iCommandPlaneDownStart  , up = iCommandPlaneDownStop,   name = _('Cyclic nose up'), category = _('Ins Cyclic Stick')},
{combos = {{key = 'Left'}},  pressed = iCommandPlaneLeftStart  , up = iCommandPlaneLeftStop,   name = _('Cyclic bank left'), category = _('Ins Cyclic Stick')},
{combos = {{key = 'Right'}}, pressed = iCommandPlaneRightStart , up = iCommandPlaneRightStop,  name = _('Cyclic bank right'), category = _('Ins Cyclic Stick')},

{combos = {{key = 'Space'}}, down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = _('Release weapons'), category = _('Ins Cyclic Stick')},
{combos = {{key = '\\', 	 reformers = {'RAlt'}}},  down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.SPU_7, value_down = 1.0, value_up = 0.0, name = _("Radio trigger RADIO"), category = _('Ins Cyclic Stick')},
{combos = {{key = 'Space',   reformers = {'RShift'}}}, down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.SPU_7, value_down = 0.5, value_up = 0.0, name = _("Radio trigger ICS"), category = _('Ins Cyclic Stick')},

{combos = {{key = 'T'}},     					down = iCommandPlaneTrimOn, up = iCommandPlaneTrimOff, name = _('Trimmer'), category = _('Ins Cyclic Stick')},
{combos = {{key = 'T', reformers = {'LCtrl'}}}, down = iCommandPlaneTrimCancel, name = _('Trimmer reset'), category = _('Ins Cyclic Stick')},

{combos = {{key = 'W'}}, down = iCommandPlaneWheelBrakeOn, pressed = iCommandPlaneWheelBrakeOn,up = iCommandPlaneWheelBrakeOff, name = _('Wheel brake (press and hold)'), category = _('Ins Cyclic Stick')},
{combos = {{key = 'W', reformers = {'LShift'}}}, down = iCommandPlaneWheelParkingBrake, name = _('Wheel brake parking'), category = _('Ins Cyclic Stick')},

{combos = {{key = 'A', reformers = {'LWin', 'LShift'}}}, down = iCommandAutopilotEmergOFF, name = _('Autopilot Cut Off'), category = _('Ins Cyclic Stick')},

-- Ins Collective Stick
{combos = {{key = 'Num+'}}, down = iCommandPlaneCollectiveIncrease, pressed = iCommandPlaneCollectiveIncrease, up = iCommandPlaneCollectiveStop, name = _('Collective up'), category = _('Ins Collective Stick')},
{combos = {{key = 'Num-'}}, down = iCommandPlaneCollectiveDecrease, pressed = iCommandPlaneCollectiveDecrease, up = iCommandPlaneCollectiveStop, name = _('Collective down'), category = _('Ins Collective Stick')},

{combos = {{key = 'Num+', reformers = {'RAlt'}}}, down = iCommandPlane_ReadjustFreeTurbineRPM_Up, up = iCommandPlane_ReadjustFreeTurbineRPM_Up, value_down = 1, value_up = 0, name = _('Readjust Free Turbine RPM to Nominal'), category = _('Ins Collective Stick')},
{combos = {{key = 'Num-', reformers = {'RAlt'}}}, down = iCommandPlane_ReadjustFreeTurbineRPM_Down, up = iCommandPlane_ReadjustFreeTurbineRPM_Down, value_down = 1, value_up = 0, name = _('Readjust Free Turbine RPM to Low'), category = _('Ins Collective Stick')},
{combos = {{key = 'F'}}, down = iCommandHelicopter_CollectiveStopper_Up, up = iCommandHelicopter_CollectiveStopper_Down, name = _('Collective brake - Assign altitude lever'), category = _('Ins Collective Stick')},


{combos = {{key = 'L', reformers = {'LShift'}}}, down = device_commands.Button_18, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1, name = _('Left Head Light - Power'), category = _('Systems')},
{combos = {{key = '7', reformers = {'LShift'}}}, down = device_commands.Button_20, up = device_commands.Button_20, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1, value_up = 0, name = _('Left Head Light - down'), category = _('Ins Collective Stick')},
{combos = {{key = '8', reformers = {'LShift'}}}, down = device_commands.Button_20, up = device_commands.Button_20, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 2, value_up = 0, name = _('Left Head Light - up'), category = _('Ins Collective Stick')},
{combos = {{key = '9', reformers = {'LShift'}}}, down = device_commands.Button_20, up = device_commands.Button_20, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 3, value_up = 0, name = _('Left Head Light - left'), category = _('Ins Collective Stick')},
{combos = {{key = '0', reformers = {'LShift'}}}, down = device_commands.Button_20, up = device_commands.Button_20, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 4, value_up = 0, name = _('Left Head Light - right'), category = _('Ins Collective Stick')},

{combos = {{key = 'L', reformers = {'RShift'}}}, down = device_commands.Button_19, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1, name = _('Right Head Light - Power'), category = _('Systems')},
{combos = {{key = '7', reformers = {'RShift'}}}, down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1, value_up = 0, name = _('Right Head Light - down'), category = _('Ins Collective Stick')},
{combos = {{key = '8', reformers = {'RShift'}}}, down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 2, value_up = 0, name = _('Right Head Light - up'), category = _('Ins Collective Stick')},
{combos = {{key = '9', reformers = {'RShift'}}}, down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 3, value_up = 0, name = _('Right Head Light - left'), category = _('Ins Collective Stick')},
{combos = {{key = '0', reformers = {'RShift'}}}, down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 4, value_up = 0, name = _('Right Head Light - right'), category = _('Ins Collective Stick')},

{combos = {{key = 'L', reformers = {'RCtrl'}}}, down = device_commands.Button_5, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1, name = _('Steering Light - Power'), category = _('Systems')},

--Ins Rudder
{combos = {{key = 'Z'}}, down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Rudder left'), category = _('Ins Rudder')},
{combos = {{key = 'X'}}, down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Rudder right'), category = _('Ins Rudder')},


--Ins Radio R-828 VHF-1
{down = iCommandPlane_R_828_Channel_next, name = _('R-828 Channel selector next'), category = _('Radio R-828')},
{down = iCommandPlane_R_828_Channel_prevous, name = _('R-828 Channel selector previous'), category = _('Radio R-828')},
{down = iCommandPlane_R_828_Noise_Reductor_on_off, name = _('R-828 Squelch'), category = _('Radio R-828')},
{down = iCommandPlane_R_828_ASU, up = iCommandPlane_R_828_ASU_up, name = _('R-828 Tuner button'), category = _('Radio R-828')},
{down = iCommandPlane_R_828_volume_up, name = _('R-828 Volume up'), category = _('Radio R-828')},
{down = iCommandPlane_R_828_volume_down, name = _('R-828 Volume down'), category = _('Radio R-828')},

-- Systems
{combos = {{key = 'C', reformers = {'RCtrl'}}}, down = iCommandPlaneFonar, name = _('Cockpit door open/close'), category = _('Systems')},
{combos = {{key = 'E', reformers = {'LCtrl'}}}, down = iCommandPlaneEject, name = _('Leave Helicopter (3 times)'), category = _('Systems')},
--{combos = {{key = '/', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_SPU9_radio_change, name = _('SPU-7 Radio communicator selector'), category = _('Systems')},

-- Radio Communications
{combos = {{key = '\\'}}, down = iCommandToggleCommandMenu, name = _('Communication menu'), category = _('Radio Communications')},
{combos = {{key = 'E', reformers = {'LWin'}}}, down = iCommandPlaneDoAndHome, name = _('Flight - Complete mission and RTB'), category = _('Radio Communications')},
{combos = {{key = 'T', reformers = {'LWin'}}}, down = iCommandPlaneFormation, name = _('Toggle formation'), category = _('Radio Communications')},
{combos = {{key = 'Y', reformers = {'LWin'}}}, down = iCommandPlaneJoinUp, name = _('Join up formation'), category = _('Radio Communications')},
{combos = {{key = 'Q', reformers = {'LWin'}}}, down = iCommandPlaneAttackMyTarget, name = _('Attack my target'), category = _('Radio Communications')},
{combos = {{key = 'W', reformers = {'LWin'}}}, down = iCommandPlaneCoverMySix, name = _('Cover me'), category = _('Radio Communications')},
{combos = {{key = 'G', reformers = {'LWin'}}}, down = iCommandPlane_EngageGroundTargets, name = _('Flight - Attack ground targets'), category = _('Radio Communications')},
{combos = {{key = 'D', reformers = {'LWin'}}}, down = iCommandPlane_EngageAirDefenses, name = _('Flight - Attack air defenses'), category = _('Radio Communications')},
{combos = {{key = '\\', reformers = {'LShift'}}}, down = ICommandSwitchDialog, name = _('Switch dialog'), category = _('Radio Communications')},

--Left pilot dashboard
{combos = {{key = 'N', reformers = {'LCtrl'}}},	pressed = device_commands.Button_5, cockpit_device_id = devices.AGB_3K_LEFT, value_pressed = -0.5, name = _('Attitude Indicator Left, Pitch Decrease'), category = _('Left Dash')},
{combos = {{key = 'N', reformers = {'LShift'}}},pressed = device_commands.Button_5, cockpit_device_id = devices.AGB_3K_LEFT, value_pressed = 0.5, name = _('Attitude Indicator Left, Pitch Increase'), category = _('Left Dash')},
{combos = {{key = 'N', reformers = {'LCtrl','LShift'}}},  down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id = devices.AGB_3K_LEFT, value_down = 1, value_up = 0, name = _('Attitude Indicator Left, Cage'), category = _('Left Dash')},

{combos = {{key = 'B', reformers = {'LCtrl'}}},	pressed = device_commands.Button_2, cockpit_device_id = devices.BAR_ALTIMETER_L, value_pressed = -1.0, name = _('Altimeter Left, Pressure Decrease'), category = _('Left Dash')},
{combos = {{key = 'B', reformers = {'LShift'}}},pressed = device_commands.Button_2, cockpit_device_id = devices.BAR_ALTIMETER_L, value_pressed = 1.0, name = _('Altimeter Left, Pressure Increase'), category = _('Left Dash')},

{combos = {{key = 'H', reformers = {'LCtrl'}}},	pressed = device_commands.Button_2, cockpit_device_id = devices.HSI_L, value_pressed = -1.0, name = _('HSI Left, Course Decrease'), category = _('Left Dash')},
{combos = {{key = 'H', reformers = {'LShift'}}},pressed = device_commands.Button_2, cockpit_device_id = devices.HSI_L, value_pressed = 1.0, name = _('HSI Left, Course Increase'), category = _('Left Dash')},
{combos = {{key = 'H', reformers = {'LAlt'}}},down = device_commands.Button_4, cockpit_device_id = devices.HSI_L, value_down = 1.0, name = _('HSI Left, ARC-9/ARC-UD Select'), category = _('Left Dash')},

{combos = {{key = '.', reformers = {'LShift'}}}, pressed = iCommandRALT_DangerousAltitudeRotaryRight, name = _('Radar Altimeter, dangerous ALT set rotary right'), category = _('Left Dash')},
{combos = {{key = ',', reformers = {'LShift'}}}, pressed = iCommandRALT_DangerousAltitudeRotaryLeft, name = _('Radar Altimeter, dangerous ALT set rotary left'), category = _('Left Dash')},
{combos = {{key = 'R', reformers = {'LAlt','LShift'}}}, down = iCommandRALT_Test, up = iCommandRALT_Test_up, name = _('Radar Altimeter, Test button'), category = _('Left Dash')},

{combos = {{key = 'A', reformers = {'LAlt','LShift'}}}, down = device_commands.Button_2, value_down = 1, cockpit_device_id = devices.FM_PROXY, name = _('Static Pressure System Selector, Left'), category = _('Left Dash')},
{combos = {{key = 'S', reformers = {'LAlt','LShift'}}}, down = device_commands.Button_2, value_down = -1, cockpit_device_id = devices.FM_PROXY, name = _('Static Pressure System Selector, Right'), category = _('Left Dash')},

--Right pilot dashboard
{combos = {{key = 'N', reformers = {'RCtrl'}}},  pressed = device_commands.Button_5, cockpit_device_id = devices.AGB_3K_RIGHT, value_pressed = -0.5, name = _('Attitude Indicator Right, Pitch Decrease'), category = _('Right Dash')},
{combos = {{key = 'N', reformers = {'RShift'}}}, pressed = device_commands.Button_5, cockpit_device_id = devices.AGB_3K_RIGHT, value_pressed = 0.5, name = _('Attitude Indicator Right, Pitch Increase'), category = _('Right Dash')},
{combos = {{key = 'N', reformers = {'RCtrl','RShift'}}},   down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id = devices.AGB_3K_RIGHT, value_down = 1, value_up = 0, name = _('Attitude Indicator Right, Cage'), category = _('Right Dash')},

{combos = {{key = 'B', reformers = {'RCtrl'}}},	pressed = device_commands.Button_2, cockpit_device_id = devices.BAR_ALTIMETER_R, value_pressed = -1.0, name = _('Altimeter Right, Pressure Decrease'), category = _('Right Dash')},
{combos = {{key = 'B', reformers = {'RShift'}}},pressed = device_commands.Button_2, cockpit_device_id = devices.BAR_ALTIMETER_R, value_pressed = 1.0, name = _('Altimeter Right, Pressure Increase'), category = _('Right Dash')},

{combos = {{key = 'H', reformers = {'RCtrl'}}},	pressed = device_commands.Button_2, cockpit_device_id = devices.HSI_R, value_pressed = -1.0, name = _('HSI Right, Course Decrease'), category = _('Right Dash')},
{combos = {{key = 'H', reformers = {'RCtrl','RWin'}}},pressed = device_commands.Button_2, cockpit_device_id = devices.HSI_R, value_pressed = 1.0, name = _('HSI Right, Course Increase'), category = _('Right Dash')},

{combos = {{key = 'C', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandMechClock_LeftLever_Down, up = iCommandMechClock_LeftLever_Down_up, name = _('Mech Clock, Left lever Down'), category = _('Right Dash')},
{combos = {{key = 'M', reformers = {'RShift'}}}, down = iCommandMechClock_LeftLever_Up, name = _('Mech Clock, Left lever Up'), category = _('Right Dash')},
{combos = {{key = '.', reformers = {'RAlt'}}}, pressed = iCommandMechClock_LeftLever_TurnRight, name = _('Mech Clock, Left lever turning right'), category = _('Right Dash')},
{combos = {{key = ',', reformers = {'RAlt'}}}, pressed = iCommandMechClock_LeftLever_TurnLeft, name = _('Mech Clock, Left lever turning left'), category = _('Right Dash')},
{combos = {{key = 'C', reformers = {'RShift','RAlt'}}}, down = iCommandMechClock_RightLever_Down, up = iCommandMechClock_RightLever_Down_up, name = _('Mech Clock, Right lever Down'), category = _('Right Dash')},
{combos = {{key = ',', reformers = {'RCtrl','RShift'}}}, down = iCommandMechClock_RightLever_Rotate_left, name = _('Mech Clock, Right lever Rotate left'), category = _('Right Dash')},
{combos = {{key = '.', reformers = {'RCtrl','RShift'}}}, down = iCommandMechClock_RightLever_Rotate_right, name = _('Mech Clock, Right lever Rotate right'), category = _('Right Dash')},

{combos = {{key = 'V', reformers = {'RCtrl','RShift'}}}, down = device_commands.Button_13, cockpit_device_id = devices.FUELSYS_INTERFACE, value_down = -1, name = _('Fuel Meter, Rotary Left'), category = _('Right Dash')},
{combos = {{key = 'B', reformers = {'RCtrl','RShift'}}}, down = device_commands.Button_13, cockpit_device_id = devices.FUELSYS_INTERFACE, value_down = 1, name = _('Fuel Meter, Rotary Right'), category = _('Right Dash')},

-- Red Lights System
{pressed = device_commands.Button_15, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = 1, name = _('Left Red Lights Group 1 Reostat, CW'), category = _("Red Lights System")},
{pressed = device_commands.Button_15, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -1, name = _('Left Red Lights Group 1 Reostat, CCW'), category = _("Red Lights System")},
{pressed = device_commands.Button_16, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = 1, name = _('Left Red Lights Group 2 Reostat, CW'), category = _("Red Lights System")},
{pressed = device_commands.Button_16, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -1, name = _('Left Red Lights Group 2 Reostat, CCW'), category = _("Red Lights System")},
{pressed = device_commands.Button_17, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = 1, name = _('Right Red Lights Group 1 Reostat, CW'), category = _("Red Lights System")},
{pressed = device_commands.Button_17, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -1, name = _('Right Red Lights Group 1 Reostat, CCW'), category = _("Red Lights System")},
{pressed = device_commands.Button_18, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = 1, name = _('Right Red Lights Group 2 Reostat, CW'), category = _("Red Lights System")},
{pressed = device_commands.Button_18, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -1, name = _('Right Red Lights Group 2 Reostat, CCW'), category = _("Red Lights System")},
{pressed = device_commands.Button_19, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = 1, name = _('Flight Engineer Red Lights Group 1 Reostat, CW'), category = _("Red Lights System")},
{pressed = device_commands.Button_19, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -1, name = _('Flight Engineer Red Lights Group 1 Reostat, CCW'), category = _("Red Lights System")},
{pressed = device_commands.Button_20, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = 1, name = _('Flight Engineer Red Lights Group 2 Reostat, CW'), category = _("Red Lights System")},
{pressed = device_commands.Button_20, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -1, name = _('Flight Engineer Red Lights Group 2 Reostat, CCW'), category = _("Red Lights System")},
{pressed = device_commands.Button_21, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = 1, name = _('Lights 5.5V Reostat, CW'), category = _("Red Lights System")},
{pressed = device_commands.Button_21, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -1, name = _('Lights 5.5V Reostat, CCW'), category = _("Red Lights System")},

--Left electropanel's dash 
{down = device_commands.Button_12, cockpit_device_id = devices.LIGHT_SYSTEM, value_down = 1, name = _('Left Plafond Switch, Up'), category = _("Left Electropanel's Dash")},
{down = device_commands.Button_12, cockpit_device_id = devices.LIGHT_SYSTEM, value_down = -1, name = _('Left Plafond Switch, Down'), category = _("Left Electropanel's Dash")},
{combos = {{key = 'T', reformers = {'LAlt','LShift'}}},  down = device_commands.Button_6, cockpit_device_id = devices.SPUU_52, value_down = 1, name = _('SPUU-52, Power'), category = _("Left Electropanel's Dash")},
{combos = {{key = 'G', reformers = {'LAlt','LShift'}}},  down = device_commands.Button_6, cockpit_device_id = devices.AGB_3K_LEFT, value_down = 1, name = _('Attitude Indicator Left, Power'), category = _("Left Electropanel's Dash")},
{combos = {{key = 'F', reformers = {'LAlt','LShift'}}},  down = device_commands.Button_2, cockpit_device_id = devices.CORRECTION_INTERRUPT, value_down = 1, name = _('VK-53, Power'), category = _("Left Electropanel's Dash")},

--Right electropanel's dash 
{down = device_commands.Button_13, cockpit_device_id = devices.LIGHT_SYSTEM, value_down = 1, name = _('Right Plafond Switch, Up'), category = _("Right Electropanel's Dash")},
{down = device_commands.Button_13, cockpit_device_id = devices.LIGHT_SYSTEM, value_down = -1, name = _('Right Plafond Switch, Down'), category = _("Right Electropanel's Dash")},
{down = device_commands.Button_14, cockpit_device_id = devices.LIGHT_SYSTEM, value_down = 1, name = _('5.5 V Lights Switch, Power'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'P', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_6, cockpit_device_id = devices.AGB_3K_RIGHT, value_down = 1, name = _('Attitude Indicator Right, Power'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'P', reformers = {'RAlt','RCtrl','RShift'}}},  down = device_commands.Button_11, cockpit_device_id = devices.GMK1A, value_down = 1, name = _('Astrocompass, Power'), category = _("Right Electropanel's Dash")},

{combos = {{key = 'T', reformers = {'RAlt','RShift'}}},  down = device_commands.Button_2, cockpit_device_id = devices.DISS_15, value_down = 1, name = _('Doppler Navigator, Power'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'U', reformers = {'RAlt','RShift'}}},  down = device_commands.Button_8, cockpit_device_id = devices.GMK1A, value_down = 1, name = _('GMC, Power'), category = _("Right Electropanel's Dash")},

{combos = {{key = 'P', reformers = {'RCtrl','RShift'}}},  down = device_commands.Button_4, cockpit_device_id = devices.GMK1A, value_down = 1, name = _('GMC, Astrocompass Mode'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'O', reformers = {'RCtrl','RShift'}}},  down = device_commands.Button_4, cockpit_device_id = devices.GMK1A, value_down = 0, name = _('GMC, Gyrocompass Mode'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'I', reformers = {'RCtrl','RShift'}}},  down = device_commands.Button_4, cockpit_device_id = devices.GMK1A, value_down = -1, name = _('GMC, Magnetic Compass Mode'), category = _("Right Electropanel's Dash")},

{combos = {{key = 'U', reformers = {'RCtrl','RShift'}}},  down = device_commands.Button_9, cockpit_device_id = devices.GMK1A, value_down = 1, name = _('GMC, Nord/Souse Hemisphere'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'L', reformers = {'RCtrl','RShift'}}},  down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.GMK1A, value_down = 1, value_up = 0, name = _('GMC, Set Course Right'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'K', reformers = {'RCtrl','RShift'}}},  down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.GMK1A, value_down = -1, value_up = 0, name = _('GMC, Set Course Left'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'J', reformers = {'RCtrl','RShift'}}},  pressed = device_commands.Button_10, cockpit_device_id = devices.GMK1A, value_pressed =  0.5, name = _('GMC, Set Latitude Increase'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'H', reformers = {'RCtrl','RShift'}}},  pressed = device_commands.Button_10, cockpit_device_id = devices.GMK1A, value_pressed = -0.5, name = _('GMC, Set Latitude Decrease'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'Y', reformers = {'RCtrl','RShift'}}},  down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.GMK1A, value_down = 1, value_up = 0, name = _('GMC, Control 300'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'G', reformers = {'RCtrl','RShift'}}},  down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.GMK1A, value_down = -1, value_up = 0, name = _('GMC, Control 0'), category = _("Right Electropanel's Dash")},

{combos = {{key = 'L', reformers = {'RAlt','RShift'}}},  down = device_commands.Button_19, cockpit_device_id = devices.SPU_7, value_down = 1, name = _('Laryngophone'), category = _("Right Electropanel's Dash")},

--ARC-UD
{combos = {{key = 'C', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_1, cockpit_device_id = devices.ARC_UD, value_down = 0.0, name = _('ARC UD, Power Off'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'V', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_1, cockpit_device_id = devices.ARC_UD, value_down = 0.1, name = _('ARC UD, Narrow Band'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'B', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_1, cockpit_device_id = devices.ARC_UD, value_down = 0.2, name = _('ARC UD, Wide Band'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'N', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_1, cockpit_device_id = devices.ARC_UD, value_down = 0.3, name = _('ARC UD, Pulse Signal'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'M', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_1, cockpit_device_id = devices.ARC_UD, value_down = 0.4, name = _('ARC UD, Radio Compass'), category = _("Right Electropanel's Dash")},

{combos = {{key = '1', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_4, cockpit_device_id = devices.ARC_UD, value_down = 0.0, name = _('ARC UD, Channel 1'), category = _("Right Electropanel's Dash")},
{combos = {{key = '2', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_4, cockpit_device_id = devices.ARC_UD, value_down = 0.1, name = _('ARC UD, Channel 2'), category = _("Right Electropanel's Dash")},
{combos = {{key = '3', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_4, cockpit_device_id = devices.ARC_UD, value_down = 0.2, name = _('ARC UD, Channel 3'), category = _("Right Electropanel's Dash")},
{combos = {{key = '4', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_4, cockpit_device_id = devices.ARC_UD, value_down = 0.3, name = _('ARC UD, Channel 4'), category = _("Right Electropanel's Dash")},
{combos = {{key = '5', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_4, cockpit_device_id = devices.ARC_UD, value_down = 0.4, name = _('ARC UD, Channel 5'), category = _("Right Electropanel's Dash")},
{combos = {{key = '6', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_4, cockpit_device_id = devices.ARC_UD, value_down = 0.5, name = _('ARC UD, Channel 6'), category = _("Right Electropanel's Dash")},

{combos = {{key = 'Z', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_10, cockpit_device_id = devices.ARC_UD, value_down = 1.0, name = _('ARC UD, MW/DW'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'X', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_9, cockpit_device_id = devices.ARC_UD, value_down = 1.0, name = _('ARC UD, Sensitivity'), category = _("Right Electropanel's Dash")},

{combos = {{key = 'S', reformers = {'RAlt','RCtrl'}}},  pressed = device_commands.Button_11, cockpit_device_id = devices.ARC_UD, value_pressed =  0.5, name = _('ARC UD, Volume Increase'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'A', reformers = {'RAlt','RCtrl'}}},  pressed = device_commands.Button_11, cockpit_device_id = devices.ARC_UD, value_pressed = -0.5, name = _('ARC UD, Volume Decrease'), category = _("Right Electropanel's Dash")},

{combos = {{key = 'D', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_6, up = device_commands.Button_6, cockpit_device_id = devices.ARC_UD, value_down = 1, value_up = 0, name = _('ARC UD, Control'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'F', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id = devices.ARC_UD, value_down = 1, value_up = 0, name = _('ARC UD, Ant. Left'), category = _("Right Electropanel's Dash")},
{combos = {{key = 'G', reformers = {'RAlt','RCtrl'}}},  down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id = devices.ARC_UD, value_down = 1, value_up = 0, name = _('ARC UD, Ant. Right'), category = _("Right Electropanel's Dash")},

-- Central panel
-- Autopilot
{combos = {{key = 'A', reformers = {'LCtrl'}}}, down = device_commands.Button_3,up = device_commands.Button_3, value_down = 1, value_up = 0, cockpit_device_id = devices.AUTOPILOT,name = _('Autopilot Heading Channel On'), category = _('Central panel')},
{combos = {{key = 'A', reformers = {'LWin'}}}, down = device_commands.Button_2,up = device_commands.Button_2, value_down = 1, value_up = 0, cockpit_device_id = devices.AUTOPILOT,name = _('Autopilot Roll/Pitch Channel On'), category = _('Central panel')},
{combos = {{key = 'A', reformers = {'LAlt'}}}, down = device_commands.Button_1,up = device_commands.Button_1, value_down = 1, value_up = 0, cockpit_device_id = devices.AUTOPILOT,name = _('Autopilot Altitude Channel On'), category = _('Central panel')},
{combos = {{key = 'A', reformers = {'LWin', 'LCtrl'}}}, down = device_commands.Button_5,up = device_commands.Button_5, value_down = 1, value_up = 0, cockpit_device_id = devices.AUTOPILOT,name = _('Autopilot Heading Channel Off'), category = _('Central panel')},
{combos = {{key = 'A', reformers = {'LWin', 'LAlt'}}}, down = device_commands.Button_4,up = device_commands.Button_4, value_down = 1, value_up = 0, cockpit_device_id = devices.AUTOPILOT,name = _('Autopilot Altitude Channel Off'), category = _('Central panel')},

{combos = {{key = 'F', reformers = {'LAlt'}}}, down = device_commands.Button_6, up = device_commands.Button_6,  value_down = 1, value_up = 0, cockpit_device_id = devices.AUTOPILOT, name = _('Autopilot Altitude Control Up'), category = _('Central panel')},
{combos = {{key = 'V', reformers = {'LAlt'}}}, down = device_commands.Button_7, up = device_commands.Button_7,  value_down = -1, value_up = 0, cockpit_device_id = devices.AUTOPILOT, name = _('Autopilot Altitude Control Down'), category = _('Central panel')},

{combos = {{key = 'S', reformers = {'LWin','LShift'}}}, pressed = device_commands.Button_13, value_pressed = -0.5, cockpit_device_id = devices.AUTOPILOT, name = _('Autopilot Heading Adjustment Left'), category = _('Central panel')},
{combos = {{key = 'D', reformers = {'LWin','LShift'}}}, pressed = device_commands.Button_13,  value_pressed = 0.5,	cockpit_device_id = devices.AUTOPILOT, name = _('Autopilot Heading Adjustment Right'), category = _('Central panel')},
{combos = {{key = 'S', reformers = {'RCtrl','LWin'}}}, pressed = device_commands.Button_14, value_pressed = -0.5, cockpit_device_id = devices.AUTOPILOT, name = _('Autopilot Roll Adjustment Left'), category = _('Central panel')},
{combos = {{key = 'D', reformers = {'RCtrl','LWin'}}}, pressed = device_commands.Button_14,  value_pressed = 0.5,	cockpit_device_id = devices.AUTOPILOT, name = _('Autopilot Roll Adjustment Right'), category = _('Central panel')},
{combos = {{key = 'S', reformers = {'LCtrl','LShift'}}}, pressed = device_commands.Button_15, value_pressed = -0.5, cockpit_device_id = devices.AUTOPILOT, name = _('Autopilot Pitch Adjustment Left'), category = _('Central panel')},
{combos = {{key = 'D', reformers = {'LCtrl','LShift'}}}, pressed = device_commands.Button_15,  value_pressed = 0.5,	cockpit_device_id = devices.AUTOPILOT, name = _('Autopilot Pitch Adjustment Right'), category = _('Central panel')},

--SPUU-52
{combos = {{key = 'G', reformers = {'LAlt','LCtrl'}}}, down = device_commands.Button_7, value_down = 1, cockpit_device_id = devices.SPUU_52, name = _('SPUU-52, Control Engage'), category = _('Central panel')},
{combos = {{key = 'H', reformers = {'LAlt','LCtrl'}}}, down = device_commands.Button_3, up = device_commands.Button_3, value_down = -1, value_up = 0, cockpit_device_id = devices.SPUU_52, name = _('SPUU-52, Control P'), category = _('Central panel')},
{combos = {{key = 'J', reformers = {'LAlt','LCtrl'}}}, down = device_commands.Button_4, up = device_commands.Button_4, value_down = 1, value_up = 0, cockpit_device_id = devices.SPUU_52, name = _('SPUU-52, Control t'), category = _('Central panel')},

{combos = {{key = 'N', reformers = {'LAlt','LCtrl'}}}, pressed = device_commands.Button_8, value_pressed = -0.5, cockpit_device_id = devices.SPUU_52, name = _('SPUU-52, Control Adjustment Left'), category = _('Central panel')},
{combos = {{key = 'N', reformers = {'LAlt','LShift'}}}, pressed = device_commands.Button_8,  value_pressed = 0.5,	cockpit_device_id = devices.SPUU_52, name = _('SPUU-52, Control Adjustment Right'), category = _('Central panel')},

--SPU-7
{combos = {{key = 'Q', reformers = {'LAlt','LShift'}}}, pressed = device_commands.Button_15,  value_pressed = -0.2,	cockpit_device_id = devices.SPU_7, name = _('SPU-7, Main Volume Decrease'), category = _('SPU-7, Intercom panel')},
{combos = {{key = 'Q', reformers = {'LAlt','LCtrl'}}}, pressed = device_commands.Button_15,  value_pressed = 0.2,	cockpit_device_id = devices.SPU_7, name = _('SPU-7, Main Volume Increase'), category = _('SPU-7, Intercom panel')},
{combos = {{key = 'W', reformers = {'LAlt','LShift'}}}, pressed = device_commands.Button_16,  value_pressed = -0.2,	cockpit_device_id = devices.SPU_7, name = _('SPU-7, Listening Volume Decrease'), category = _('SPU-7, Intercom panel')},
{combos = {{key = 'W', reformers = {'LAlt','LCtrl'}}}, pressed = device_commands.Button_16,  value_pressed = 0.2,	cockpit_device_id = devices.SPU_7, name = _('SPU-7, Listening Volume Increase'), category = _('SPU-7, Intercom panel')},
{combos = {{key = 'E', reformers = {'LAlt','LShift'}}}, down = device_commands.Button_17,  value_down = -1,	cockpit_device_id = devices.SPU_7, name = _('SPU-7, Radio Source Select Rotary Left'), category = _('SPU-7, Intercom panel')},
{combos = {{key = 'E', reformers = {'LAlt','LCtrl'}}}, down = device_commands.Button_17,  value_down = 1,	cockpit_device_id = devices.SPU_7, name = _('SPU-7, Radio Source Select Rotary Right'), category = _('SPU-7, Intercom panel')},
{combos = {{key = 'Z', reformers = {'LAlt','LCtrl'}}}, down = device_commands.Button_18,  value_down = 1,	cockpit_device_id = devices.SPU_7, name = _('SPU-7, Radio/ICS'), category = _('SPU-7, Intercom panel')},


{combos = {{key = 'O', reformers = {'RAlt'}}}, pressed = device_commands.Button_2, cockpit_device_id = devices.PKV, value_pressed = -0.5, name = _('Sight Intensity Decrease'), category = _('PKV')},
{combos = {{key = 'O', reformers = {'RCtrl'}}}, pressed = device_commands.Button_2, cockpit_device_id = devices.PKV, value_pressed = 0.5, name = _('Sight Intensity Increase'), category = _('PKV')},

{combos = {{key = 'C', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_13,  value_down = 1,	cockpit_device_id = devices.CPT_MECH, name = _('Open/Close Left Door'), category = _('Systems')},
{combos = {{key = 'C', reformers = {'LAlt','LCtrl'}}}, down = device_commands.Button_14,  value_down = 1,	cockpit_device_id = devices.CPT_MECH, name = _('Open/Close Cargo Doors'), category = _('Systems')},

{combos = {{key = 'C', reformers = {'LCtrl'}}}, down = device_commands.Button_18,  value_down = 1,	cockpit_device_id = devices.CPT_MECH, name = _('Open/Close Left Blister'), category = _('Systems')},
{combos = {{key = 'C', reformers = {'LShift'}}}, down = device_commands.Button_19,  value_down = 1,	cockpit_device_id = devices.CPT_MECH, name = _('Open/Close Right Blister'), category = _('Systems')},



-- Weapon System

{combos = {{key = 'S', reformers = {'LAlt'}}}, down = device_commands.Button_54, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Weapon Safe Switcher'), category = _('Armament System')},
{combos = {{key = ']', reformers = {'RShift'}}}, down = device_commands.Button_55, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Rocket Serie 8-16-4 Up'), category = _('Armament System')},
{combos = {{key = '[', reformers = {'RShift'}}}, down = device_commands.Button_55, cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0, name = _('Rocket Serie 8-16-4 Down'), category = _('Armament System')},
{combos = {{key = ']', reformers = {'RAlt'}}}, down = device_commands.Button_56, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Rocket Pilons 1-2-5-6/Auto/3-4 Up'), category = _('Armament System')},
{combos = {{key = '[', reformers = {'RAlt'}}}, down = device_commands.Button_56, cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0, name = _('Rocket Pilons 1-2-5-6/Auto/3-4 Down'), category = _('Armament System')},
{combos = {{key = ']', reformers = {'RCtrl'}}}, down = device_commands.Button_57, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Mode UPK/PKT/RS Up'), category = _('Armament System')},
{combos = {{key = '[', reformers = {'RCtrl'}}}, down = device_commands.Button_57, cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0, name = _('Mode UPK/PKT/RS Down'), category = _('Armament System')},
{combos = {{key = 'R', reformers = {'LAlt'}}}, down = device_commands.Button_58, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Cut Off On/Off'), category = _('Armament System')},
{combos = {{key = ']', reformers = {'RAlt', 'RCtrl'}}}, down = device_commands.Button_61, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('GUV Mode Incr'), category = _('Armament System')},
{combos = {{key = '[', reformers = {'RAlt', 'RCtrl'}}}, down = device_commands.Button_61, cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0, name = _('GUV Mode Decr'), category = _('Armament System')},
{combos = {{key = 'O', reformers = {'RShift'}}}, down = device_commands.Button_60, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('800 or 624-622-800 Cover'), category = _('Armament System')},
{combos = {{key = 'O'}}, down = device_commands.Button_59, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('800 or 624-622-800'), category = _('Armament System')},



{combos = {{key = 'J', reformers = {'LAlt'}}}, down = device_commands.Button_62, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Emergency Release Cover'), category = _('Armament System')},
{combos = {{key = 'J'}}, down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0, name = _('Emergency Release'), category = _('Armament System')},
{combos = {{key = 'H', reformers = {'RAlt'}}}, down = device_commands.Button_64, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Emergency Explode Cover'), category = _('Armament System')},
{combos = {{key = 'H'}}, down = device_commands.Button_63, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Emergency Explode'), category = _('Armament System')},
{combos = {{key = 'R', reformers = {'LCtrl'}}}, down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0, name = _('PUS Arming'), category = _('Armament System')},
{combos = {{key = 'P'}}, down = device_commands.Button_65, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Main Switcher'), category = _('Armament System')},
{combos = {{key = 'L'}}, down = device_commands.Button_14, up = device_commands.Button_14, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0, name = _('Check Lamp'), category = _('Armament System')},


{combos = {{key = 'U', reformers = {'RAlt'}}}, down = device_commands.Button_66, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Second Pilot Emergency Release Cover'), category = _('Armament System')},
{combos = {{key = 'U'}}, down = device_commands.Button_32, up = device_commands.Button_32, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, value_down = 0.0, name = _('Second Pilot Emergency Release'), category = _('Armament System')},
{combos = {{key = 'I', reformers = {'RAlt'}}}, down = device_commands.Button_67, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Second Pilot Emergency Explode Cover'), category = _('Armament System')},
{combos = {{key = 'I'}}, down = device_commands.Button_68, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Second Pilot Emergency Explode'), category = _('Armament System')},
{combos = {{key = 'P', reformers = {'RCtrl'}}}, down = device_commands.Button_69, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Main Bomb Switcher'), category = _('Armament System')},
{combos = {{key = 'L', reformers = {'RAlt'}}}, down = device_commands.Button_26, up = device_commands.Button_26, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0, name = _('Second Pilot Check Lamp'), category = _('Armament System')},
{combos = {{key = ','}}, down = device_commands.Button_70, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('ESBR Heating'), category = _('Armament System')},
{combos = {{key = '.'}}, down = device_commands.Button_71, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Pilons setup Up'), category = _('Armament System')},
{combos = {{key = ';'}}, down = device_commands.Button_71, cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0, name = _('Pilons setup Down'), category = _('Armament System')},

{combos = {{key = 'B'}}, down = device_commands.Button_11, up = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0, name = _('Release Bomb'), category = _('Armament System')},

{combos = {{key = 'H', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_72, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Weapon Hints On/Off'), category = _('Cheat')},

{combos = {{key = 'B', reformers = {'RAlt'}}}, down = device_commands.Button_73, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('ESBR On/Off'), category = _('Armament System')},
{combos = {{key = 'B', reformers = {'RAlt','RShift'}}}, down = device_commands.Button_74, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('ESBR Rotate'), category = _('Armament System')},

--Jadro - 1A
{combos = {{key = ',', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_10, cockpit_device_id = devices.JADRO_1A, value_down = -1.0, name = _('Jadro-1A Mode Decrease'), category = _("Radio Jadro-1A")},
{combos = {{key = '.', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_10, cockpit_device_id = devices.JADRO_1A, value_down = 1.0, name = _('Jadro-1A Mode Increse'), category = _("Radio Jadro-1A")},
{combos = {{key = 'A', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_2,  cockpit_device_id = devices.JADRO_1A, value_down = -0.1,name = _('Jadro-1A 1MHz Decrease'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'Z', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_2,  cockpit_device_id = devices.JADRO_1A, value_down = 0.1, name = _('Jadro-1A 1MHz Increase'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'W', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_3,  cockpit_device_id = devices.JADRO_1A, value_down = -0.1,name = _('Jadro-1A 100kHz Decrease'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'X', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_3,  cockpit_device_id = devices.JADRO_1A, value_down = 0.1, name = _('Jadro-1A 100kHz Increase'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'E', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_4,  cockpit_device_id = devices.JADRO_1A, value_down = -0.1,name = _('Jadro-1A 10kHz Decrease'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'I', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_4,  cockpit_device_id = devices.JADRO_1A, value_down = 0.1, name = _('Jadro-1A 10kHz Increase'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'F', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_5,  cockpit_device_id = devices.JADRO_1A, value_down = -0.1,name = _('Jadro-1A 1kHz Decrease'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'V', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_5,  cockpit_device_id = devices.JADRO_1A, value_down = 0.1, name = _('Jadro-1A 1kHz Increase'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'G', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_6,  cockpit_device_id = devices.JADRO_1A, value_down = -0.1,name = _('Jadro-1A 100Hz Decrease'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'B', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_6,  cockpit_device_id = devices.JADRO_1A, value_down = 0.1, name = _('Jadro-1A 100Hz Increase'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'Q', reformers = {'LCtrl','LShift'}}}, pressed = device_commands.Button_12, cockpit_device_id = devices.JADRO_1A, value_pressed = -1.0,name = _('Jadro-1A Volume Decrease'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'R', reformers = {'LCtrl','LShift'}}}, pressed = device_commands.Button_12, cockpit_device_id = devices.JADRO_1A, value_pressed = 1.0, name = _('Jadro-1A Volume Increase'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'T', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_11, cockpit_device_id = devices.JADRO_1A, value_down = 1.0, name = _('Jadro-1A Squelch'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'Y', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id = devices.JADRO_1A, value_down = 1.0, value_up = 0.0, name = _('Jadro-1A Control'), 	category = _("Radio Jadro-1A")},
{combos = {{key = 'U', reformers = {'LCtrl','LShift'}}}, down = device_commands.Button_14, cockpit_device_id = devices.JADRO_1A, value_down = 1.0, name = _('Jadro-1A Power'), 	category = _("Radio Jadro-1A")},

--ARC-9
{combos = {{key = ',', reformers = {'LCtrl','LWin'}}}, pressed = device_commands.Button_12, cockpit_device_id = devices.ARC_9, value_pressed = -0.4, name = _('ARC-9, Volume Decrease'), category = _("ARC-9")},
{combos = {{key = '.', reformers = {'LCtrl','LWin'}}}, pressed = device_commands.Button_12, cockpit_device_id = devices.ARC_9, value_pressed = 0.4, name = _('ARC-9, Volume Increase'), category = _("ARC-9")},
{combos = {{key = 'Q', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_13, cockpit_device_id = devices.ARC_9, value_down = 1.0, name = _('ARC-9, TLF/TLG'), 	category = _("ARC-9")},
{combos = {{key = 'W', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_14, cockpit_device_id = devices.ARC_9, value_down = -1.0, name = _('ARC-9, Mode Rotary Decrease'), category = _("ARC-9")},
{combos = {{key = 'E', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_14, cockpit_device_id = devices.ARC_9, value_down = 1.0, name = _('ARC-9, Mode Rotary Increase'), category = _("ARC-9")},
{combos = {{key = 'R', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_10, up = device_commands.Button_10, cockpit_device_id = devices.ARC_9, value_down = -1.0, value_up = 0.0, name = _('ARC-9, Loop Ant. Left'), category = _("ARC-9")},
{combos = {{key = 'T', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_10, up = device_commands.Button_10, cockpit_device_id = devices.ARC_9, value_down = 1.0, value_up = 0.0, name = _('ARC-9, Loop Ant. Right'), category = _("ARC-9")},

{combos = {{key = 'Z', reformers = {'LCtrl','LWin'}}}, pressed = device_commands.Button_15, cockpit_device_id = devices.ARC_9, value_pressed = -0.2, name = _('ARC-9, Backup Frequency Decrease'), category = _("ARC-9")},
{combos = {{key = 'X', reformers = {'LCtrl','LWin'}}}, pressed = device_commands.Button_15, cockpit_device_id = devices.ARC_9, value_pressed = 0.2, name = _('ARC-9, Backup Frequency Increase'), category = _("ARC-9")},
{combos = {{key = 'C', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_16, cockpit_device_id = devices.ARC_9, value_down = -1.0, name = _('ARC-9, Backup Frequency 100 kHz Decrease'), category = _("ARC-9")},
{combos = {{key = 'V', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_16, cockpit_device_id = devices.ARC_9, value_down = 1.0, name = _('ARC-9, Backup Frequency 100 kHz Increase'), category = _("ARC-9")},
{combos = {{key = 'B', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_17, cockpit_device_id = devices.ARC_9, value_down = -1.0, name = _('ARC-9, Backup Frequency 10 kHz Decrease'), category = _("ARC-9")},
{combos = {{key = 'N', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_17, cockpit_device_id = devices.ARC_9, value_down = 1.0, name = _('ARC-9, Backup Frequency 10 kHz Increase'), category = _("ARC-9")},
{combos = {{key = 'A', reformers = {'LCtrl','LWin'}}}, pressed = device_commands.Button_18, cockpit_device_id = devices.ARC_9, value_pressed = -0.2, name = _('ARC-9, Main Frequency Decrease'), category = _("ARC-9")},
{combos = {{key = 'S', reformers = {'LCtrl','LWin'}}}, pressed = device_commands.Button_18, cockpit_device_id = devices.ARC_9, value_pressed = 0.2, name = _('ARC-9, Main Frequency Increase'), category = _("ARC-9")},
{combos = {{key = 'D', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_19, cockpit_device_id = devices.ARC_9, value_down = -1.0, name = _('ARC-9, Main Frequency 100 kHz Decrease'), category = _("ARC-9")},
{combos = {{key = 'F', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_19, cockpit_device_id = devices.ARC_9, value_down = 1.0, name = _('ARC-9, Main Frequency 100 kHz Increase'), category = _("ARC-9")},
{combos = {{key = 'G', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_20, cockpit_device_id = devices.ARC_9, value_down = -1.0, name = _('ARC-9, Main Frequency 10 kHz Decrease'), category = _("ARC-9")},
{combos = {{key = 'H', reformers = {'LCtrl','LWin'}}}, down = device_commands.Button_20, cockpit_device_id = devices.ARC_9, value_down = 1.0, name = _('ARC-9, Main Frequency 10 kHz Increase'), category = _("ARC-9")},

--R-863
{combos = {{key = 'Z', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_6,  cockpit_device_id = devices.R_863, value_down = -0.1,name = _('R-863, 10MHz Decrease'), category = _("Radio R-863")},
{combos = {{key = 'A', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_6,  cockpit_device_id = devices.R_863, value_down = 0.1, name = _('R-863, 10MHz Increase'), category = _("Radio R-863")},
{combos = {{key = 'X', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_7,  cockpit_device_id = devices.R_863, value_down = -0.1,name = _('R-863, 1MHz Decrease'), 	category = _("Radio R-863")},
{combos = {{key = 'S', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_7,  cockpit_device_id = devices.R_863, value_down = 0.1, name = _('R-863, 1MHz Increase'), 	category = _("Radio R-863")},
{combos = {{key = 'C', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_8,  cockpit_device_id = devices.R_863, value_down = -0.1,name = _('R-863, 100kHz Decrease'), category = _("Radio R-863")},
{combos = {{key = 'D', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_8,  cockpit_device_id = devices.R_863, value_down = 0.1, name = _('R-863, 100kHz Increase'), category = _("Radio R-863")},
{combos = {{key = 'V', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_9,  cockpit_device_id = devices.R_863, value_down = -0.1,name = _('R-863, 25kHz Decrease'), category = _("Radio R-863")},
{combos = {{key = 'F', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_9,  cockpit_device_id = devices.R_863, value_down = 0.1, name = _('R-863, 25kHz Increase'), category = _("Radio R-863")},
{combos = {{key = 'Q', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_12,  cockpit_device_id = devices.R_863, value_down = 1,name = _('R-863, AM/FM'), category = _("Radio R-863")},
{combos = {{key = 'W', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_13,  cockpit_device_id = devices.R_863, value_down = 1,name = _('R-863, DIAL/MEMORY'), category = _("Radio R-863")},
{combos = {{key = 'E', reformers = {'LAlt','LWin'}}}, pressed = device_commands.Button_16, cockpit_device_id = devices.R_863, value_pressed = -0.2, name = _('R-863, Volume Decrease'), category = _("Radio R-863")},
{combos = {{key = 'R', reformers = {'LAlt','LWin'}}}, pressed = device_commands.Button_16, cockpit_device_id = devices.R_863, value_pressed = 0.2, name = _('R-863, Volume Increase'), category = _("Radio R-863")},
{combos = {{key = 'T', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_15,  cockpit_device_id = devices.R_863, value_down = 1,name = _('R-863, Squelch'), category = _("Radio R-863")},
{combos = {{key = 'Y', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_14,  cockpit_device_id = devices.R_863, value_down = -1,name = _('R-863, Channel Decrease'), category = _("Radio R-863")},
{combos = {{key = 'U', reformers = {'LAlt','LWin'}}}, down = device_commands.Button_14,  cockpit_device_id = devices.R_863, value_down = 1,name = _('R-863, Channel Increase'), category = _("Radio R-863")},


},
}
