local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

return {

keyCommands = {

{combos = {{key = 'Home',  reformers = {'LWin'}}},	down = iCommandEnginesStart, name = _('Auto execute full start procedure'),	category = _('Cheat')},
{combos = {{key = 'End' ,  reformers = {'LWin'}}},	down = iCommandEnginesStop,  name = _('Auto execute full stop procedure') ,	category = _('Cheat')},
{combos = {{key = 'Pause', reformers = {'LShift', 'LWin'}}},	down = iCommandActivePauseOnOff, name = _('Active Pause'), 		category = _('Cheat')},

-- Debug
{combos = {{key = '`', reformers = {'LAlt'}}}, down = ICommandToggleConsole, name = _('Toggle Console'), category = _('Debug')},
{combos = {{key = 'R', reformers = {'LShift'}}}, down = iCommandMissionRestart, name = _('Restart Mission'), category = _('Debug')},

-- General
{combos = {{key = 'Esc'}},							down = iCommandQuit,				name = _('End mission'),					category = _('General')},
{combos = {{key = 'Pause'}},						down = iCommandBrakeGo,				name = _('Pause'),							category = _('General')},
{combos = {{key = 'Z', reformers = {'LCtrl'}}},		down = iCommandAccelerate,			name = _('Time accelerate'),				category = _('General')},
{combos = {{key = 'Z', reformers = {'LAlt'}}},		down = iCommandDecelerate,			name = _('Time decelerate'),				category = _('General')},
{combos = {{key = 'Z', reformers = {'LShift'}}},	down = iCommandNoAcceleration,		name = _('Time normal'),					category = _('General')},
{combos = {{key = '\''}},							down = iCommandScoresWindowToggle,	name = _('Score window'),					category = _('General')},
{combos = {{key = 'Tab'}},							down = iCommandChat, 				name = _('Multiplayer chat - mode All'),	category = _('General')},
{combos = {{key = 'Tab', reformers = {'LCtrl'}}},	down = iCommandFriendlyChat,		name = _('Multiplayer chat - mode Allies'),category = _('General')},
{combos = {{key = 'Y',   reformers = {'LCtrl'}}},	down = iCommandInfoOnOff,			name = _('Info bar view toggle'),			category = _('General')},

{combos = {{key = 'Tab', reformers = {'RCtrl', 'RShift'}}}, down = iCommandRecoverHuman,				 name = _('Get new plane - respawn'),			category = _('General')},
{combos = {{key = 'J', reformers = {'RAlt'}}},				down = iCommandPlaneJump,					 name = _('Jump into selected aircraft'),		category = _('General')},
{combos = {{key = 'SysRQ'}},								down = iCommandScreenShot,					 name = _('Screenshot'),						category = _('General')},
{combos = {{key = 'Pause', reformers = {'RCtrl'}}}, 		down = iCommandGraphicsFrameRate,			 name = _('Frame rate counter - Service info'),category = _('General')},
{combos = {{key = 'Y',     reformers = {'LAlt'}}},			down = iCommandViewCoordinatesInLinearUnits, name = _('Info bar coordinate units toogle'),	category = _('General')},
{combos = {{key = 'C',     reformers = {'LAlt'}}},			down = iCommandCockpitClickModeOnOff,		 name = _('Mouse cursor cockpit mode'),		category = _('General')},
{combos = {{key = 'S',     reformers = {'LCtrl'}}},			down = iCommandSoundOnOff,					 name = _('Sound On/Off'),						category = _('General')},
{combos = {{key = '\'',    reformers = {'LAlt'}}}, 			down = iCommandMissionResourcesManagement,	 name = _('Rearming and Refueling Window'),	category = _('General')},	-- ??
{combos = {{key = 'B',     reformers = {'LAlt'}}},			down = iCommandViewBriefing, name = _('View briefing on/off'),								category = _('General')},
{combos = {{key = 'Enter', reformers = {'RCtrl'}}},			down = iCommandPlane_ShowControls,			 name = _('Show controls indicator'),			category = _('General')},

-- Flight Control
{combos = {{key = 'Up'}},	 down = iCommandPlaneUpStart,			up = iCommandPlaneUpStop,			name = _('Aircraft Down'),			category = _('Flight Control')},
{combos = {{key = 'Down'}},	 down = iCommandPlaneDownStart,			up = iCommandPlaneDownStop,			name = _('Aircraft Up'),			category = _('Flight Control')},
{combos = {{key = 'Left'}},	 down = iCommandPlaneLeftStart,			up = iCommandPlaneLeftStop,			name = _('Aircraft Bank Left'),	category = _('Flight Control')},
{combos = {{key = 'Right'}}, down = iCommandPlaneRightStart,		up = iCommandPlaneRightStop,		name = _('Aircraft Bank Right'),	category = _('Flight Control')},
{combos = {{key = 'Z'}},	 down = iCommandPlaneLeftRudderStart,	up = iCommandPlaneLeftRudderStop,	name = _('Aircraft Rudder Left'),	category = _('Flight Control')},
{combos = {{key = 'X'}},	 down = iCommandPlaneRightRudderStart,	up = iCommandPlaneRightRudderStop,	name = _('Aircraft Rudder Right'),	category = _('Flight Control')},

{combos = {{key = '.', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimUp,			up = iCommandPlaneTrimStop,	name = _('Trim Up'),			category = _('Flight Control')},
{combos = {{key = ';', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimDown,		up = iCommandPlaneTrimStop,	name = _('Trim Down'),			category = _('Flight Control')},
{combos = {{key = ',', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimLeft,		up = iCommandPlaneTrimStop,	name = _('Trim Left'),			category = _('Flight Control')},
{combos = {{key = '/', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimRight,		up = iCommandPlaneTrimStop,	name = _('Trim Right'),		category = _('Flight Control')},
{combos = {{key = 'Z', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimLeftRudder,	up = iCommandPlaneTrimStop,	name = _('Trim Left Rudder'),	category = _('Flight Control')},
{combos = {{key = 'X', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimRightRudder,	up = iCommandPlaneTrimStop,	name = _('Trim Right Rudder'),	category = _('Flight Control')},

{combos = {{key = 'Num+'}},		pressed = iCommandThrottleIncrease, up = iCommandThrottleStop,  name = _('Thrust Smoothly Up'),	category = _('Flight Control')},
{combos = {{key = 'Num-'}},		pressed = iCommandThrottleDecrease, up = iCommandThrottleStop,  name = _('Thrust Smoothly Down'),	category = _('Flight Control')},

{combos = {{key = 'PageUp'}},	down = iCommandPlaneAUTIncreaseRegime, name = _('Thrust Step Up'),	  category = _('Flight Control')},
{combos = {{key = 'PageDown'}}, down = iCommandPlaneAUTDecreaseRegime, name = _('Thrust Step Down'), category = _('Flight Control')},

-- Systems
{combos = {{key = 'B'}},						 	down = iCommandPlaneAirBrake,				name = _('Airbrake'),					category = _('Systems')},
{combos = {{key = 'B', reformers = {'LShift'}}},	pressed = iCommandPlaneAirBrakeOn,	up = iCommandPlaneAirBrakeOn,	value_pressed = 1,	value_up = 0,	name = _('Airbrake On'),	category = _('Systems')},
{combos = {{key = 'B', reformers = {'LCtrl'}}},		pressed = iCommandPlaneAirBrakeOff,	up = iCommandPlaneAirBrakeOff, 	value_pressed = 1,	value_up = 0,	name = _('Airbrake Off'),	category = _('Systems')},
{combos = {{key = 'T'}},							down = iCommandPlaneWingtipSmokeOnOff,		name = _('Smoke'),						category = _('Systems')},
{combos = {{key = 'F'}},							down = iCommandPlaneFlaps,					name = _('Flaps Up/Down'),				category = _('Systems')},
{combos = {{key = 'F', reformers = {'LShift'}}},	pressed = iCommandPlaneFlapsOn,		up = iCommandPlaneFlapsOn,		value_pressed = 1,	value_up = 0,	name = _('Flaps Down'),	category = _('Systems')},
{combos = {{key = 'F', reformers = {'LCtrl'}}},		pressed = iCommandPlaneFlapsOff,	up = iCommandPlaneFlapsOff,		value_pressed = 1,	value_up = 0,	name = _('Flaps Up'),		category = _('Systems')},
{combos = {{key = 'F', reformers = {'LAlt'}}},		down = control_commands.F86_CockpitDeviceCommand_FlapsHandle,  cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0,  name = _('Flaps Stop'),  category = _('Systems')},
{combos = {{key = 'G'}},							down = iCommandPlaneGear,					name = _('Landing Gear Up/Down'),		category = _('Systems')},
{combos = {{key = 'G', reformers = {'LCtrl'}}},		down = iCommandPlaneGearUp,					name = _('Landing Gear Up'),			category = _('Systems')},
{combos = {{key = 'G', reformers = {'LShift'}}},	down = iCommandPlaneGearDown,				name = _('Landing Gear Down'),			category = _('Systems')},
{combos = {{key = 'W'}},							down = iCommandPlaneWheelBrakeOn,		up = iCommandPlaneWheelBrakeOff,	  name = _('Wheel Brake On'),			 category = _('Systems')},
{combos = {{key = 'A', reformers = {'LCtrl'}}},		down = iCommandPlaneWheelBrakeLeftOn,	up = iCommandPlaneWheelBrakeLeftOff,  name = _('Wheel Brake Left On/Off'),  category = _('Systems')},
{combos = {{key = 'A', reformers = {'LAlt'}}},		down = iCommandPlaneWheelBrakeRightOn,	up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel Brake Right On/Off'), category = _('Systems')},
{combos = {{key = 'W', reformers = {'LCtrl'}}},		down = iCommandPlaneJettisonWeapons, up = iCommandPlaneJettisonWeaponsUp, name = _('Weapons Jettison'), category = _('Systems')},
{combos = {{key = 'C', reformers = {'LCtrl'}}},		down = iCommandPlaneFonar, 					name = _('Canopy Open/Close'),			category = _('Systems')},
{combos = {{key = 'C', reformers = {'LShift'}}},	down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_ManualCanopyJettison, up = cockpit_mechanics_commands.F86_CockpitDeviceCommand_ManualCanopyJettison,	cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 1, value_up = 0,	name = _('Manual Canopy Jettison'),	category = _('Systems')},
{combos = {{key = 'E', reformers = {'LCtrl'}}},		down = iCommandPlaneEject,					name = _('Eject (3 times)'),			category = _('Systems')},
{combos = {{key = 'C', reformers = {'RShift'}}},	down = iCommandFlightClockReset,			name = _('Flight Clock Start/Stop/Reset'),			category = _('Systems')},
{													down = iCommandClockElapsedTimeReset,		name = _('Elapsed Time Clock Start/Stop/Reset'),	category = _('Systems')},

-- Communications
{combos = {{key = 'E', reformers = {'LWin'}}}, down = iCommandPlaneDoAndHome, name = _('Flight - Complete mission and RTB'), category = _('Communications')},
{combos = {{key = 'R', reformers = {'LWin'}}}, down = iCommandPlaneDoAndBack, name = _('Flight - Complete mission and rejoin'), category = _('Communications')},
{combos = {{key = 'T', reformers = {'LWin'}}}, down = iCommandPlaneFormation, name = _('Toggle Formation'), category = _('Communications')},
{combos = {{key = 'Y', reformers = {'LWin'}}}, down = iCommandPlaneJoinUp, name = _('Join Up Formation'), category = _('Communications')},
{combos = {{key = 'Q', reformers = {'LWin'}}}, down = iCommandPlaneAttackMyTarget, name = _('Attack My Target'), category = _('Communications')},
{combos = {{key = 'W', reformers = {'LWin'}}}, down = iCommandPlaneCoverMySix, name = _('Cover Me'), category = _('Communications')},
{combos = {{key = 'U', reformers = {'LWin'}}}, down = iCommandAWACSHomeBearing, name = _('Request AWACS Home Airbase'), category = _('Communications')},
{combos = {{key = 'G', reformers = {'LWin'}}}, down = iCommandPlane_EngageGroundTargets, name = _('Flight - Attack ground targets'), category = _('Communications')},
{combos = {{key = 'D', reformers = {'LWin'}}}, down = iCommandPlane_EngageAirDefenses, name = _('Flight - Attack air defenses'), category = _('Communications')},
{combos = {{key = '\\'}},							down = iCommandToggleCommandMenu,	 name = _('Communication menu'),		category = _('Communications')},
{combos = {{key = '\\', reformers = {'LShift'}}},	down = ICommandSwitchDialog, 		 name = _('Switch dialog'),				category = _('Communications')},
{combos = {{key = '\\', reformers = {'LCtrl'}}},	down = ICommandSwitchToCommonDialog, name = _('Switch to main menu'),		category = _('Communications')},
{combos = {{key = '\\', reformers = {'RAlt'}}},		down = radio_commands.F86_CockpitDeviceCommand_ARC27_MicrophoneBtn, up = radio_commands.F86_CockpitDeviceCommand_ARC27_MicrophoneBtn, cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_down = 1, value_up = 0, name = _('Microphone Button'), category = _('Communications')},

-- View                                                    
{combos = {{key = 'Num4'}}, pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'Num6'}}, pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'Num8'}}, pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'Num2'}}, pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'Num9'}}, pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'Num3'}}, pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'Num1'}}, pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'Num7'}}, pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{combos = {{key = 'Num5'}}, pressed = iCommandViewCenter, name = _('View Center'), category = _('View')},

{combos = {{key = 'Num*'}}, pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},
{combos = {{key = 'Num/'}}, pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
{combos = {{key = 'NumEnter'}}, down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
{combos = {{key = 'Num*', reformers = {'RCtrl'}}}, pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
{combos = {{key = 'Num/', reformers = {'RCtrl'}}}, pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
{combos = {{key = 'NumEnter', reformers = {'RCtrl'}}}, down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
{combos = {{key = 'Num*', reformers = {'LAlt'}}}, down = iCommandViewSpeedUp, name = _('F11 Camera moving forward'), category = _('View')},
{combos = {{key = 'Num/', reformers = {'LAlt'}}}, down = iCommandViewSlowDown, name = _('F11 Camera moving backward'), category = _('View')},


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
{combos = {{key = 'F5'}}, down = iCommandViewFight, name = _('F5 nearest AC view'), category = _('View')},
{combos = {{key = 'F5', reformers = {'LCtrl'}}}, down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
{combos = {{key = 'F6'}}, down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
{combos = {{key = 'F6', reformers = {'LCtrl'}}}, down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
{combos = {{key = 'F7'}}, down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
{combos = {{key = 'F8'}}, down = iCommandViewTargets, name = _('F8 Target view'), category = _('View')},
{combos = {{key = 'F8', reformers = {'RCtrl'}}}, down = iCommandViewTargetType, name = _('F8 Player targets/All targets filter'), category = _('View')},
{combos = {{key = 'F9'}}, down = iCommandViewNavy, name = _('F9 Ship view'), category = _('View')},
{combos = {{key = 'F9', reformers = {'LAlt'}}}, down = iCommandViewLndgOfficer, name = _('F9 Landing signal officer view'), category = _('View')},
{combos = {{key = 'F10'}}, down = iCommandViewAWACS, name = _('F10 Theater map view'), category = _('View')},
{combos = {{key = 'F10', reformers = {'LCtrl'}}}, down = iCommandViewAWACSJump, name = _('F10 Jump to theater map view over current point'), category = _('View')},
{combos = {{key = 'F11'}}, down = iCommandViewFree, name = _('F11 Airport free camera'), category = _('View')},
{combos = {{key = 'F11', reformers = {'LCtrl'}}}, down = iCommandViewFreeJump, name = _('F11 Jump to free camera'), category = _('View')},
{combos = {{key = 'F12'}}, down = iCommandViewStatic, name = _('F12 Static object view'), category = _('View')},
{combos = {{key = 'F12', reformers = {'LCtrl'}}}, down = iCommandViewMirage, name = _('F12 Civil traffic view'), category = _('View')},
{combos = {{key = 'F12', reformers = {'LShift'}}}, down = iCommandViewLocomotivesToggle, name = _('F12 Trains/cars toggle'), category = _('View')},
{combos = {{key = 'F1', reformers = {'LWin'}}} , down = iCommandViewPitHeadOnOff, name = _('F1 Head shift movement on / off'), category = _('View')},

{combos = {{key = ']', reformers = {'LShift'}}}, down = iCommandViewFastKeyboard, name = _('Keyboard Rate Fast'), category = _('View')},
{combos = {{key = ']', reformers = {'LCtrl'}}}, down = iCommandViewSlowKeyboard, name = _('Keyboard Rate Slow'), category = _('View')},
{combos = {{key = ']', reformers = {'LAlt'}}}, down = iCommandViewNormalKeyboard, name = _('Keyboard Rate Normal'), category = _('View')},
{combos = {{key = '[', reformers = {'LShift'}}}, down =  iCommandViewFastMouse, name = _('Mouse Rate Fast'), category = _('View')},
{combos = {{key = '[', reformers = {'LCtrl'}}}, down = iCommandViewSlowMouse, name = _('Mouse Rate Slow'), category = _('View')},
{combos = {{key = '[', reformers = {'LAlt'}}}, down = iCommandViewNormalMouse, name = _('Mouse Rate Normal'), category = _('View')},

-- Cockpit view
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

-- Cockpit Camera Motion (Передвижение камеры в кабине)
{combos = {{key = 'Num8', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
{combos = {{key = 'Num*', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
{combos = {{key = 'Num/', reformers = {'RCtrl','RShift'}}, {key = 'Num-', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RCtrl','RShift'}}}, down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},

{combos = {{key = 'Num8', reformers = {'RCtrl'}}}, down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Glance up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RCtrl'}}}, down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Glance down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RCtrl'}}}, down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Glance left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RCtrl'}}}, down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Glance right'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RCtrl'}}}, down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Glance up-left'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RCtrl'}}}, down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Glance down-left'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RCtrl'}}}, down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Glance up-right'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RCtrl'}}}, down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Glance down-right'), category = _('View Cockpit')},
{combos = {{key = 'Z', reformers = {'LAlt','LShift'}}}, down = iCommandViewPanToggle, name = _('Camera pan mode toggle'), category = _('View Cockpit')},

{combos = {{key = 'Num8', reformers = {'RAlt'}}}, down = iCommandViewCameraUpSlow, name = _('Camera snap view up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RAlt'}}}, down = iCommandViewCameraDownSlow, name = _('Camera snap view down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RAlt'}}}, down = iCommandViewCameraLeftSlow, name = _('Camera snap view left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RAlt'}}}, down = iCommandViewCameraRightSlow, name = _('Camera snap view right'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RAlt'}}}, down = iCommandViewCameraUpLeftSlow, name = _('Camera snap view up-left'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RAlt'}}}, down = iCommandViewCameraDownLeftSlow, name = _('Camera snap view down-left'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RAlt'}}}, down = iCommandViewCameraUpRightSlow, name = _('Camera snap view up-right'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RAlt'}}}, down = iCommandViewCameraDownRightSlow, name = _('Camera snap view down-right'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RShift'}}}, down = iCommandViewCameraCenter, name = _('Center Camera View'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RCtrl'}}}, down = iCommandViewCameraReturn, name = _('Return Camera'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RAlt'}}}, down = iCommandViewCameraBaseReturn, name = _('Return Camera Base'), category = _('View Cockpit')},

{combos = {{key = 'Num0', reformers = {'LWin'}}}, down = iCommandViewSnapView0,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  0'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'LWin'}}}, down = iCommandViewSnapView1,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  1'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'LWin'}}}, down = iCommandViewSnapView2,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  2'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'LWin'}}}, down = iCommandViewSnapView3,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  3'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'LWin'}}}, down = iCommandViewSnapView4,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  4'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'LWin'}}}, down = iCommandViewSnapView5,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  5'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'LWin'}}}, down = iCommandViewSnapView6,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  6'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'LWin'}}}, down = iCommandViewSnapView7,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  7'), category = _('View Cockpit')},
{combos = {{key = 'Num8', reformers = {'LWin'}}}, down = iCommandViewSnapView8,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  8'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'LWin'}}}, down = iCommandViewSnapView9,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  9'), category = _('View Cockpit')},

{combos = {{key = 'N', reformers = {'RAlt'}}}, down = iCommandViewLeftMirrorOn ,	up = iCommandViewLeftMirrorOff , name = _('Mirror Left On'), category = _('View Cockpit')},
{combos = {{key = 'M', reformers = {'RAlt'}}}, down = iCommandViewRightMirrorOn,	up = iCommandViewRightMirrorOff, name = _('Mirror Right On'), category = _('View Cockpit')},
{combos = {{key = 'M' }}, down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},

{combos = {{key = 'Num*', reformers = {'RShift'}}}, pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},
{combos = {{key = 'Num/', reformers = {'RShift'}}}, pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},

-- Extended view
{combos = {{key = 'J', reformers = {'LShift'}}}, down = iCommandViewCameraJiggle, name = _('Camera jiggle toggle'), category = _('View Extended')},
{combos = {{key = 'K', reformers = {'LAlt'}}}, down = iCommandViewKeepTerrain, name = _('Keep terrain camera altitude'), category = _('View Extended')},
{combos = {{key = 'Home', reformers = {'RCtrl','RShift'}}}, down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
{combos = {{key = 'End', reformers = {'RCtrl' ,'RShift'}}}, down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
{combos = {{key = 'Delete', reformers = {'RCtrl'}}}, down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},
{combos = {{key = 'Num+', reformers = {'RCtrl'}}}, down = iCommandViewPlus, name = _('Toggle tracking fire weapon'), category = _('View Extended')},
{combos = {{key = 'PageDown', reformers = {'LCtrl'}}}, down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View Extended')},
{combos = {{key = 'PageUp', reformers = {'LCtrl'}}}, down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View Extended')},
{combos = {{key = 'Delete', reformers = {'LAlt'}}}, down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View Extended')},
{combos = {{key = 'Insert', reformers = {'LAlt'}}}, down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View Extended')},

-- Padlock
{combos = {{key = 'Num.'}}, down = iCommandViewLock, name = _('Lock View (cycle padlock)'), category = _('View Padlock')},
{combos = {{key = 'NumLock'}}, down = iCommandViewUnlock, name = _('Unlock view (stop padlock)'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RShift'}}}, down = iCommandAllMissilePadlock, name = _('All missiles padlock'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RAlt'}}}, down = iCommandThreatMissilePadlock, name = _('Threat missile padlock'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RCtrl'}}}, down = iCommandViewTerrainLock, name = _('Lock terrain view'), category = _('View Padlock')},

-- Labels
{combos = {{key = 'F10', reformers = {'LShift'}}}, down = iCommandMarkerState, name = _('All Labels'), category = _('Labels')},
{combos = {{key = 'F2', reformers = {'LShift'}}}, down = iCommandMarkerStatePlane, name = _('Aircraft Labels'), category = _('Labels')},
{combos = {{key = 'F6', reformers = {'LShift'}}}, down = iCommandMarkerStateRocket, name = _('Missile Labels'), category = _('Labels')},
{combos = {{key = 'F9', reformers = {'LShift'}}}, down = iCommandMarkerStateShip, name = _('Vehicle & Ship Labels'), category = _('Labels')},

--Kneeboard
{combos = {{key = ']'}},						 down = 3001, cockpit_device_id  = 100, value_down = 1.0, name = _('Kneeboard Next Page'),		category = _('Kneeboard')},
{combos = {{key = '['}},						 down = 3002, cockpit_device_id  = 100, value_down = 1.0, name = _('Kneeboard Previous Page'),	category = _('Kneeboard')},
{combos = {{key = 'K', reformers = {'RShift'}}}, down = iCommandPlaneShowKneeboard,						name = _('Kneeboard ON/OFF'),			category = _('Kneeboard')},
{combos = {{key = 'K'}},						 down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{combos = {{key = 'K', reformers = {'RCtrl'}}},	 down = 3003, cockpit_device_id  = 100,value_down = 1.0,	name = _('Kneeboard current position mark point'), category = _('Kneeboard')},

-- Instrument panel

-- Left side panel

-- AN/ARN-6 Radio Compass
{down = radio_compass_commands.ARN6_MODE_SELECT_ITER,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 1,		name = _('AN/ARN-6 Function Selector Switch - CW'),			category = _('AN/ARN-6 Radio Compass')},
{down = radio_compass_commands.ARN6_MODE_SELECT_ITER,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = -1,	name = _('AN/ARN-6 Function Selector Switch - CCW'),		category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_LOOP_LR_SWITCH,		up = radio_compass_commands.ARN6_LOOP_LR_SWITCH,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = 1,	value_up = 0,	name = _('AN/ARN-6 Loop Switch - Right'),		category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_LOOP_LR_SWITCH,		up = radio_compass_commands.ARN6_LOOP_LR_SWITCH,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = -1,	value_up = 0,	name = _('AN/ARN-6 Loop Switch - Left'),		category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_TUNE_FREQUENCY_EXT,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = 1,	name = _('AN/ARN-6 Tuning Crank - CW/Increase Frequency'),	category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_TUNE_FREQUENCY_EXT,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = -1,	name = _('AN/ARN-6 Tuning Crank - CCW/Decrease Frequency'),	category = _('AN/ARN-6 Radio Compass')},
{down = radio_compass_commands.ARN6_LIGHT_SW_EXT,			cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 1,		name = _('AN/ARN-6 Scale Light Switch - Up'),				category = _('AN/ARN-6 Radio Compass')},
{down = radio_compass_commands.ARN6_LIGHT_SW_EXT,			cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = -1,	name = _('AN/ARN-6 Scale Light Switch - Down'),				category = _('AN/ARN-6 Radio Compass')},
{down = radio_compass_commands.ARN6_BAND_SELECT_EXT,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 1,		name = _('AN/ARN-6 Frequency Band Switch - CW/Increase'),	category = _('AN/ARN-6 Radio Compass')},
{down = radio_compass_commands.ARN6_BAND_SELECT_EXT,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = -1,	name = _('AN/ARN-6 Frequency Band Switch - CCW/Decrease'),	category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_GAIN_CONTROL_EXT,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = 0.3,	name = _('AN/ARN-6 Audio Volume Control - Up'),			category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_GAIN_CONTROL_EXT,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = -0.3,	name = _('AN/ARN-6 Audio Volume Control - Down'),		category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_SCALE_POS_EXT,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = 1,	name = _('AN/ARN-6 East/West Variation Knob - CW/West'),	category = _('AN/ARN-6 Radio Compass')},
{pressed = radio_compass_commands.ARN6_SCALE_POS_EXT,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = -1,	name = _('AN/ARN-6 East/West Variation Knob - CCW/East'),	category = _('AN/ARN-6 Radio Compass')},

-- AN/ARC-27 UHF Radio
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_PresetChannel_EXT, cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_down = 1,  name = _('AN/ARC-27 UHF Preset Channel Selector - CW/Increase'),	category = _('AN/ARC-27 UHF Radio')},
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_PresetChannel_EXT, cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_down = -1, name = _('AN/ARC-27 UHF Preset Channel Selector - CCW/Decrease'),	category = _('AN/ARC-27 UHF Radio')},
{pressed = radio_commands.F86_CockpitDeviceCommand_ARC27_Volume_EXT,	 cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_pressed = 0.075,  name = _('AN/ARC-27 UHF Audio Volume Knob - CW/Up'),		category = _('AN/ARC-27 UHF Radio')},
{pressed = radio_commands.F86_CockpitDeviceCommand_ARC27_Volume_EXT,	 cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_pressed = -0.075, name = _('AN/ARC-27 UHF Audio Volume Knob - CCW/Down'),		category = _('AN/ARC-27 UHF Radio')},
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_Mode_EXT,			 cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_down = 1,  name = _('AN/ARC-27 UHF Power Switch - CW'),						category = _('AN/ARC-27 UHF Radio')},
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_Mode_EXT,			 cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_down = -1, name = _('AN/ARC-27 UHF Power Switch - CCW'),						category = _('AN/ARC-27 UHF Radio')},

-- AN/APX-6 IFF Transponder
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode_EXT,		cockpit_device_id = devices.AN_APX6_IFF, value_down = 1,		name = _('AN/APX-6 IFF Master Switch - CW'),	category = _('AN/APX-6 IFF Transponder')},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode_EXT,		cockpit_device_id = devices.AN_APX6_IFF, value_down = -1,		name = _('AN/APX-6 IFF Master Switch - CCW'),	category = _('AN/APX-6 IFF Transponder')},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode2Sw_EXT,		cockpit_device_id = devices.AN_APX6_IFF, value_down = 1,		name = _('AN/APX-6 IFF Mode 2 Switch - Up'),	category = _('AN/APX-6 IFF Transponder')},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode2Sw_EXT,		cockpit_device_id = devices.AN_APX6_IFF, value_down = -1,		name = _('AN/APX-6 IFF Mode 2 Switch - Down'),	category = _('AN/APX-6 IFF Transponder')},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode3Sw_EXT,		cockpit_device_id = devices.AN_APX6_IFF, value_down = 1,		name = _('AN/APX-6 IFF Mode 3 Switch'),			category = _('AN/APX-6 IFF Transponder')},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_DestructSwCover_EXT,	cockpit_device_id = devices.AN_APX6_IFF, value_down = 1,	name = _('AN/APX-6 IFF Destruct Switch Cover'),	category = _('AN/APX-6 IFF Transponder')},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_DestructSw, up = iff_commands.F86_CockpitDeviceCommand_APX6_DestructSw, cockpit_device_id = devices.AN_APX6_IFF, value_down = 1, value_up = -1,	name = _('AN/APX-6 IFF Destruct Switch'),		category = _('AN/APX-6 IFF Transponder')},

-- Left forward console
{down = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen_EXT, cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,  name = _('Engine Anti-Ice & Screen Switch - Up'),	category = _('Left Forward Console')},
{down = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen_EXT, cockpit_device_id = devices.AIR_INTERFACE, value_down = -1, name = _('Engine Anti-Ice & Screen Switch - Down'),	category = _('Left Forward Console')},
{down = hydro_commands.F86_CockpitDeviceCommand_HornCutOut,		 up = hydro_commands.F86_CockpitDeviceCommand_HornCutOut,	   cockpit_device_id = devices.HYDRO_INTERFACE,  value_down = 1, value_up = 0, name = _('Landing Gear Warning Horn Cutout Button'), category = _('Left Forward Console')},
{down = air_commands.F86_CockpitDeviceCommand_PitotHeater_Sw_EXT, cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,   name = _('Pitot Heater Switch'),	 category = _('Left Forward Console')},
{combos = {{key = 'L', reformers = {'RShift'}}}, down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights_EXT, cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = 1,  name = _('Landing & Taxi Lights Switch - Up'),	category = _('Left Forward Console')},
{combos = {{key = 'L', reformers = {'RCtrl'}}},	 down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights_EXT, cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = -1, name = _('Landing & Taxi Lights Switch - Down'),	category = _('Left Forward Console')},

-- Drop tank control panel
{down = fuel_commands.F86_CockpitDeviceCommand_TankSelector_Sw_EXT,  cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1,  name = _('Drop Tank Selector Switch - CW'),  category = _('Drop Tank Control Panel')},
{down = fuel_commands.F86_CockpitDeviceCommand_TankSelector_Sw_EXT,  cockpit_device_id = devices.FUEL_INTERFACE, value_down = -1, name = _('Drop Tank Selector Switch - CCW'), category = _('Drop Tank Control Panel')},
{down = fuel_commands.F86_CockpitDeviceCommand_TankJettison_Btn, up = fuel_commands.F86_CockpitDeviceCommand_TankJettison_Btn, cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1, value_up = 0, name = _('Drop Tank Jettison Button'), category = _('Drop Tank Control Panel')},
{down = fuel_commands.F86_CockpitDeviceCommand_OutDropTanksEmpty_TPLmp, up = fuel_commands.F86_CockpitDeviceCommand_OutDropTanksEmpty_TPLmp, cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1, value_up = 0, name = _('Outboard Drop Tank Empty Indicator Light'), category = _('Drop Tank Control Panel')},
{down = device_commands.Button_17, up = device_commands.Button_17, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0, name = _('Bomb-Rocket-Tank Jettison Button'), category = _('Drop Tank Control Panel')},

-- Right forward console
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSwCover_EXT, cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1, name = _('Generator Switch Cover'),	category = _('Right Forward Console')},
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_EXT,		 cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1, name = _('Generator Switch - Up'),			category = _('Right Forward Console')},
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_EXT,		 up = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_EXT, cockpit_device_id = devices.ELEC_INTERFACE, value_down = -1, value_up = 0,  name = _('Generator Switch - Down'), category = _('Right Forward Console')},
{down = electric_commands.F86_CockpitDeviceCommand_EngineMasterSw_EXT,	 cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1, name = _('Engine Master Switch'),		category = _('Right Forward Console')},
{down = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_EXT, cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1, name = _('Battery-Starter Switch - Up'),			category = _('Right Forward Console')},
{down = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_EXT, up = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	  value_down = -1, value_up = 0,  name = _('Battery-Starter Switch - Down'),  category = _('Right Forward Console')},
{down = engine_commands.F86_CockpitDeviceCommand_AirStart_Cover_EXT,	 cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,	name = _('Emergency (In-air) Ignition Switch Cover'),	category = _('Right Forward Console')},
{down = engine_commands.F86_CockpitDeviceCommand_AirStart,				 up = engine_commands.F86_CockpitDeviceCommand_AirStart,			cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,  value_up = -1, name = _('Emergency (In-air) Ignition Switch'), category = _('Right Forward Console')},
{down = fuel_commands.F86_CockpitDeviceCommand_DensitometerCorrectionCover_EXT,	cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1,	name = _('Fuel Densitometer Selection Switch Cover'),	category = _('Right Forward Console')},
{down = fuel_commands.F86_CockpitDeviceCommand_DensitometerCorrection_EXT,	 cockpit_device_id = devices.FUEL_INTERFACE,	value_down = 1,	name = _('Fuel Densitometer Selection Switch'),			category = _('Right Forward Console')},
{down = electric_commands.F86_CockpitDeviceCommand_StopStarterBtn,			 up = electric_commands.F86_CockpitDeviceCommand_StopStarterBtn,	cockpit_device_id = devices.ELEC_INTERFACE,	  value_down = 1,  value_up = 0,  name = _('Stop-Starter Button'),	category = _('Right Forward Console')},
{down = light_commands.F86_CockpitDeviceCommand_StandByCompassLightSw_EXT,	 cockpit_device_id = devices.LIGHT_INTERFACE,	value_down = 1,	name = _('Compass Light Switch'),				category = _('Right Forward Console')},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLtsDimmer_EXT, cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = 1,	name = _('Exterior Lighting Dimmer Switch'),			category = _('Right Forward Console')},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts_EXT,		 cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = 1,  name = _('Position and Fuselage Light Selector Switch - Up'),	 category = _('Right Forward Console')},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts_EXT,		 cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = -1, name = _('Position and Fuselage Light Selector Switch - Down'), category = _('Right Forward Console')},

-- Interior Light Control Panel
{pressed = light_commands.F86_CockpitDeviceCommand_InstPanelPrimLightControl_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = 0.5,  name = _('Instrument Panel Primary Light Rheostat - CW/Increase'),		category = _('Interior Light Control Panel')},
{pressed = light_commands.F86_CockpitDeviceCommand_InstPanelPrimLightControl_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = -0.5, name = _('Instrument Panel Primary Light Rheostat - CCW/Decrease'),		category = _('Interior Light Control Panel')},
{pressed = light_commands.F86_CockpitDeviceCommand_InstPanelAuxLightControl_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = 0.5,  name = _('Instrument Panel Auxiliary Light Rheostat - CW/Increase'),		category = _('Interior Light Control Panel')},
{pressed = light_commands.F86_CockpitDeviceCommand_InstPanelAuxLightControl_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = -0.5, name = _('Instrument Panel Auxiliary Light Rheostat - CCW/Decrease'),	category = _('Interior Light Control Panel')},
{pressed = light_commands.F86_CockpitDeviceCommand_ConsoleAndPanelLightControl_EXT, cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = 0.5,  name = _('Console and Panel Light Rheostat - CW/Increase'),				category = _('Interior Light Control Panel')},
{pressed = light_commands.F86_CockpitDeviceCommand_ConsoleAndPanelLightControl_EXT, cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = -0.5, name = _('Console and Panel Light Rheostat - CCW/Decrease'),				category = _('Interior Light Control Panel')},

-- Stick grip
{combos = {{key = 'S'}},							down = iCommandPlane_HOTAS_NoseWheelSteeringButton, up = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff, name = _('Nosewheel Steering Button'), category = _('Stick Grip')},
{combos = {{key = 'Space'}},						down = iCommandPlaneFire, up = iCommandPlaneFireOff,			 name = _('Gun Fire'),						category = _('Stick Grip')},
{combos = {{key = 'Space', reformers = {'RAlt'}}},	down = iCommandPlanePickleOn,	up = iCommandPlanePickleOff,	 name = _('Weapon Release'),				category = _('Stick Grip')},

-- Lighting control panels

-- Oxygen Regulator

-- A-4 Sight
{combos = {{key = '/'}},		pressed = iCommandPlaneIncreaseBase_Distance, up = iCommandPlaneStopBase_Distance,	name = _('A-4 Sight Wing Span Adjustment Knob - Wing Span Increase'),			category = _('A-4 Sight')},
{combos = {{key = ','}},		pressed = iCommandPlaneDecreaseBase_Distance, up = iCommandPlaneStopBase_Distance,	name = _('A-4 Sight Wing Span Adjustment Knob - Wing Span Decrease'),			category = _('A-4 Sight')},
{combos = {{key = ';'}},		pressed = device_commands.Button_18, up = device_commands.Button_20, cockpit_device_id = devices.A4_GUNSIGHT, value_pressed = 1, value_up = 0,  name = _('A-4 Sight Manual Ranging Control (Throttle Twist Grip) - CCW/Increase'), category = _('A-4 Sight')},
{combos = {{key = '.'}},		pressed = device_commands.Button_19, up = device_commands.Button_20, cockpit_device_id = devices.A4_GUNSIGHT, value_pressed = 1, value_up = 0,  name = _('A-4 Sight Manual Ranging Control (Throttle Twist Grip) - CW/Decrease'), category = _('A-4 Sight')},
{combos = {{key = '`'}},		down    = iCommandPlaneDesignate_CageOn,	  up = iCommandPlaneDesignate_CageOff,	name = _('A-4 Sight Electrical Caging Button (On Throttle)'),	category = _('A-4 Sight')},
{combos = {{key = '`', reformers = {'LCtrl'}}},		down = device_commands.Button_17,	cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 1,	name = _('A-4 Sight Mechanical Caging Lever'),		category = _('A-4 Sight')},
{combos = {{key = 'Enter'}},						down = iCommandPlaneChangeLock,		up = iCommandPlaneChangeLockUp,								name = _('A-4 Sight Radar Target Selector Button'), category = _('A-4 Sight')},
{pressed = device_commands.Button_5,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = 0.2,	name = _('A-4 Sight Reticle Dimmer Control - CW/BRIGHT'),						category = _('A-4 Sight')},
{pressed = device_commands.Button_5,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = -0.2,	name = _('A-4 Sight Reticle Dimmer Control - CCW/DIM'),							category = _('A-4 Sight')},
{pressed = device_commands.Button_2,	cockpit_device_id = devices.AN_APG_30,		value_pressed = 1,		name = _('A-4 Sight Radar Range Sweep Rheostat - CW/Increase'),					category = _('A-4 Sight')},
{pressed = device_commands.Button_2,	cockpit_device_id = devices.AN_APG_30,		value_pressed = -1, 	name = _('A-4 Sight Radar Range Sweep Rheostat - CCW/Decrease'),				category = _('A-4 Sight')},
{pressed = device_commands.Button_35,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = 1,		name = _('A-4 Sight Bombing Altimeter Target Altitude Knob - CW/Increase'),		category = _('A-4 Sight')},
{pressed = device_commands.Button_35,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = -1, 	name = _('A-4 Sight Bombing Altimeter Target Altitude Knob - CCW/Decrease'),	category = _('A-4 Sight')},
{pressed = device_commands.Button_36,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = 1,		name = _('A-4 Sight Bombing Altimeter Index Altitude Handle - CW/Increase'),	category = _('A-4 Sight')},
{pressed = device_commands.Button_36,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = -1, 	name = _('A-4 Sight Bombing Altimeter Index Altitude Handle - CCW/Decrease'), 	category = _('A-4 Sight')},

-- Center pedestal
{pressed = device_commands.Button_21,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = 0.2,	name = _('Bomb-Target Wind Control Knob - CW'),			category = _('Center Pedestal')},
{pressed = device_commands.Button_21,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = -0.2,	name = _('Bomb-Target Wind Control Knob - CCW'),		category = _('Center Pedestal')},
{down = device_commands.Button_22,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 1,			name = _('Variable Sight Selector Unit - Target Speed Switch'),					category = _('Center Pedestal')},
{combos = {{key = 'D', reformers = {'LAlt'}}},		down = device_commands.Button_29,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Variable Sight Selector Unit - Sight Function Selector Lever - CCW'),	category = _('Center Pedestal')},
{combos = {{key = 'D', reformers = {'LCtrl'}}},		down = device_commands.Button_29,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('Variable Sight Selector Unit - Sight Function Selector Lever - CW'),	category = _('Center Pedestal')},
{pressed = device_commands.Button_23,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = 0.1,	name = _('Variable Sight Selector Unit - Rocket Depression Angle Selector - CW'),	category = _('Center Pedestal')},
{pressed = device_commands.Button_23,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = -0.1,	name = _('Variable Sight Selector Unit - Rocket Depression Angle Selector - CCW'),	category = _('Center Pedestal')},
{down = electric_commands.F86_CockpitDeviceCommand_InverterSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Instrument Power Switch'),		category = _('Center Pedestal')},
{down = device_commands.Button_26,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Gun Heater Switch'),						category = _('Center Pedestal')},
{down = device_commands.Button_25,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Gun-Missile Selector Switch - CCW'),		category = _('Center Pedestal')},
{down = device_commands.Button_25,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Gun-Missile Selector Switch - CW'),		category = _('Center Pedestal')},
{down = device_commands.Button_28,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Rocket Release Selector Switch Cover'),	category = _('Center Pedestal')},
{down = device_commands.Button_27,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Rocket Release Selector Switch - Up'),	category = _('Center Pedestal')},
{down = device_commands.Button_27,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Rocket Release Selector Switch - Down'),	category = _('Center Pedestal')},
{down = device_commands.Button_30,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Rocket Jettison Switch'),					category = _('Center Pedestal')},
{down = device_commands.Button_31,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Rocket Fuze (Arming) Switch'),			category = _('Center Pedestal')},
{down = device_commands.Button_32,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Demolition Bomb Release Selector Switch'),		category = _('Center Pedestal')},
{down = device_commands.Button_33,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Demolition Bomb Sequence Selector Switch - CW'),	category = _('Center Pedestal')},
{down = device_commands.Button_33,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Demolition Bomb Sequence Selector Switch - CCW'),	category = _('Center Pedestal')},
{down = device_commands.Button_34,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Demolition Bomb Arming Switch - Up'),		category = _('Center Pedestal')},
{down = device_commands.Button_34,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Demolition Bomb Arming Switch - Down'),	category = _('Center Pedestal')},
{down = device_commands.Button_24,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 1,			name = _('A-4 Sight Filament Selector Switch'),		category = _('Center Pedestal')},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_CanopyDeclutchHandle_EXT,		cockpit_device_id = devices.COCKPIT_MECHANICS,	value_down = 1,		name = _('Canopy Declutch Handle'),	category = _('Center Pedestal')},

-- Left CB panel

-- Right CB panel



-- Systems
{combos = {{key = 'R', reformers = {'LAlt'}}},		down = iCommandPlaneJettisonFuelTanks, up   = iCommandPlaneJettisonFuelTanksUp, name = _('Jettison Fuel Tanks'), category = _('Systems')},

{combos = {{key = 'Home'}},							down = control_commands.F86_CockpitDeviceCommand_EngineStart, cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 1, name = _('Throttle - Start Engine'), category = _('Systems')},
{combos = {{key = 'End'}},							down = control_commands.F86_CockpitDeviceCommand_EngineStop,  cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 1, name = _('Throttle - Stop Engine'),  category = _('Systems')},

},
}
