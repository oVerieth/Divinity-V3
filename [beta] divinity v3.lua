--=============================divinity=============================--
--gui
local ScreenWeight,ScreenHeight = draw.GetScreenSize()
local gui_divinity_window = gui.Window("divinity_window", "                                                                            divinity script", ScreenWeight/8, ScreenHeight/8, 550, 450)
local gui_divinity_buttons_group = gui.Groupbox(gui_divinity_window, "", 0, 0, 550, 450)
local gui_divinity_button_antiaims= gui.Button(gui_divinity_buttons_group, "Anti-Aims", function()
    antiaim_tab_active=true
    rage_tab_active=false
    visual_tab_active=false
    misc_tab_active=false
end)
gui_divinity_button_antiaims:SetPosY(0)
gui_divinity_button_antiaims:SetPosX(0)
gui_divinity_button_antiaims:SetWidth(252)
gui_divinity_button_antiaims:SetHeight(175)

local gui_divinity_button_rage = gui.Button(gui_divinity_buttons_group, "Rage", function()
    rage_tab_active=true
    antiaim_tab_active=false
    visual_tab_active=false
    misc_tab_active=false
end)
gui_divinity_button_rage:SetPosY(0)
gui_divinity_button_rage:SetPosX(266)
gui_divinity_button_rage:SetWidth(252)
gui_divinity_button_rage:SetHeight(175)
local gui_divinity_button_visual = gui.Button(gui_divinity_buttons_group, "Visual", function()
    visual_tab_active = true
    antiaim_tab_active = false
    rage_tab_active = false
    misc_tab_active = false
end)
gui_divinity_button_visual:SetPosY(185)
gui_divinity_button_visual:SetPosX(0)
gui_divinity_button_visual:SetWidth(252)
gui_divinity_button_visual:SetHeight(175)
local gui_divinity_button_misc = gui.Button(gui_divinity_buttons_group, "Misc", function()
    misc_tab_active = true
    antiaim_tab_active = false
    rage_tab_active = false
    visual_tab_active = false
end)
gui_divinity_button_misc:SetPosY(185)
gui_divinity_button_misc:SetPosX(266)
gui_divinity_button_misc:SetWidth(252)
gui_divinity_button_misc:SetHeight(175)

local gui_divinity_button_return = gui.Button(gui_divinity_window, "return", function()
    returnkey = 1
end)
gui_divinity_button_return:SetInvisible(true)
gui_divinity_button_return:SetPosX(15)
gui_divinity_button_return:SetPosY(10)
gui_divinity_button_return:SetWidth(518)
gui_divinity_button_return:SetHeight(40)

--Anti-aim tab
local gui_divinity_antiaim_group_main = gui.Groupbox(gui_divinity_window, "Anti-Aims Settings", 10, 60, 280, 450)
gui_divinity_antiaim_group_main:SetInvisible(true)
local gui_divinity_antiaim_group_binds = gui.Groupbox(gui_divinity_window, "Anti-Aims Binds", 300, 60, 240, 450)
gui_divinity_antiaim_group_binds:SetInvisible(true)
local gui_divinity_antiaim_group_misc = gui.Groupbox(gui_divinity_window, "Anti-Aims Misc", 300, 340, 240, 460)
gui_divinity_antiaim_group_misc:SetInvisible(true)

--anti-aim main
local gui_divinity_antiaim_group_main_conditionselector = gui.Combobox(gui_divinity_antiaim_group_main, "divinity_antiaim_group_main_conditionselector", "Anti-Aims Condition", "General or Standing", "Slowwalking", "Moving", "In air")
local gui_divinity_antiaim_group_main_desynctype_standing = gui.Combobox(gui_divinity_antiaim_group_main, "divinity_antiaim_group_main_desynctype_standing", "Desync Type", "Static", "Jitter", "3-angle Jitter", "Roll aa")
local gui_divinity_antiaim_group_main_desynctype_moving = gui.Combobox(gui_divinity_antiaim_group_main, "divinity_antiaim_group_main_desynctype_moving", "Desync Type", "Static", "Jitter", "3-angle Jitter")
local gui_divinity_antiaim_group_main_desynctype_slowwalking = gui.Combobox(gui_divinity_antiaim_group_main, "divinity_antiaim_group_main_desynctype_slowwalking", "Desync Type", "Static", "Jitter", "3-angle Jitter", "Roll aa")
local gui_divinity_antiaim_group_main_desynctype_inair = gui.Combobox(gui_divinity_antiaim_group_main, "divinity_antiaim_group_main_desynctype_inair", "Desync Type", "Static", "Jitter", "3-angle Jitter")
local gui_divinity_antiaim_group_main_set_standing_as_general = gui.Checkbox(gui_divinity_antiaim_group_main, "divinity_antiaim_group_main_set_standing_as_general", "Set Standing As General", false)
local gui_divinity_antiaim_group_main_desyncrange_standing_right = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_desyncrange_standing_right", "Desync Range Right", 0, 0, 58, 1)
local gui_divinity_antiaim_group_main_desyncrange_slowwalking_right = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_desyncrange_slowwalking_right", "Desync Range Right", 0, 0, 58, 1)
local gui_divinity_antiaim_group_main_desyncrange_moving_right = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_desyncrange_moving_right", "Desync Range Right", 0, 0, 58, 1)
local gui_divinity_antiaim_group_main_desyncrange_inair_right = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_desyncrange_inair_right", "Desync Range Right", 0, 0, 58, 1)
local gui_divinity_antiaim_group_main_desyncrange_standing_left = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_desyncrange_standing_left", "Desync Range Left", 0, 0, 58, 1)
local gui_divinity_antiaim_group_main_desyncrange_slowwalking_left = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_desyncrange_slowwalking_left", "Desync Range Left", 0, 0, 58, 1)
local gui_divinity_antiaim_group_main_desyncrange_moving_left = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_desyncrange_moving_left", "Desync Range Left", 0, 0, 58, 1)
local gui_divinity_antiaim_group_main_desyncrange_inair_left = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_desyncrange_inair_left", "Desync Range Left", 0, 0, 58, 1)
local gui_divinity_antiaim_group_main_yaw_standing_right = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yaw_standing_right", "Yaw Angle Right", 0, -180, 180, 1)
local gui_divinity_antiaim_group_main_yaw_slowwalking_right = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yaw_slowwalking_right", "Yaw Angle Right", 0, -180, 180, 1)
local gui_divinity_antiaim_group_main_yaw_moving_right = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yaw_moving_right", "Yaw Angle Right", 0, -180, 180, 1)
local gui_divinity_antiaim_group_main_yaw_inair_right = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yaw_inair_right", "Yaw Angle Right", 0, -180, 180, 1)
local gui_divinity_antiaim_group_main_yaw_standing_left = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yaw_standing_left", "Yaw Angle Left", 0, -180, 180, 1)
local gui_divinity_antiaim_group_main_yaw_slowwalking_left = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yaw_slowwalking_left", "Yaw Angle Left", 0, -180, 180, 1)
local gui_divinity_antiaim_group_main_yaw_moving_left = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yaw_moving_left", "Yaw Angle Left", 0, -180, 180, 1)
local gui_divinity_antiaim_group_main_yaw_inair_left = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yaw_inair_left", "Yaw Angle Left", 0, -180, 180, 1)
local gui_divinity_antiaim_group_main_yawmodifier_standing = gui.Combobox(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yawmodifier_standing", "Yaw Modifier", "Static", "Center Jitter", "Random Jitter", "Speenbot", "Rotation", "Fake flick", "Custom Fake-Flick", "Tank Jitter")
gui_divinity_antiaim_group_main_yawmodifier_standing:SetDescription("Do not use with jitter desync")
local gui_divinity_antiaim_group_main_yawmodifier_slowwalking = gui.Combobox(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yawmodifier_slowwalking", "Yaw Modifier", "Static", "Center Jitter", "Random Jitter", "Speenbot", "Rotation", "Fake flick", "Custom Fake-Flick", "Tank Jitter")
gui_divinity_antiaim_group_main_yawmodifier_slowwalking:SetDescription("Do not use with jitter desync")
local gui_divinity_antiaim_group_main_yawmodifier_moving = gui.Combobox(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yawmodifier_moving", "Yaw Modifier", "Static", "Center Jitter", "Random Jitter", "Speenbot", "Rotation", "Fake flick", "Custom Fake-Flick", "Tank Jitter")
gui_divinity_antiaim_group_main_yawmodifier_moving:SetDescription("Do not use with jitter desync")
local gui_divinity_antiaim_group_main_yawmodifier_inair = gui.Combobox(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yawmodifier_inair", "Yaw Modifier", "Static", "Center Jitter", "Random Jitter", "Speenbot", "Rotation", "Fake flick", "Custom Fake-Flick", "Tank Jitter")
gui_divinity_antiaim_group_main_yawmodifier_inair:SetDescription("Do not use with jitter desync")
local gui_divinity_antiaim_group_main_yawmodifierrange_standing = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yawmodifierrange_standing", "Yaw Modifier Range", 0, 0, 180, 1)
local gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yawmodifierrange_slowwalking", "Yaw Modifier Range", 0, 0, 180, 1)
local gui_divinity_antiaim_group_main_yawmodifierrange_moving = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yawmodifierrange_moving", "Yaw Modifier Range", 0, 0, 180, 1)
local gui_divinity_antiaim_group_main_yawmodifierrange_inair = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yawmodifierrange_inair", "Yaw Modifier Range", 0, 0, 180, 1)
local gui_divinity_antiaim_group_main_yawmodifierspeed_standing = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yawmodifierspeed_standing", "Yaw Modifier Speed", 2, 2, 64, 1)
local gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yawmodifierspeed_slowwalking", "Yaw Modifier Speed", 2, 2, 64, 1)
local gui_divinity_antiaim_group_main_yawmodifierspeed_moving = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yawmodifierspeed_moving", "Yaw Modifier Speed", 2, 2, 64, 1)
local gui_divinity_antiaim_group_main_yawmodifierspeed_inair = gui.Slider(gui_divinity_antiaim_group_main,"divinity_antiaim_group_main_yawmodifierspeed_inair", "Yaw Modifier Speed", 2, 2, 64, 1)
--anti-aim binds
local gui_divinity_antiaim_group_binds_desync_inverter_key = gui.Keybox(gui_divinity_antiaim_group_binds, "divinity_antiaim_group_binds_desync_inverter_key", "Desync Inverter Key", 70)
local gui_divinity_antiaim_group_binds_manualleftkey = gui.Keybox(gui_divinity_antiaim_group_binds, "divinity_antiaim_group_binds_manualleftkey", "Manual Left Key", 90)
local gui_divinity_antiaim_group_binds_manualbackkey = gui.Keybox(gui_divinity_antiaim_group_binds, "divinity_antiaim_group_binds_manualbackkey", "Manual Back Key", 88)
local gui_divinity_antiaim_group_binds_manualrightkey = gui.Keybox(gui_divinity_antiaim_group_binds, "divinity_antiaim_group_binds_manualrightkey", "Manual Right Key", 67)
--anti-aim misc
local gui_divinity_antiaim_group_misc_anti_bruteforce = gui.Combobox(gui_divinity_antiaim_group_misc, "divinity_antiaim_group_misc_anti_bruteforce", "Anti-Bruteforce", "None", "On Local Shot", "On Enemy Shot", "Both")
local gui_divinity_antiaim_group_misc_legitantiaim = gui.Checkbox(gui_divinity_antiaim_group_misc, "divinity_antiaim_group_misc_legitantiaim", "Enable Legit Anti-Aims", false)
local gui_divinity_antiaim_group_misc_freestand = gui.Checkbox(gui_divinity_antiaim_group_misc, "divinity_antiaim_group_misc_freestand", "Enable Freestand", false)
local gui_divinity_antiaim_group_misc_at_tartget = gui.Checkbox(gui_divinity_antiaim_group_misc, "divinity_antiaim_group_misc_at_tartget", "At Target", false)
local gui_divinity_antiaim_group_misc_standvelocitythreshold = gui.Slider(gui_divinity_antiaim_group_misc, "divinity_antiaim_group_misc_standvelocitythreshold", "Stand Velocity Threshold", 2, 2, 250)

--Rage tab
local gui_divinity_rage_group_tickbase = gui.Groupbox(gui_divinity_window, "Tickbase Manipulations", 10, 60, 280, 450)
gui_divinity_rage_group_tickbase:SetInvisible(true)
local gui_divinity_rage_group_other = gui.Groupbox(gui_divinity_window, "Other Stuff", 300, 60, 240, 450)
gui_divinity_rage_group_other:SetInvisible(true)
local gui_divinity_rage_group_flags = gui.Groupbox(gui_divinity_window, "Flags", 10, 383, 520, 450)
gui_divinity_rage_group_flags:SetInvisible(true)
--rage tickbase
local gui_divinity_rage_group_tickbase_sv_maxusrcmdprocessticks_fakelags = gui.Slider(gui_divinity_rage_group_tickbase, "divinity_rage_group_tickbase_sv_maxusrcmdproccesticks_fakelags", "Fakelags sv_maxusrcmdproccesticks", 16, 3, 64, 1)
local gui_divinity_rage_group_tickbase_sv_maxusrcmdprocessticks_fakeduck = gui.Slider(gui_divinity_rage_group_tickbase, "divinity_rage_group_tickbase_sv_maxusrcmdproccesticks_fakeduck", "Fakeduck sv_maxusrcmdproccesticks", 16, 3, 64, 1)
local gui_divinity_rage_group_tickbase_sv_maxusrcmdprocessticks_exploit = gui.Slider(gui_divinity_rage_group_tickbase, "divinity_rage_group_tickbase_sv_maxusrcmdproccesticks_exploit", "Exploit sv_maxusrcmdproccesticks", 16, 3, 64, 1)
local gui_divinity_rage_group_tickbase_anti_defensive = gui.Checkbox(gui_divinity_rage_group_tickbase, "divinity_rage_group_tickbase_anti_defensive", "Enable Anti-Defensive", false)
local gui_divinity_rage_group_tickbase_standby_choke = gui.Checkbox(gui_divinity_rage_group_tickbase, "divinity_rage_group_tickbase_standby_choke", "Enable Standby Choke", false)
local gui_divinity_rage_group_tickbase_standby_choke_fakelag_slider = gui.Slider(gui_divinity_rage_group_tickbase, "divinity_rage_group_tickbase_standby_choke_fakelag_slider", "Fakelag On Doubletap", 0, 0, 10, 1)
--rage other
local gui_divinity_rage_group_other_adaptive_silent = gui.Checkbox(gui_divinity_rage_group_other, "divinity_rage_group_other_adaptive_silent", "Adaptive Silent Aim", false)
local gui_divinity_rage_group_other_adaptive_autoscope = gui.Checkbox(gui_divinity_rage_group_other, "divinity_rage_group_other_adaptive_autoscope", "Adaptive Auto-Scope (auto)", false)
local gui_divinity_rage_group_other_noscope_hitchance = gui.Slider(gui_divinity_rage_group_other, "divinity_rage_group_other_noscope_hitchance", "Noscope Hitchance", 80, 0, 100, 1)
local gui_divinity_rage_group_other_awp_fast_switch = gui.Checkbox(gui_divinity_rage_group_other, "divinity_rage_group_other_awp_fast_switch", "AWP Fast Switch", false)
local gui_divinity_rage_group_other_jump_scout = gui.Checkbox(gui_divinity_rage_group_other, "divinity_rage_group_other_jump_scout", "Jump Scout Fix", false)
local gui_divinity_rage_group_other_accurate_walk = gui.Checkbox(gui_divinity_rage_group_other, "divinity_rage_group_other_accurate_walk", "Accurate Walk", false)
local gui_divinity_rage_group_other_doubletap_peek_help = gui.Checkbox(gui_divinity_rage_group_other, "divinity_rage_group_other_doubletap_peek_help", "DT+Autopeek Help", false)
--rage flags
local gui_divinity_rage_group_flags_enemy_flags = gui.Multibox(gui_divinity_rage_group_flags, "Enemy flags")
local gui_divinity_rage_group_flags_enemy_flags_shot = gui.Checkbox(gui_divinity_rage_group_flags_enemy_flags, "divinity_rage_group_flags_enemy_flags_shot", "Next Shot Earlier", false)
local gui_divinity_rage_group_flags_enemy_flags_shot_color = gui.ColorPicker(gui_divinity_rage_group_flags_enemy_flags_shot, "divinity_rage_group_flags_enemy_flags_shot_color", "", 255, 50, 0)
local gui_divinity_rage_group_flags_enemy_flags_bot = gui.Checkbox(gui_divinity_rage_group_flags_enemy_flags, "divinity_rage_group_flags_enemy_flags_bot", "Bot", false)
local gui_divinity_rage_group_flags_enemy_flags_bot_color = gui.ColorPicker(gui_divinity_rage_group_flags_enemy_flags_bot, "divinity_rage_group_flags_enemy_flags_bot_color", "", 200, 200, 200)
local gui_divinity_rage_group_flags_enemy_flags_distance = gui.Checkbox(gui_divinity_rage_group_flags_enemy_flags, "divinity_rage_group_flags_enemy_flags_distance", "Distance", false)
local gui_divinity_rage_group_flags_enemy_flags_distance_color = gui.ColorPicker(gui_divinity_rage_group_flags_enemy_flags_distance, "divinity_rage_group_flags_enemy_flags_distance_color", "", 240, 240, 240)
local gui_divinity_rage_group_flags_enemy_flags_fakelag_exploit = gui.Checkbox(gui_divinity_rage_group_flags_enemy_flags, "divinity_rage_group_flags_enemy_flags_fakelag_exploit", "Fakelags and Exploit", false)
local gui_divinity_rage_group_flags_enemy_flags_fakelag_color = gui.ColorPicker(gui_divinity_rage_group_flags_enemy_flags_fakelag_exploit, "divinity_rage_group_flags_enemy_flags_fakelag_color", "", 107, 129, 227)
local gui_divinity_rage_group_flags_enemy_flags_exploit_color = gui.ColorPicker(gui_divinity_rage_group_flags_enemy_flags_fakelag_exploit, "divinity_rage_group_flags_enemy_flags_exploit_color", "", 247, 204, 12)

--Visual tab
local gui_divinity_visual_group_world = gui.Groupbox(gui_divinity_window, "World Modulation", 10, 60, 280, 450)
gui_divinity_visual_group_world:SetInvisible(true)
local gui_divinity_visual_group_other = gui.Groupbox(gui_divinity_window, "Other Stuff", 300, 60, 240, 450)
gui_divinity_visual_group_other:SetInvisible(true) 
--visual world
local gui_divinity_visual_group_world_bomb = gui.Combobox(gui_divinity_visual_group_world, "divinity_visual_group_world_bomb", "Bomb Indicator", "None", "White", "Black", "Blue")
local gui_divinity_visual_group_world_bomb_position_x = gui.Slider(gui_divinity_visual_group_world, "divinity_visual_group_world_bomb_position_x", "Bomb Indicator X", 5, 0, ScreenWeight)
local gui_divinity_visual_group_world_bomb_position_y = gui.Slider(gui_divinity_visual_group_world, "divinity_visual_group_world_bomb_position_y", "Bomb Indicator y", 620, 0, ScreenHeight) 
local gui_divinity_visual_group_world_bullet_tracer = gui.Checkbox(gui_divinity_visual_group_world, "divinity_visual_group_world_bullet_tracer", "Bullet tracers", false)
local gui_divinity_visual_group_world_bullet_tracer_color = gui.ColorPicker(gui_divinity_visual_group_world_bullet_tracer, "divinity_visual_group_world_bullet_tracer_color", "", 255, 255, 255)
local gui_divinity_visual_group_world_foot_shadow = gui.Checkbox(gui_divinity_visual_group_world, "divinity_visual_group_world_foot_shadow", "Disable Foot Shadow", false)
local gui_divinity_visual_group_world_aspectratio = gui.Slider(gui_divinity_visual_group_world, "divinity_visual_group_world_aspectratio", "Aspectratio", 0, 0, 2.5, 0.01)
local gui_divinity_visual_group_world_controller = gui.Combobox(gui_divinity_visual_group_world, "divinity_visual_group_world_controller", "World Modulation", "Nightmode", "Gray Mode", "Full Gray", "Minecraft world")
local gui_divinity_visual_group_world_exposure = gui.Slider(gui_divinity_visual_group_world, "divinity_visual_group_world_exposure", "Exposure (nightmode)", 0, 0, 100, 1)
local gui_divinity_visual_group_world_ambient = gui.Slider(gui_divinity_visual_group_world, "divinity_visual_group_world_ambient", "Ambient (shining)", 0, 0, 100, 1)
local gui_divinity_visual_group_world_bloom = gui.Slider(gui_divinity_visual_group_world, "divinity_visual_group_world_bloom", "Bloom", 0, 0, 100, 1)
local gui_divinity_visual_group_world_ambient_light = gui.ColorPicker(gui_divinity_visual_group_world, "divinity_visual_group_world_ambient_light", "Ambient Light", 0, 0, 0, 255)
local gui_divinity_visual_group_world_auto_nightmode = gui.Slider(gui_divinity_visual_group_world, "divinity_visual_group_world_auto_nightmode", "Auto Nightmode", 0, 0, 10)
--visual other
local gui_divinity_visual_group_other_divinity_indicators = gui.Combobox(gui_divinity_visual_group_other, "divinity_visual_group_other_divinity_indicators", "Divinity Indicators", "None", "Style 1", "Style 2")
local gui_divinity_visual_group_other_keybinds = gui.Checkbox(gui_divinity_visual_group_other, "divinity_visual_group_other_divinity_keybinds", "Divinity Keybinds", false)
local gui_divinity_visual_group_other_spectator_list = gui.Checkbox(gui_divinity_visual_group_other, "divinity_visual_group_other_spectator_list", "Divinity Spectator List", false)
local gui_divinity_visual_group_other_hit_station = gui.Checkbox(gui_divinity_visual_group_other, "divinity_visual_group_other_hit_station", "Divinity Hit Station", false)
local gui_divinity_visual_group_other_watermark = gui.Checkbox(gui_divinity_visual_group_other, "divinity_visual_group_other_watermark", "Divinity Watermark", false)
local gui_divinity_visual_group_other_white_theme = gui.Checkbox(gui_divinity_visual_group_other, "divinity_visual_group_other_white_theme", "White Theme", false)
local invisible_gui = {
    gui_divinity_visual_group_other_keybinds_position_x = gui.Slider(gui_divinity_visual_group_other, "divinity_visual_group_other_keybinds_position_x", "Keybinds Position X", 620, 0, ScreenWeight),
    gui_divinity_visual_group_other_keybinds_position_y = gui.Slider(gui_divinity_visual_group_other, "divinity_visual_group_other_keybinds_position_y", "Keybinds Position Y", 250, 0, ScreenHeight),
    gui_divinity_visual_group_other_spectator_list_position_x = gui.Slider(gui_divinity_visual_group_other, "divinity_visual_group_other_spectator_list_position_x", "Spectator List Position X", 1400, 0, ScreenWeight),
    gui_divinity_visual_group_other_spectator_list_position_y = gui.Slider(gui_divinity_visual_group_other, "divinity_visual_group_other_spectator_list_position_y", "Spectator List Position Y", 450, 0, ScreenHeight),
    gui_divinity_visual_group_other_hit_station_position_x = gui.Slider(gui_divinity_visual_group_other, "divinity_visual_group_other_hit_station_position_x", "Hit Station Position X", 460, 0, ScreenWeight),
    gui_divinity_visual_group_other_hit_station_position_y = gui.Slider(gui_divinity_visual_group_other, "divinity_visual_group_other_hit_station_position_y", "Hit Station Position X", 350, 0, ScreenWeight),
    gui_divinity_visual_group_other_watermark_position_x = gui.Slider(gui_divinity_visual_group_other, "divinity_visual_group_other_watermark_position_x", "Watermark Position X", ScreenWeight - 400, 0, ScreenWeight),
    gui_divinity_visual_group_other_watermark_position_y = gui.Slider(gui_divinity_visual_group_other, "divinity_visual_group_other_watermark_position_y", "Watermark Position Y", 10, 0, ScreenHeight)
}
local gui_divinity_visual_group_other_custom_scope = gui.Checkbox(gui_divinity_visual_group_other, "divinity_visual_group_other_custom_scope", "Custom Scope", false)
local gui_divinity_visual_group_other_custom_scope_color = gui.ColorPicker(gui_divinity_visual_group_other_custom_scope, "divinity_visual_group_other_custom_scope_color", "Custom Scope Color", 255, 255, 255, 255)
local gui_divinity_visual_group_other_custom_scope_height = gui.Slider(gui_divinity_visual_group_other, "divinity_visual_group_other_custom_scope_height", "Custom Scope Height", 2, 1, 10, 1)
local gui_divinity_visual_group_other_custom_scope_weight = gui.Slider(gui_divinity_visual_group_other, "divinity_visual_group_other_custom_scope_lenght", "Custom Scope Weight", 200, 10, 600, 5)
local gui_divinity_visual_group_other_custom_scope_indent = gui.Slider(gui_divinity_visual_group_other, "divinity_visual_group_other_custom_scope_indent", "Custom Scope Indent", 30, 0, 300, 5)
local gui_divinity_visual_group_other_damage_marker = gui.Checkbox(gui_divinity_visual_group_other, "divinity_visual_group_other_damage_marker", "Damage Marker", false)
local gui_divinity_visual_group_other_damage_marker_color_def = gui.ColorPicker(gui_divinity_visual_group_other_damage_marker, "divinity_visual_group_other_damage_marker_color_def", "", 240, 240, 240)
local gui_divinity_visual_group_other_damage_marker_color_lethal = gui.ColorPicker(gui_divinity_visual_group_other_damage_marker, "divinity_visual_group_other_damage_marker_color_lethal", "", 240, 0, 0)
local gui_divinity_visual_group_other_health_marker = gui.Checkbox(gui_divinity_visual_group_other, "divinity_visual_group_other_health_marker", "Health Marker", false)
local gui_divinity_visual_group_other_hitmarker = gui.Checkbox(gui_divinity_visual_group_other, "divinity_visual_group_other_hitmarker", "Hitmarker", false)
local gui_divinity_visual_group_other_hitmarker_color = gui.ColorPicker(gui_divinity_visual_group_other_hitmarker, "divinity_visual_group_other_hitmarker_color", "", 255, 170, 23)

--Misc tab
local gui_divinity_misc_group_other = gui.Groupbox(gui_divinity_window, "Other Stuff", 300, 60, 240, 450)
gui_divinity_misc_group_other:SetInvisible(true)
local gui_divinity_misc_group_indicators = gui.Groupbox(gui_divinity_window, "Indicators",  10, 60, 280, 450)
gui_divinity_misc_group_indicators:SetInvisible(true) 
local gui_divinity_misc_group_usefull_features = gui.Groupbox(gui_divinity_window, "Other Stuff",  10, 395, 280, 450)
gui_divinity_misc_group_usefull_features:SetInvisible(true) 
--misc other
local gui_divinity_misc_group_other_better_thirdperson = gui.Checkbox(gui_divinity_misc_group_other, "divinity_misc_group_other_better_thirdperson", "Better ThirdPerson", false)
local gui_divinity_misc_group_other_better_thirdperson_enabler = gui.Checkbox(gui_divinity_misc_group_other, "divinity_misc_group_other_better_thirdperson_enabler", "Enable ThirdPerson (bind)", false)
gui_divinity_misc_group_other_better_thirdperson_enabler:SetDescription("You should unbind cheat 3rd person")
local gui_divinity_misc_group_other_better_thirdperson_distance = gui.Slider(gui_divinity_misc_group_other, "divinity_misc_group_other_better_thirdperson_distance", "Better ThirdPerson Distance", 130, 0, 500, 5)
local gui_divinity_misc_group_other_disable_thirdperson_grenade = gui.Checkbox(gui_divinity_misc_group_other, "divinity_misc_group_other_disable_thirdperson_grenade", "Disable ThirPerson on Grenade", false)
local gui_divinity_misc_group_other_show_nade_tracer_on_throw = gui.Checkbox(gui_divinity_misc_group_other, "divinity_misc_group_other_show_nade_tracer_on_throw", "Show Nade Tracer on Throw", false)
local gui_divinity_misc_group_other_viewmodel_in_scope = gui.Checkbox(gui_divinity_misc_group_other, "divinity_misc_group_other_viewmodel_in_scope", "Viewmodel in Scope", false)
local gui_divinity_misc_group_other_force_crosshair = gui.Checkbox(gui_divinity_misc_group_other, "divinity_misc_group_other_force_crosshair", "Force Crosshair", false)
local gui_divinity_misc_group_other_leg_fucker = gui.Checkbox(gui_divinity_misc_group_other, "divinity_misc_group_other_leg_fucker", "Leg Fucker", false)
local gui_divinity_misc_group_other_viewmodel_changer = gui.Checkbox(gui_divinity_misc_group_other, "divinity_misc_group_other_viewmodel_changer", "Viewmodel Changer", false)
local gui_divinity_misc_group_other_viewmodel_changer_x = gui.Slider(gui_divinity_misc_group_other, "divinity_misc_group_other_viewmodel_changer_x", "Viewmodel Changer X", 0, -10, 10, 0.1)
local gui_divinity_misc_group_other_viewmodel_changer_y = gui.Slider(gui_divinity_misc_group_other, "divinity_misc_group_other_viewmodel_changer_y", "Viewmodel Changer Y", 0, -10, 10, 0.1)
local gui_divinity_misc_group_other_viewmodel_changer_z = gui.Slider(gui_divinity_misc_group_other, "divinity_misc_group_other_viewmodel_changer_z", "Viewmodel Changer Z", 0, -10, 10, 0.1)
--misc indicators
local gui_divinity_misc_group_indicators_desync_side_indicator = gui.Checkbox(gui_divinity_misc_group_indicators, "divinity_misc_group_indicators_desync_side_indicator", "Desync Side Indicator", false)
local gui_divinity_misc_group_indicators_desync_side_indicator_color_active = gui.ColorPicker(gui_divinity_misc_group_indicators_desync_side_indicator, "divinity_misc_group_indicators_desync_side_indicator_color_active", "", 0, 195, 235, 230)
local gui_divinity_misc_group_indicators_desync_side_indicator_color_not_active = gui.ColorPicker(gui_divinity_misc_group_indicators_desync_side_indicator, "divinity_misc_group_indicators_desync_side_indicator_color_not_active", "", 0, 0, 0, 125)
local gui_divinity_misc_group_indicators_manual_indicator = gui.Checkbox(gui_divinity_misc_group_indicators, "divinity_misc_group_indicators_manual_indicator", "Manual Indicator", false)
local gui_divinity_misc_group_indicators_manual_indicator_color_active = gui.ColorPicker(gui_divinity_misc_group_indicators_manual_indicator, "divinity_misc_group_indicators_manual_indicator_color_active", "", 0, 195, 235, 230)
local gui_divinity_misc_group_indicators_manual_indicator_color_not_active = gui.ColorPicker(gui_divinity_misc_group_indicators_manual_indicator, "divinity_misc_group_indicators_manual_indicator_color_not_active", "", 0, 0, 0, 125)
local gui_divinity_misc_group_indicators_skeet_indicator = gui.Checkbox(gui_divinity_misc_group_indicators, "divinity_misc_group_indicators_skeet_indicator", "Skeet Indicators", false)
local gui_divinity_misc_group_indicators_skeet_indicator_color= gui.ColorPicker(gui_divinity_misc_group_indicators_skeet_indicator, "divinity_misc_group_indicators_skeet_indicator_color", "", 0, 244, 0,255)
local gui_divinity_misc_group_indicators_skeet_indicator_old_fake = gui.Checkbox(gui_divinity_misc_group_indicators, "divinity_misc_group_indicators_skeet_indicator_old_fake", "Old Fake Indicator", false)
local gui_divinity_misc_group_indicators_skeet_indicator_filled_background = gui.Checkbox(gui_divinity_misc_group_indicators, "divinity_misc_group_indicators_skeet_indicator_filled_background", "Show Filled Background", false)
local gui_divinity_misc_group_indicators_skeet_indicator_position_x = gui.Slider(gui_divinity_misc_group_indicators, "divinity_misc_group_indicators_skeet_indicator_position_x", "Position X", 30, 0, ScreenWeight, 1)
local gui_divinity_misc_group_indicators_skeet_indicator_position_y = gui.Slider(gui_divinity_misc_group_indicators, "divinity_misc_group_indicators_skeet_indicator_position_y", "Position Y", 770, 0, ScreenHeight, 1)
--misc usefull features
local gui_divinity_misc_group_usefull_features_custom_hitsound = gui.Combobox(gui_divinity_misc_group_usefull_features, "divinity_misc_group_usefull_features_custom_hitsound", "Custom Hitsound", "Default", "Bell", "Bubble", "Button", "Cod", "Cookie", "Click", "Flick", "Laser", "Pop", "Stapler", "Spoon", "Quake")
local gui_divinity_misc_group_usefull_features_buybot = gui.Combobox(gui_divinity_misc_group_usefull_features, "divinity_misc_group_usefull_features_buybot", "Buybot", "Nothing", "Autosniper+deagle+extra", "AWP+deagle+extra", "Scout+deagle+extra", "Autosniper+elite+extra", "AWP+elite+extra", "Scout+elite+extra", "Deagle+extra", "Elite+extra", "Extra")
local gui_divinity_misc_group_usefull_features_clantag = gui.Combobox(gui_divinity_misc_group_usefull_features, "divinity_misc_group_usefull_features_clantag", "Clantag", "None", "Divinity")

--lua fonts
local fonts = {
    divinity_font = draw.CreateFont("Tahoma", 13, 750),
    divinity_font_2 = draw.CreateFont("Verdana", 12, 750),
    divinity_font_3 = draw.CreateFont("Tahoma", 11, 750),
    divinity_font_4 = draw.CreateFont("untitled-font-1", 16),
    skeet_indicator_font = draw.CreateFont("Verdana", 26, 800),
    watermark_font = draw.CreateFont("Verdana", 14, 750),
    damage_font = draw.CreateFont("Verdana", 13, 700)
}

print(" = = = = = = = = = = = = = = = =")
print("|      🧡🧡🧡🧡🧡🧡🧡🧡🧡     |")
print("|      🧡Please +REP me 🧡     |")
print("|      🧡i wanna 3 stars🧡     |")
print("|      🧡🧡🧡🧡🧡🧡🧡🧡🧡     |")
print(" = = = = = = = = = = = = = = = =")

--unlock inventoty acces
panorama.RunScript(
    [[LoadoutAPI.IsLoadoutAllowed = () => {return true;} ; ]]
)

--draw.features

--GradientRect
draw.GradientRect = function(posx, posy, length, size, r, g, b, a, y_rect, other_side)
    length=a/length
    if other_side == 0 and y_rect == 0 then 
        for i=a, 0, -length do
            draw.Color(r,g,b,i)
            draw.FilledRect(posx, posy, posx+length, posy-size)
            posx = posx+1
        end
    elseif other_side == 1 and y_rect == 0 then 
        for i=a, 0, -length do
            draw.Color(r,g,b,i)
            draw.FilledRect(posx, posy, posx-length, posy-size)
            posx = posx-1
        end
    end
    if other_side == 0 and y_rect == 1 then 
        for i=a, 0, -length do
            draw.Color(r,g,b,i)
            draw.FilledRect(posx, posy, posx-size, posy-length)
            posy = posy-1
        end
    elseif other_side == 1 and y_rect == 1  then 
        for i=a, 0, -length do
            draw.Color(r,g,b,i)
            draw.FilledRect(posx, posy, posx-size, posy+length)
            posy = posy+1
        end
    end
end

--TextOutlined
draw.TextOutlined = function(x, y, text, r, g, b, a)
    draw.Color(0, 0, 0, 255)

    draw.Text(x - 1, y - 1, text)
    draw.Text(x - 1, y, text)

    draw.Text(x - 1, y + 1, text)
    draw.Text(x, y + 1, text)

    draw.Text(x, y - 1, text)
    draw.Text(x + 1, y - 1, text)

    draw.Text(x + 1, y, text)
    draw.Text(x + 1, y + 1, text)

    draw.Color(r, g, b, a)

    draw.Text(x, y, text)
end

--edit divinity gui
local function gui_controller()
    local aimware_menu = gui.Reference( "Menu" )
    if not aimware_menu:IsActive() then
        gui_divinity_window:SetInvisible(true)
    else
        gui_divinity_window:SetInvisible(false)
    end

    --anti-aim
    if antiaim_tab_active == true then
        gui_divinity_buttons_group:SetInvisible(true)
        gui_divinity_rage_group_tickbase:SetInvisible(true)
        gui_divinity_rage_group_other:SetInvisible(true)
        gui_divinity_antiaim_group_main:SetInvisible(false)
        gui_divinity_antiaim_group_binds:SetInvisible(false)
        gui_divinity_antiaim_group_misc:SetInvisible(false)
        gui_divinity_visual_group_other:SetInvisible(true)
        gui_divinity_visual_group_world:SetInvisible(true)
        gui_divinity_misc_group_other:SetInvisible(true)
        gui_divinity_misc_group_usefull_features:SetInvisible(true)
        gui_divinity_misc_group_indicators:SetInvisible(true)
        gui_divinity_rage_group_flags:SetInvisible(true)
        gui_divinity_button_return:SetInvisible(false)
        gui_divinity_window:SetHeight(640)
    end

    --rage
    if rage_tab_active == true then

        if not gui_divinity_rage_group_other_adaptive_autoscope:GetValue() then
            gui_divinity_rage_group_other_noscope_hitchance:SetDisabled(true)
        else
            gui_divinity_rage_group_other_noscope_hitchance:SetDisabled(false)
        end

        if gui_divinity_rage_group_tickbase_standby_choke:GetValue() then
            gui_divinity_rage_group_tickbase_standby_choke_fakelag_slider:SetDisabled(false)
        else 
            gui_divinity_rage_group_tickbase_standby_choke_fakelag_slider:SetDisabled(true)
        end

        gui_divinity_buttons_group:SetInvisible(true)
        gui_divinity_rage_group_tickbase:SetInvisible(false)
        gui_divinity_rage_group_other:SetInvisible(false)
        gui_divinity_antiaim_group_main:SetInvisible(true)
        gui_divinity_antiaim_group_binds:SetInvisible(true)
        gui_divinity_antiaim_group_misc:SetInvisible(true)
        gui_divinity_misc_group_other:SetInvisible(true)
        gui_divinity_misc_group_usefull_features:SetInvisible(true)
        gui_divinity_misc_group_indicators:SetInvisible(true)
        gui_divinity_visual_group_other:SetInvisible(true)
        gui_divinity_visual_group_world:SetInvisible(true)
        gui_divinity_rage_group_flags:SetInvisible(false)
        gui_divinity_button_return:SetInvisible(false)
        gui_divinity_window:SetHeight(525)
    end

    --visual
    if visual_tab_active == true then

        if not gui_divinity_visual_group_other_custom_scope:GetValue() then
            gui_divinity_visual_group_other_custom_scope_height:SetDisabled(true)
            gui_divinity_visual_group_other_custom_scope_weight:SetDisabled(true)
            gui_divinity_visual_group_other_custom_scope_indent:SetDisabled(true)
        else
            gui_divinity_visual_group_other_custom_scope_height:SetDisabled(false)
            gui_divinity_visual_group_other_custom_scope_weight:SetDisabled(false)
            gui_divinity_visual_group_other_custom_scope_indent:SetDisabled(false)
        end

        invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:SetInvisible(true)
        invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:SetInvisible(true)
        invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:SetInvisible(true)
        invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:SetInvisible(true)
        invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:SetInvisible(true)
        invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:SetInvisible(true)
        invisible_gui.gui_divinity_visual_group_other_watermark_position_x:SetInvisible(true)
        invisible_gui.gui_divinity_visual_group_other_watermark_position_y:SetInvisible(true)

        if  gui_divinity_visual_group_world_bomb:GetValue()  == 0 then
            gui_divinity_visual_group_world_bomb_position_x:SetDisabled(true)
            gui_divinity_visual_group_world_bomb_position_y:SetDisabled(true)
        else
            gui_divinity_visual_group_world_bomb_position_x:SetDisabled(false)
            gui_divinity_visual_group_world_bomb_position_y:SetDisabled(false)
        end

        if not gui_divinity_visual_group_other_damage_marker:GetValue() then
            gui_divinity_visual_group_other_health_marker:SetDisabled(true)
        else
            gui_divinity_visual_group_other_health_marker:SetDisabled(false)
        end

        gui_divinity_buttons_group:SetInvisible(true)
        gui_divinity_rage_group_tickbase:SetInvisible(true)
        gui_divinity_rage_group_other:SetInvisible(true)
        gui_divinity_antiaim_group_main:SetInvisible(true)
        gui_divinity_antiaim_group_binds:SetInvisible(true)
        gui_divinity_antiaim_group_misc:SetInvisible(true)
        gui_divinity_visual_group_other:SetInvisible(false)
        gui_divinity_misc_group_other:SetInvisible(true)
        gui_divinity_misc_group_usefull_features:SetInvisible(true)
        gui_divinity_misc_group_indicators:SetInvisible(true)
        gui_divinity_visual_group_world:SetInvisible(false)
        gui_divinity_rage_group_flags:SetInvisible(true)
        gui_divinity_button_return:SetInvisible(false)
        gui_divinity_window:SetHeight(705)
    end

    --misc
    if misc_tab_active == true then

        if not gui_divinity_misc_group_other_better_thirdperson:GetValue() then
            gui_divinity_misc_group_other_better_thirdperson_enabler:SetDisabled(true)
            gui_divinity_misc_group_other_better_thirdperson_distance:SetDisabled(true)
        else
            gui_divinity_misc_group_other_better_thirdperson_enabler:SetDisabled(false)
            gui_divinity_misc_group_other_better_thirdperson_distance:SetDisabled(false)
        end

        if not gui_divinity_misc_group_indicators_skeet_indicator:GetValue() then
            gui_divinity_misc_group_indicators_skeet_indicator_filled_background:SetDisabled(true)
            gui_divinity_misc_group_indicators_skeet_indicator_old_fake:SetDisabled(true)
            gui_divinity_misc_group_indicators_skeet_indicator_position_x:SetDisabled(true)
            gui_divinity_misc_group_indicators_skeet_indicator_position_y:SetDisabled(true)
        else
            gui_divinity_misc_group_indicators_skeet_indicator_filled_background:SetDisabled(false)
            gui_divinity_misc_group_indicators_skeet_indicator_old_fake:SetDisabled(false)
            gui_divinity_misc_group_indicators_skeet_indicator_position_x:SetDisabled(false)
            gui_divinity_misc_group_indicators_skeet_indicator_position_y:SetDisabled(false)
        end

        if not gui_divinity_misc_group_other_viewmodel_changer:GetValue() then
            gui_divinity_misc_group_other_viewmodel_changer_x:SetDisabled(true)
            gui_divinity_misc_group_other_viewmodel_changer_y:SetDisabled(true)
            gui_divinity_misc_group_other_viewmodel_changer_z:SetDisabled(true)
        else
            gui_divinity_misc_group_other_viewmodel_changer_x:SetDisabled(false)
            gui_divinity_misc_group_other_viewmodel_changer_y:SetDisabled(false)
            gui_divinity_misc_group_other_viewmodel_changer_z:SetDisabled(false)
        end

        gui_divinity_buttons_group:SetInvisible(true)
        gui_divinity_rage_group_tickbase:SetInvisible(true)
        gui_divinity_rage_group_other:SetInvisible(true)
        gui_divinity_antiaim_group_main:SetInvisible(true)
        gui_divinity_antiaim_group_binds:SetInvisible(true)
        gui_divinity_visual_group_other:SetInvisible(true)
        gui_divinity_visual_group_world:SetInvisible(true)
        gui_divinity_antiaim_group_misc:SetInvisible(true)
        gui_divinity_misc_group_other:SetInvisible(false)
        gui_divinity_misc_group_usefull_features:SetInvisible(false)
        gui_divinity_misc_group_indicators:SetInvisible(false)
        gui_divinity_rage_group_flags:SetInvisible(true)
        gui_divinity_button_return:SetInvisible(false)
        gui_divinity_window:SetHeight(650)
    end

    --return to main gui
    if returnkey == 1 then
        misc_tab_active = false
        antiaim_tab_active = false
        rage_tab_active = false
        visual_tab_active = false
        gui_divinity_button_return:SetInvisible(true)
        gui_divinity_buttons_group:SetInvisible(false)
        gui_divinity_rage_group_tickbase:SetInvisible(true)
        gui_divinity_rage_group_other:SetInvisible(true)
        gui_divinity_antiaim_group_main:SetInvisible(true)
        gui_divinity_antiaim_group_binds:SetInvisible(true)
        gui_divinity_misc_group_other:SetInvisible(true)
        gui_divinity_misc_group_usefull_features:SetInvisible(true)
        gui_divinity_misc_group_indicators:SetInvisible(true)
        gui_divinity_antiaim_group_misc:SetInvisible(true)
        gui_divinity_visual_group_other:SetInvisible(true)
        gui_divinity_visual_group_world:SetInvisible(true)
        gui_divinity_rage_group_flags:SetInvisible(true)
        gui_divinity_window:SetHeight(450)
        returnkey = 0
    end

    --anti-aim gui controller
    if gui_divinity_antiaim_group_main_conditionselector:GetValue()==0 then
        gui_divinity_antiaim_group_main_desynctype_standing:SetInvisible(false)
        gui_divinity_antiaim_group_main_desynctype_slowwalking:SetInvisible(true)
        gui_divinity_antiaim_group_main_desynctype_moving:SetInvisible(true)
        gui_divinity_antiaim_group_main_desynctype_inair:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_standing_right:SetInvisible(false)
        gui_divinity_antiaim_group_main_desyncrange_standing_left:SetInvisible(false)
        gui_divinity_antiaim_group_main_desyncrange_slowwalking_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_slowwalking_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_moving_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_moving_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_inair_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_inair_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifier_standing:SetInvisible(false)
        gui_divinity_antiaim_group_main_yawmodifier_slowwalking:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifier_moving:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifier_inair:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierrange_standing:SetInvisible(false)
        gui_divinity_antiaim_group_main_yawmodifierspeed_standing:SetInvisible(false)
        gui_divinity_antiaim_group_main_yaw_standing_right:SetInvisible(false)
        gui_divinity_antiaim_group_main_yaw_standing_left:SetInvisible(false)
        gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_slowwalking_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_slowwalking_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierrange_moving:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierspeed_moving:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_moving_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_moving_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierrange_inair:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierspeed_inair:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_inair_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_inair_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_set_standing_as_general:SetInvisible(false)
    elseif gui_divinity_antiaim_group_main_conditionselector:GetValue()==1 then
        gui_divinity_antiaim_group_main_desynctype_slowwalking:SetInvisible(false)
        gui_divinity_antiaim_group_main_desynctype_standing:SetInvisible(true)
        gui_divinity_antiaim_group_main_desynctype_moving:SetInvisible(true)
        gui_divinity_antiaim_group_main_desynctype_inair:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_slowwalking_right:SetInvisible(false)
        gui_divinity_antiaim_group_main_desyncrange_slowwalking_left:SetInvisible(false)
        gui_divinity_antiaim_group_main_desyncrange_standing_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_standing_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_moving_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_moving_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_inair_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_inair_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifier_slowwalking:SetInvisible(false)
        gui_divinity_antiaim_group_main_yawmodifier_standing:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifier_moving:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifier_inair:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:SetInvisible(false)
        gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:SetInvisible(false)
        gui_divinity_antiaim_group_main_yaw_slowwalking_right:SetInvisible(false)
        gui_divinity_antiaim_group_main_yaw_slowwalking_left:SetInvisible(false)
        gui_divinity_antiaim_group_main_yawmodifierrange_standing:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierspeed_standing:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_standing_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_standing_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierrange_moving:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierspeed_moving:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_moving_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_moving_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierrange_inair:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierspeed_inair:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_inair_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_inair_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_set_standing_as_general:SetInvisible(true)
    elseif gui_divinity_antiaim_group_main_conditionselector:GetValue()==2 then
        gui_divinity_antiaim_group_main_desynctype_moving:SetInvisible(false)
        gui_divinity_antiaim_group_main_desynctype_slowwalking:SetInvisible(true)
        gui_divinity_antiaim_group_main_desynctype_standing:SetInvisible(true)
        gui_divinity_antiaim_group_main_desynctype_inair:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_moving_right:SetInvisible(false)
        gui_divinity_antiaim_group_main_desyncrange_moving_left:SetInvisible(false)
        gui_divinity_antiaim_group_main_desyncrange_standing_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_standing_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_slowwalking_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_slowwalking_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_inair_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_inair_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifier_moving:SetInvisible(false)
        gui_divinity_antiaim_group_main_yawmodifier_standing:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifier_slowwalking:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifier_inair:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierrange_moving:SetInvisible(false)
        gui_divinity_antiaim_group_main_yawmodifierspeed_moving:SetInvisible(false)
        gui_divinity_antiaim_group_main_yaw_moving_right:SetInvisible(false)
        gui_divinity_antiaim_group_main_yaw_moving_left:SetInvisible(false)
        gui_divinity_antiaim_group_main_yawmodifierrange_standing:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierspeed_standing:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_standing_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_standing_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_slowwalking_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_slowwalking_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierrange_inair:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierspeed_inair:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_inair_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_inair_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_set_standing_as_general:SetInvisible(true)
    elseif gui_divinity_antiaim_group_main_conditionselector:GetValue()==3 then
        gui_divinity_antiaim_group_main_desynctype_inair:SetInvisible(false)
        gui_divinity_antiaim_group_main_desynctype_moving:SetInvisible(true)
        gui_divinity_antiaim_group_main_desynctype_slowwalking:SetInvisible(true)
        gui_divinity_antiaim_group_main_desynctype_standing:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_inair_right:SetInvisible(false)
        gui_divinity_antiaim_group_main_desyncrange_inair_left:SetInvisible(false)
        gui_divinity_antiaim_group_main_desyncrange_standing_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_standing_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_slowwalking_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_slowwalking_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_moving_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_desyncrange_moving_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifier_inair:SetInvisible(false)
        gui_divinity_antiaim_group_main_yawmodifier_standing:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifier_slowwalking:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifier_moving:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierrange_inair:SetInvisible(false)
        gui_divinity_antiaim_group_main_yawmodifierspeed_inair:SetInvisible(false)
        gui_divinity_antiaim_group_main_yaw_inair_right:SetInvisible(false)
        gui_divinity_antiaim_group_main_yaw_inair_left:SetInvisible(false)
        gui_divinity_antiaim_group_main_yawmodifierrange_standing:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierspeed_standing:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_standing_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_standing_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_slowwalking_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_slowwalking_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierrange_moving:SetInvisible(true)
        gui_divinity_antiaim_group_main_yawmodifierspeed_moving:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_moving_right:SetInvisible(true)
        gui_divinity_antiaim_group_main_yaw_moving_left:SetInvisible(true)
        gui_divinity_antiaim_group_main_set_standing_as_general:SetInvisible(true)
    end
end
callbacks.Register("Draw", gui_controller)

--get aimbot targer
callbacks.Register("AimbotTarget", function(target)
    if target:GetIndex() then
        aimbot_target = target
        has_target = true
    else
        aimbot_target = nil
        has_target = false
    end
end)

--get distance to target
local distance = 0
local function target_distance()
    local local_entity = entities:GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end
    if aimbot_target ~= nil then
       target_origin = aimbot_target:GetAbsOrigin()
       local_origin = local_entity:GetAbsOrigin()
       distance = (vector.Distance({local_origin.x, local_origin.y, local_origin.z}, {target_origin.x, target_origin.y, target_origin.z}))
    end
end
callbacks.Register("CreateMove", target_distance);

--base of the script control all conditions
local function conditions()
    local local_entity = entities:GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end
    
    local inaircheck = local_entity:GetPropBool("m_fFlags")
    local localplayervelocity = local_entity:GetPropVector("localdata", "m_vecVelocity[0]"):Length()
    local inaccuracy = local_entity:GetWeaponInaccuracy()
    local localplayerweapon = local_entity:GetWeaponID()
    local slowwalkkey = gui.GetValue("rbot.accuracy.movement.slowkey")
    local fakeduckkey = gui.GetValue("rbot.antiaim.extra.fakecrouchkey")
    local hideshotson = gui.GetValue("rbot.antiaim.condition.shiftonshot")

    if gui_divinity_antiaim_group_main_set_standing_as_general:GetValue() or (localplayervelocity <= gui_divinity_antiaim_group_misc_standvelocitythreshold:GetValue() and not (inaircheck == false or (input.IsButtonDown(32) and input.IsButtonDown(17))) and gui.GetValue("rbot.accuracy.movement.slowkey") ~= 0 and not input.IsButtonDown(slowwalkkey)) then
        localplayerstanding = true
        localplayerslowwalking = false
        localplayermoving = false
        localplayerinair = false
    elseif localplayervelocity > gui_divinity_antiaim_group_misc_standvelocitythreshold:GetValue() and gui.GetValue("rbot.accuracy.movement.slowkey") ~= 0 and not input.IsButtonDown(slowwalkkey) and not (inaircheck == false or (input.IsButtonDown(32) and input.IsButtonDown(17))) and not gui_divinity_antiaim_group_main_set_standing_as_general:GetValue() then
        localplayerstanding = false
        localplayerslowwalking = false
        localplayermoving = true
        localplayerinair = false
    elseif gui.GetValue("rbot.accuracy.movement.slowkey") ~= 0 and input.IsButtonDown(slowwalkkey) and not (inaircheck == false or (input.IsButtonDown(32) and input.IsButtonDown(17))) and localplayervelocity >= 10 and not gui_divinity_antiaim_group_main_set_standing_as_general:GetValue() then
        localplayerstanding = false
        localplayerslowwalking = true
        localplayermoving = false
        localplayerinair = false
    elseif (inaircheck == false or (input.IsButtonDown(32) and input.IsButtonDown(17))) and not gui_divinity_antiaim_group_main_set_standing_as_general:GetValue() then
        localplayerstanding = false
        localplayerslowwalking = false
        localplayermoving = false
        localplayerinair = true   
    end
    
    if localplayerweapon == 2 or localplayerweapon == 3 or localplayerweapon == 4 or localplayerweapon == 30 or localplayerweapon == 32 or localplayerweapon == 36 or localplayerweapon == 61 or localplayerweapon == 63 then
        weaponclass = "pistol"
    elseif localplayerweapon == 9 then
        weaponclass = "sniper"
    elseif localplayerweapon == 40 then
        weaponclass = "scout"
    elseif localplayerweapon == 1 then
        weaponclass = "hpistol"
    elseif localplayerweapon == 17 or localplayerweapon == 19 or localplayerweapon == 23 or localplayerweapon == 24 or localplayerweapon == 26 or localplayerweapon == 33 or localplayerweapon == 34 then
        weaponclass = "smg"
    elseif localplayerweapon == 7 or localplayerweapon == 8 or localplayerweapon == 10 or localplayerweapon == 13 or localplayerweapon == 16 or localplayerweapon == 39 or localplayerweapon == 61 then
        weaponclass = "rifle"
    elseif localplayerweapon == 25 or localplayerweapon == 27 or localplayerweapon == 29 or localplayerweapon == 35 then
        weaponclass = "shotgun"
    elseif localplayerweapon == 38 or localplayerweapon == 11 then
        weaponclass = "asniper"
    elseif localplayerweapon == 28 or localplayerweapon == 14 then
        weaponclass = "lmg"
    elseif localplayerweapon == 505 or localplayerweapon == 506 or localplayerweapon == 507 or localplayerweapon == 508 or localplayerweapon == 509 or localplayerweapon == 510 or localplayerweapon == 511 or localplayerweapon == 512 or localplayerweapon == 513 or localplayerweapon == 514 or localplayerweapon == 515 or localplayerweapon == 516 or localplayerweapon == 517 or localplayerweapon == 518 or localplayerweapon == 519 or localplayerweapon == 520 or localplayerweapon == 521 or localplayerweapon == 522 or localplayerweapon == 523 or localplayerweapon == 524 then
        weaponclass = "knife"
    else
        weaponclass = "shared"
    end

    if gui.GetValue("rbot.accuracy.weapon."..weaponclass..".doublefire") == 1 or gui.GetValue("rbot.accuracy.weapon."..weaponclass..".doublefire") == 2 then
        DtIsActive = true
    else
        DtIsActive = false
    end
    if fakeduckkey ~= 0 and input.IsButtonDown(fakeduckkey) == true then
       FdIsActive = true
       ExploitIsActive = false
       ForceFakelagIsActive = false
    elseif fakeduckkey ~= 0 and input.IsButtonDown(fakeduckkey) == false and (DtIsActive == true or hideshotson)  then
       ExploitIsActive = true
       FdIsActive = false
       ForceFakelagIsActive = false
    else
       ExploitIsActive = false
       FdIsActive = false
       ForceFakelagIsActive = true
    end
end
callbacks.Register("CreateMove", conditions)

--allow change your antiaim.base
function ChangeYaw(yaw)
    while yaw > 180 do yaw = yaw - 360 end
    while yaw < -180 do yaw = yaw + 360 end
    return yaw
end

local jitter_yaw = 0
local speenbot_yaw_helper = 0
local rotating_yaw_helper = 0

--all jitters
local function anti_aim_main_yaw( ... )
    local local_entity = entities:GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end
    --static
    if gui.GetValue("rbot.antiaim.base.rotation") < 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 0 then
            jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_standing_right:GetValue())
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 0 then
            jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue())
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 0 then 
            jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_moving_right:GetValue())
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 0 then
            jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_inair_right:GetValue())
        end
    elseif gui.GetValue("rbot.antiaim.base.rotation") >= 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 0 then
            jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_standing_left:GetValue())
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 0 then
            jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue())
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 0 then 
            jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_moving_left:GetValue())
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 0 then
            jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_inair_left:GetValue())
        end
    end

    --center
    if gui.GetValue("rbot.antiaim.base.rotation") < 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 1 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_standing_right:GetValue()-(gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue()/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_standing_right:GetValue()+(gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue()/2))
            end
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 1 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue() == 0 then
               jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue()-(gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue()/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue()+(gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue()/2))
            end
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 1 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_moving_right:GetValue()-(gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue()/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_moving_right:GetValue()+(gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue()/2))
            end
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 1 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_inair_right:GetValue()-(gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue()/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_inair_right:GetValue()+(gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue()/2))
            end
        end
    elseif gui.GetValue("rbot.antiaim.base.rotation") >= 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 1 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_standing_left:GetValue()-(gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue()/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_standing_left:GetValue()+(gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue()/2))
            end
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 1 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue() == 0 then
               jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue()-(gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue()/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue()+(gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue()/2))
            end
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 1 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_moving_left:GetValue()-(gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue()/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_moving_left:GetValue()+(gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue()/2))
            end
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 1 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_inair_left:GetValue()-(gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue()/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_inair_left:GetValue()+(gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue()/2))
            end
        end
    end

    --random
    if gui.GetValue("rbot.antiaim.base.rotation") < 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 2 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_standing_right:GetValue()-(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue())/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_standing_right:GetValue()+(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue())/2))
            end
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 2 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue()-(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue())/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue()+(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue())/2))
            end
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 2 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_moving_right:GetValue()-(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue())/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_moving_right:GetValue()+(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue())/2))
            end
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 2 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_inair_right:GetValue()-(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue())/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_inair_right:GetValue()+(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue())/2))
            end
        end
    elseif gui.GetValue("rbot.antiaim.base.rotation") >= 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 2 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_standing_left:GetValue()-(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue())/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_standing_left:GetValue()+(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue())/2))
            end
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 2 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue()-(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue())/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue()+(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue())/2))
            end
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 2 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_moving_left:GetValue()-(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue())/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_moving_left:GetValue()+(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue())/2))
            end
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 2 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_inair_left:GetValue()-(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue())/2))
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_inair_left:GetValue()+(math.random(0,gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue())/2))
            end
        end
    end

    --speenbot
    if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 3 and gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue() ~= 0 then
        speenbot_yaw_helper = speenbot_yaw_helper-(gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue()/2)
        jitter_yaw = ChangeYaw(speenbot_yaw_helper)
    elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 3 and gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue() ~= 0 then
        speenbot_yaw_helper = speenbot_yaw_helper-(gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue()/2)
        jitter_yaw = ChangeYaw(speenbot_yaw_helper)
    elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 3 and gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue() ~= 0 then
        speenbot_yaw_helper = speenbot_yaw_helper-(gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue()/2)
        jitter_yaw = ChangeYaw(speenbot_yaw_helper)
    elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 3 and gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue() ~= 0 then
        speenbot_yaw_helper = speenbot_yaw_helper-(gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue()/2)
        jitter_yaw = ChangeYaw(speenbot_yaw_helper)
    end 

    --rotation
    if gui.GetValue("rbot.antiaim.base.rotation") < 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 4 then
            if math.abs(rotating_yaw_helper)~=gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue() and globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue() == 0 then 
                rotating_yaw_helper = rotating_yaw_helper - 1
                jitter_yaw = ChangeYaw(180-rotating_yaw_helper-gui_divinity_antiaim_group_main_yaw_standing_right:GetValue())
            elseif math.abs(rotating_yaw_helper) >= gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue() then
                rotating_yaw_helper = 0
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_standing_right:GetValue())
            end 
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 4 then
            if math.abs(rotating_yaw_helper)~=gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue() and globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue() == 0 then 
                rotating_yaw_helper = rotating_yaw_helper-1
                jitter_yaw = ChangeYaw(180-rotating_yaw_helper-gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue())
            elseif math.abs(rotating_yaw_helper) >= gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue() then
                rotating_yaw_helper = 0
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue())
            end
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 4 then
            if math.abs(rotating_yaw_helper)~=gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue() and globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue() == 0 then 
                rotating_yaw_helper = rotating_yaw_helper-1
                jitter_yaw = ChangeYaw(180-rotating_yaw_helper-gui_divinity_antiaim_group_main_yaw_moving_right:GetValue())
            elseif math.abs(rotating_yaw_helper) >= gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue() then
                rotating_yaw_helper = 0
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_moving_right:GetValue())
            end
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 4 then
            if math.abs(rotating_yaw_helper)~=gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue() and globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue() == 0 then 
                rotating_yaw_helper = rotating_yaw_helper-1
                jitter_yaw = ChangeYaw(180-rotating_yaw_helper-gui_divinity_antiaim_group_main_yaw_inair_right:GetValue())
            elseif math.abs(rotating_yaw_helper) >= gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue() then
                rotating_yaw_helper = 0
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_inair_right:GetValue()) 
            end
        end 
    elseif gui.GetValue("rbot.antiaim.base.rotation") >= 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 4 then
            if math.abs(rotating_yaw_helper)~=gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue() and globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue() == 0 then 
                rotating_yaw_helper = rotating_yaw_helper - 1
                jitter_yaw = ChangeYaw(180-rotating_yaw_helper-gui_divinity_antiaim_group_main_yaw_standing_left:GetValue())
            elseif math.abs(rotating_yaw_helper) >= gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue() then
                rotating_yaw_helper = 0
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_standing_left:GetValue())
            end 
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 4 then
            if math.abs(rotating_yaw_helper)~=gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue() and globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue() == 0 then 
                rotating_yaw_helper = rotating_yaw_helper-1
                jitter_yaw = ChangeYaw(180-rotating_yaw_helper-gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue())
            elseif math.abs(rotating_yaw_helper) >= gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue() then
                rotating_yaw_helper = 0
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue())
            end
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 4 then
            if math.abs(rotating_yaw_helper)~=gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue() and globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue() == 0 then 
                rotating_yaw_helper = rotating_yaw_helper-1
                jitter_yaw = ChangeYaw(180-rotating_yaw_helper-gui_divinity_antiaim_group_main_yaw_moving_left:GetValue())
            elseif math.abs(rotating_yaw_helper) >= gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue() then
                rotating_yaw_helper = 0
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_moving_left:GetValue())
            end
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 4 then
            if math.abs(rotating_yaw_helper)~=gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue() and globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue() == 0 then 
                rotating_yaw_helper = rotating_yaw_helper-1
                jitter_yaw = ChangeYaw(180-rotating_yaw_helper-gui_divinity_antiaim_group_main_yaw_inair_left:GetValue())
            elseif math.abs(rotating_yaw_helper) >= gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue() then
                rotating_yaw_helper = 0
                jitter_yaw = ChangeYaw(180-gui_divinity_antiaim_group_main_yaw_inair_left:GetValue()) 
            end
        end
    end

    --fake-flick
    if gui.GetValue("rbot.antiaim.base.rotation") < 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 5 then
            if globals.TickCount()%17 == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_standing_right:GetValue())+90)
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_standing_right:GetValue())
            end
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 5 then
            if globals.TickCount()%17 == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue())+90)
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue())
            end
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 5 then
            if globals.TickCount()%17 == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_moving_right:GetValue())+90)
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_moving_right:GetValue())
            end
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 5 then
            if globals.TickCount()%17 == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_inair_right:GetValue())+90)
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_inair_right:GetValue())
            end
        end
    elseif gui.GetValue("rbot.antiaim.base.rotation") >= 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 5 then
            if globals.TickCount()%17 == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_standing_left:GetValue())-90)
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_standing_left:GetValue())
            end
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 5 then
            if globals.TickCount()%17 == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue())-90)
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue())
            end
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 5 then
            if globals.TickCount()%17 == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_moving_left:GetValue())-90)
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_moving_left:GetValue())
            end
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 5 then
            if globals.TickCount()%17 == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_inair_left:GetValue())-90)
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_inair_left:GetValue())
            end
        end
    end

    --custom fake-flick
    if gui.GetValue("rbot.antiaim.base.rotation") < 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 6 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_standing_right:GetValue())+gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue())
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_standing_right:GetValue())
            end
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 6 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue())+gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue())
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue())
            end
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 6 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_moving_right:GetValue())+gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue())
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_moving_right:GetValue())
            end
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 6 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_inair_right:GetValue())+gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue())
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_inair_right:GetValue())
            end
        end
    elseif gui.GetValue("rbot.antiaim.base.rotation") >= 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 6 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_standing_left:GetValue())-gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue())
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_standing_left:GetValue())
            end
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 6 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue())-gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue())
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue())
            end
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 6 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_moving_left:GetValue())-gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue())
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_moving_left:GetValue())
            end
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 6 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_inair_left:GetValue())-gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue())
            elseif globals.TickCount()%1 == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_inair_left:GetValue())
            end
        end
    end

    --tank jitter
    if gui.GetValue("rbot.antiaim.base.rotation") < 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 7 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_standing_right:GetValue())+gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue())
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_standing_right:GetValue())
            end
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 7 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue())+gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue())
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_slowwalking_right:GetValue())
            end
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 7 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_moving_right:GetValue())+gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue())
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_moving_right:GetValue())
            end
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 7 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_inair_right:GetValue())+gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue())
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_inair_right:GetValue())
            end
        end
    elseif gui.GetValue("rbot.antiaim.base.rotation") >= 0 then
        if localplayerstanding == true and gui_divinity_antiaim_group_main_yawmodifier_standing:GetValue() == 7 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue() == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_standing_left:GetValue())
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_standing:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_standing_left:GetValue())-gui_divinity_antiaim_group_main_yawmodifierrange_standing:GetValue())
            end
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_yawmodifier_slowwalking:GetValue() == 7 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue())-gui_divinity_antiaim_group_main_yawmodifierrange_slowwalking:GetValue())
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_slowwalking:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_slowwalking_left:GetValue())
            end
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_yawmodifier_moving:GetValue() == 7 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_moving_left:GetValue())-gui_divinity_antiaim_group_main_yawmodifierrange_moving:GetValue())
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_moving:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_moving_left:GetValue())
            end
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_yawmodifier_inair:GetValue() == 7 then
            if globals.TickCount()%gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue() == 0 then
                jitter_yaw = ChangeYaw((180-gui_divinity_antiaim_group_main_yaw_inair_left:GetValue())-gui_divinity_antiaim_group_main_yawmodifierrange_inair:GetValue())
            end
            if globals.TickCount()%(gui_divinity_antiaim_group_main_yawmodifierspeed_inair:GetValue()*2) == 0 then
                jitter_yaw = ChangeYaw(180 - gui_divinity_antiaim_group_main_yaw_inair_left:GetValue())
            end
        end
    end
    gui.SetValue("rbot.antiaim.base", jitter_yaw)
end  
callbacks.Register("CreateMove", anti_aim_main_yaw)

--all desync modifiers
function anti_aim_main_desync()
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end
        --desync jitter
    if localplayerstanding == true and gui_divinity_antiaim_group_main_desynctype_standing:GetValue() == 1 then
        if globals.TickCount()%2 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", gui_divinity_antiaim_group_main_desyncrange_standing_left:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random_inverted)
        end
        if globals.TickCount()%4 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", -gui_divinity_antiaim_group_main_desyncrange_standing_right:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random)
        end
    elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_desynctype_slowwalking:GetValue() == 1 then
        if globals.TickCount()%2 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", gui_divinity_antiaim_group_main_desyncrange_slowwalking_left:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random_inverted)
        end
        if globals.TickCount()%4 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", -gui_divinity_antiaim_group_main_desyncrange_slowwalking_right:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random)
        end
    elseif localplayermoving == true and gui_divinity_antiaim_group_main_desynctype_moving:GetValue() == 1 then
        if globals.TickCount()%2 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", gui_divinity_antiaim_group_main_desyncrange_moving_left:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random_inverted)
        end
        if globals.TickCount()%4 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", -gui_divinity_antiaim_group_main_desyncrange_moving_right:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random)
        end
    elseif localplayerinair == true and gui_divinity_antiaim_group_main_desynctype_inair:GetValue() == 1 then
        if globals.TickCount()%2 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", gui_divinity_antiaim_group_main_desyncrange_inair_left:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random_inverted)
        end
        if globals.TickCount()%4 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", -gui_divinity_antiaim_group_main_desyncrange_inair_right:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random)
        end
    end
    --3-side desync jitter
    if localplayerstanding == true and gui_divinity_antiaim_group_main_desynctype_standing:GetValue() == 2 then
        if globals.TickCount()%2 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", gui_divinity_antiaim_group_main_desyncrange_standing_left:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random_inverted)
        end
        if globals.TickCount()%4 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", 0)
        end
        if globals.TickCount()%6 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", -gui_divinity_antiaim_group_main_desyncrange_standing_right:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random)
        end
    elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_desynctype_slowwalking:GetValue() == 2 then
        if globals.TickCount()%2 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", gui_divinity_antiaim_group_main_desyncrange_slowwalking_left:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random_inverted)
        end
        if globals.TickCount()%4 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", 0)
        end
        if globals.TickCount()%6 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", -gui_divinity_antiaim_group_main_desyncrange_slowwalking_right:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random)
        end
    elseif localplayermoving == true and gui_divinity_antiaim_group_main_desynctype_moving:GetValue() == 2 then
        if globals.TickCount()%2 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", gui_divinity_antiaim_group_main_desyncrange_moving_left:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random_inverted)
        end
        if globals.TickCount()%4 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", 0)
        end
        if globals.TickCount()%6 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", -gui_divinity_antiaim_group_main_desyncrange_moving_right:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random)
        end
    elseif localplayerinair == true and gui_divinity_antiaim_group_main_desynctype_inair:GetValue() == 2 then
        if globals.TickCount()%2 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", gui_divinity_antiaim_group_main_desyncrange_inair_left:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random_inverted)
        end
        if globals.TickCount()%4 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", 0)
        end
        if globals.TickCount()%6 == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", -gui_divinity_antiaim_group_main_desyncrange_inair_right:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random)
        end
    end
end
callbacks.Register('CreateMove', anti_aim_main_desync)

local should_switch = false
function anti_bruteforce(event)
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end
    if event then
        if gui_divinity_antiaim_group_misc_anti_bruteforce:GetValue() == 1 or gui_divinity_antiaim_group_misc_anti_bruteforce:GetValue() == 3 then
            if event:GetName() ~= nil and event:GetName() == "weapon_fire" then
                if client.GetLocalPlayerIndex() == client.GetPlayerIndexByUserID(event:GetInt("userid")) then
                    should_switch = true
                end
            end
        end
        if gui_divinity_antiaim_group_misc_anti_bruteforce:GetValue() == 2 or gui_divinity_antiaim_group_misc_anti_bruteforce:GetValue() == 3 then
            if event:GetName() ~= nil and event:GetName() == "bullet_impact" then
                if client.GetLocalPlayerIndex() ~= client.GetPlayerIndexByUserID(event:GetInt("userid")) then
                    local impact_x = event:GetFloat("x")
                    local impact_y = event:GetFloat("y")
                    local impact_z = event:GetFloat("z")
                    local local_abs = local_entity:GetAbsOrigin()
                    local impact_distance = math.sqrt(((impact_x - local_abs.x) * (impact_x - local_abs.x)) - ((impact_z - local_abs.z) * (impact_z - local_abs.z)))
                    local trace = engine.TraceLine(Vector3(impact_x, impact_y, impact_z), local_abs).contents
                    if impact_distance <= 150 and trace == 0 then
                        should_switch = true
                    end
                end
            end
        end
    end
end
client.AllowListener("weapon_fire");
callbacks.Register("FireGameEvent", anti_bruteforce);
callbacks.Register("Draw", anti_bruteforce);

--roll anti-aims(mega lean)
local function rollaa(cmd)
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end
    if (localplayerstanding == true and gui_divinity_antiaim_group_main_desynctype_standing:GetValue() == 3) or (localplayerslowwalking == true and gui_divinity_antiaim_group_main_desynctype_slowwalking:GetValue() == 3) then
        if gui.GetValue('rbot.antiaim.base.rotation') < 0 then
            cmd.viewangles = EulerAngles(cmd.viewangles.x, cmd.viewangles.y, -41)
        elseif gui.GetValue('rbot.antiaim.base.rotation') >= 0 then
            cmd.viewangles = EulerAngles(cmd.viewangles.x, cmd.viewangles.y, 37)
        end
    end
end
callbacks.Register('CreateMove', rollaa)        


local manual_left = 0
local manual_back = 0
local manual_right = 0
local inverted_desync = 0

--change all anti-aim binds, like manual aa, anti-aim inverter and other stuff
local function anti_aim_binds()
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end
    
    -- anti bruteforce
    if should_switch == true then
        if inverted_desync == 0 then
            inverted_desync = 1
            should_switch = false 
        elseif inverted_desync == 1 then
            inverted_desync = 0
            should_switch = false 
        end
    end

    local disableconditiononuse = gui.Reference("Ragebot", "Anti-Aim", "Condition", "Disable Conditions", "On Use")

    --more effective use random lby
    if globals.TickCount()%256 == 0 then
        lby_random = math.random(40, 180)
        lby_random_inverted = math.random(-180, -40)
    end

    --disable lby on exploit
    if ExploitIsActive == true then
        gui.SetValue("rbot.antiaim.advanced.antialign", 1)
    elseif ForceFakelagIsActive == true then
        gui.SetValue("rbot.antiaim.advanced.antialign", 0)
    end

    --aa inverter
    if gui_divinity_antiaim_group_binds_desync_inverter_key:GetValue() ~= 0 and input.IsButtonPressed(gui_divinity_antiaim_group_binds_desync_inverter_key:GetValue()) then
        inverted_desync = inverted_desync == 0 and 1 or 0
    end

    if inverted_desync == 0 then 
        if localplayerstanding == true and (gui_divinity_antiaim_group_main_desynctype_standing:GetValue() == 0 or gui_divinity_antiaim_group_main_desynctype_standing:GetValue() == 3)  then
            gui.SetValue("rbot.antiaim.base.rotation", -gui_divinity_antiaim_group_main_desyncrange_standing_right:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random)
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_desynctype_slowwalking:GetValue() == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", -gui_divinity_antiaim_group_main_desyncrange_slowwalking_right:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random)
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_desynctype_moving:GetValue() == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", -gui_divinity_antiaim_group_main_desyncrange_moving_right:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random)
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_desynctype_inair:GetValue() == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", -gui_divinity_antiaim_group_main_desyncrange_inair_right:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random)
        end
    elseif inverted_desync == 1 then 
        if localplayerstanding == true and (gui_divinity_antiaim_group_main_desynctype_standing:GetValue() == 0 or gui_divinity_antiaim_group_main_desynctype_standing:GetValue() == 3)  then
            gui.SetValue("rbot.antiaim.base.rotation", gui_divinity_antiaim_group_main_desyncrange_standing_left:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random_inverted)
        elseif localplayerslowwalking == true and gui_divinity_antiaim_group_main_desynctype_slowwalking:GetValue() == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", gui_divinity_antiaim_group_main_desyncrange_slowwalking_left:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random_inverted)
        elseif localplayermoving == true and gui_divinity_antiaim_group_main_desynctype_moving:GetValue() == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", gui_divinity_antiaim_group_main_desyncrange_moving_left:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random_inverted)
        elseif localplayerinair == true and gui_divinity_antiaim_group_main_desynctype_inair:GetValue() == 0 then
            gui.SetValue("rbot.antiaim.base.rotation", gui_divinity_antiaim_group_main_desyncrange_inair_left:GetValue())
            gui.SetValue("rbot.antiaim.base.lby", lby_random_inverted)
        end
    end

    --manual aa, new system
    if gui_divinity_antiaim_group_binds_manualleftkey:GetValue() ~= 0 and input.IsButtonPressed(gui_divinity_antiaim_group_binds_manualleftkey:GetValue()) then
        manual_left = manual_left == 0 and 1 or 0
        manual_right = 0
        manual_back = 0
    end
    if gui_divinity_antiaim_group_binds_manualrightkey:GetValue() ~= 0 and input.IsButtonPressed(gui_divinity_antiaim_group_binds_manualrightkey:GetValue()) then
        manual_right = manual_right == 0 and 1 or 0
        manual_left = 0
        manual_back = 0
    end
    if gui_divinity_antiaim_group_binds_manualbackkey:GetValue() ~= 0 and input.IsButtonPressed(gui_divinity_antiaim_group_binds_manualbackkey:GetValue()) then
        manual_back = manual_back == 0 and 1 or 0
        manual_right = 0
        manual_left = 0
    end

    local manual_left_yaw = ChangeYaw(90)
    local manual_right_yaw = ChangeYaw(-90)
    local manual_back_yaw = ChangeYaw(180)
    if manual_left == 1  then
        gui.SetValue("rbot.antiaim.base", manual_left_yaw)
        gui.SetValue("rbot.antiaim.advanced.autodir.targets", false)
        gui.SetValue("rbot.antiaim.advanced.autodir.edges", false)
    elseif manual_back == 1 then
        gui.SetValue("rbot.antiaim.base", manual_back_yaw)
        gui.SetValue("rbot.antiaim.advanced.autodir.targets", false)
        gui.SetValue("rbot.antiaim.advanced.autodir.edges", false)
    elseif manual_right == 1 then
        gui.SetValue("rbot.antiaim.base", manual_right_yaw)
        gui.SetValue("rbot.antiaim.advanced.autodir.targets", false)
        gui.SetValue("rbot.antiaim.advanced.autodir.edges", false)
    else
        gui.SetValue("rbot.antiaim.advanced.autodir.targets", gui_divinity_antiaim_group_misc_at_tartget:GetValue())
    end

    --new legit aa
    if gui_divinity_antiaim_group_misc_legitantiaim:GetValue() then
        disableconditiononuse:SetValue(false)
        local legityaw = ChangeYaw(0)
        manual_right = 0
        manual_back = 0
        manual_left = 0
        gui.SetValue("rbot.antiaim.base", legityaw)
        gui.SetValue("rbot.antiaim.advanced.pitch", 0)
        gui.SetValue("rbot.antiaim.advanced.autodir.targets", false)
        gui.SetValue("rbot.antiaim.advanced.autodir.edges", false)
    else
        gui.SetValue("rbot.antiaim.advanced.pitch", 1)
    end

    --freestand
    if gui_divinity_antiaim_group_misc_freestand:GetValue() and manual_back == 0 and manual_right == 0 and manual_left == 0 and not gui_divinity_antiaim_group_misc_legitantiaim:GetValue() then
        gui.SetValue("rbot.antiaim.advanced.autodir.edges", true)
        gui.SetValue("rbot.antiaim.advanced.autodir.targets", false)
        gui.SetValue("rbot.antiaim.right", -160)
        gui.SetValue("rbot.antiaim.left", 160)
    elseif not gui_divinity_antiaim_group_misc_freestand:GetValue() then
        gui.SetValue("rbot.antiaim.advanced.autodir.edges", false)
    end
end
callbacks.Register("Draw", anti_aim_binds)

local anti_defensive_cache = 1
local anti_defensive_value = 0
local function rage_tickbase()
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end
    local gui_sv_maxusrcmdprocessticks_slider = gui.Reference('Misc', 'General', 'Server', 'sv_maxusrcmdprocessticks')

     --tickbase regulation
    if ForceFakelagIsActive == true then
        gui_sv_maxusrcmdprocessticks_slider:SetValue(gui_divinity_rage_group_tickbase_sv_maxusrcmdprocessticks_fakelags:GetValue())
    elseif FdIsActive == true then
        gui_sv_maxusrcmdprocessticks_slider:SetValue(gui_divinity_rage_group_tickbase_sv_maxusrcmdprocessticks_fakeduck:GetValue())
    elseif ExploitIsActive == true then
        gui_sv_maxusrcmdprocessticks_slider:SetValue(gui_divinity_rage_group_tickbase_sv_maxusrcmdprocessticks_exploit:GetValue())
    end

    --anti-defensive
    if gui_divinity_rage_group_tickbase_anti_defensive:GetValue() then
        anti_defensive_value = 0
        if anti_defensive_cache ~= anti_defensive_value then
            client.Command("spectate", true)
            client.SetConVar("cl_lagcompensation", 0, true)
            anti_defensive_cache = anti_defensive_value
        end
    elseif not gui_divinity_rage_group_tickbase_anti_defensive:GetValue() then
        anti_defensive_value = 1
        if anti_defensive_cache ~= anti_defensive_value then
            client.Command("spectate", true)
            client.SetConVar("cl_lagcompensation", 1, true)
            anti_defensive_cache = anti_defensive_value
        end
    end

    --standby choke (that's aw fakelags on dt, but after landing they are disabling to increase dt speed)
    if gui_divinity_rage_group_tickbase_standby_choke:GetValue() then
        if (localplayerinair == true or input.IsButtonDown(32)) and DtIsActive == true then
            gui.SetValue("rbot.accuracy.weapon." ..weaponclass..".doublefirefl", 10)
            gui.SetValue("rbot.accuracy.weapon." ..weaponclass..".doublefireflcond.inair", true)
            gui.SetValue("rbot.accuracy.weapon." ..weaponclass..".doublefireflcond.moving", true)
        else
            gui.SetValue("rbot.accuracy.weapon." ..weaponclass..".doublefirefl", gui_divinity_rage_group_tickbase_standby_choke_fakelag_slider:GetValue())
            gui.SetValue("rbot.accuracy.weapon." ..weaponclass..".doublefireflcond.inair", false)
            gui.SetValue("rbot.accuracy.weapon." ..weaponclass..".doublefireflcond.moving", false)
        end
    end
end
callbacks.Register("CreateMove", rage_tickbase)

local awp_gui = gui.Reference("Ragebot", "Hitscan", "Mode", "Scout", "Bodyaim", "No Head Safepoint")
local ssg_gui = gui.Reference("Ragebot", "Hitscan", "Mode", "Sniper", "Bodyaim", "No Head Safepoint")
local awp_cache = awp_gui:GetValue()
local ssg_cache = ssg_gui:GetValue()

local function rage_other(GameEvent)
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end

    local autopeek_key = gui.GetValue("rbot.accuracy.movement.autopeekkey")

    --adaptive silent aim 
    if gui_divinity_rage_group_other_adaptive_silent:GetValue() then
        if distance < 600 then
            gui.SetValue("rbot.aim.target.silentaim", false)
        else
            gui.SetValue("rbot.aim.target.silentaim", true)
        end
    end

    --adaptive autoscope(work on distance with hitchance)
    if gui_divinity_rage_group_other_adaptive_autoscope:GetValue() then
        if weaponclass == "asniper" then
            hitchance = gui.GetValue("rbot.accuracy.weapon.asniper.hitchance")
            if distance <= ((1000*(1/(gui_divinity_rage_group_other_noscope_hitchance:GetValue()/100)))-(10*hitchance)) then
                gui.SetValue("rbot.aim.automation.scope", 0)
            else
                gui.SetValue("rbot.aim.automation.scope", 2)
            end
        else
            gui.SetValue("rbot.aim.automation.scope", 2)
        end
    end

    --turn on safepoints on awp, scout on dt + autopeek
    if gui_divinity_rage_group_other_doubletap_peek_help:GetValue() then
        if (weaponclass == "scout" or weaponclass == "sniper") and autopeek_key ~= 0 and input.IsButtonDown(autopeek_key) and DtIsActive == true then
            awp_gui:SetValue(true)
            ssg_gui:SetValue(true)
        else
            awp_gui:SetValue(awp_cache)
            ssg_gui:SetValue(ssg_cache)
        end
    end

    --fast switch awp
    if gui_divinity_rage_group_other_awp_fast_switch:GetValue() then 
        if weaponclass == "sniper" then
            if GameEvent then
                if GameEvent:GetName() == "weapon_fire" then
                    if client.GetPlayerIndexByUserID(GameEvent:GetInt("userid")) == client:GetLocalPlayerIndex() then
                        client.Command("use weapon_knife", true)
                        client.Command("use weapon_awp", true)
                    end
                end
            end
        end
    end

    --jump scout
    if gui_divinity_rage_group_other_jump_scout:GetValue() then

        --doesnt break autostrafer
        if localplayerstanding == true or localplayermoving == true then
            stand_velocity = local_entity:GetPropVector("localdata", "m_vecVelocity[0]"):Length()
        end

        if weaponclass == "scout" and localplayerinair == true and stand_velocity < 40 then
            gui.SetValue("misc.strafe.air", false)
        else
            gui.SetValue("misc.strafe.air", true)
        end
    end

    --max accurate speed on slowwalk
    if gui_divinity_rage_group_other_accurate_walk:GetValue() then
        gui.SetValue("rbot.accuracy.movement.slowspeed", 30)
    end
end
client.AllowListener("weapon_fire");
callbacks.Register("FireGameEvent", rage_other);
callbacks.Register("Draw", rage_other);


local enemy_lc  =  {
    schetchik_enemy = false,
    lc_factor_enemy = false,
    old_simtime_enemy = 0,
    old_delta_simtime_enemy = 0
}


 function rage_flags(builder)
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end

    local builder_entity = builder:GetEntity()
    local time = globals.CurTime()
    local tickinterval = globals.TickInterval()
    local local_next_shot = local_entity:GetPropEntity('m_hActiveWeapon'):GetPropFloat('LocalActiveWeaponData', 'm_flNextPrimaryAttack')

    if builder_entity:IsPlayer() and builder_entity:IsAlive() and builder_entity:GetTeamNumber() ~= local_entity:GetTeamNumber() then
        --nextshot
        local enemy_next_shot  = builder_entity:GetPropEntity('m_hActiveWeapon'):GetPropFloat('LocalActiveWeaponData', 'm_flNextPrimaryAttack')
        
        --shot earlier flag
        if gui_divinity_rage_group_flags_enemy_flags_shot:GetValue() and enemy_next_shot ~= nil and local_next_shot ~= nil then
            if enemy_next_shot <= globals.CurTime() then
                enemy_next_shot = globals.CurTime()
            end
            
            if enemy_next_shot < local_next_shot then
                builder:Color(gui_divinity_rage_group_flags_enemy_flags_shot_color:GetValue())
                builder:AddTextRight("shot")
            end

        end
        --doubletap and fakelags
        if gui_divinity_rage_group_flags_enemy_flags_fakelag_exploit:GetValue() then

            local simtime_enemy = builder_entity:GetPropFloat("m_flSimulationTime") 
            local bot = client.GetPlayerInfo(builder_entity:GetIndex()).fakeplayer

            if simtime_enemy ~= enemy_lc.old_simtime_enemy and enemy_lc.schetchik_enemy == false then
                enemy_lc.schetchik_enemy = true
            end

            if enemy_lc.schetchik_enemy == true then
                delta_simtime_enemy = simtime_enemy - enemy_lc.old_simtime_enemy
                enemy_lc.schetchik_enemy = false
                main_delta_simtime_enemy = delta_simtime_enemy - enemy_lc.old_delta_simtime_enemy 
            end
                
            enemy_lc.old_delta_simtime_enemy = delta_simtime_enemy
            enemy_lc.old_simtime_enemy = simtime_enemy

            if main_delta_simtime_enemy < 0 then
                enemy_lc.lc_factor_enemy = false
            else 
                enemy_lc.lc_factor_enemy = true
            end

            fakelags = math.abs(delta_simtime_enemy/tickinterval)

            --enemy's flags
            if fakelags <= 3 and enemy_lc.lc_factor_enemy == false and bot == false then
                builder:Color(gui_divinity_rage_group_flags_enemy_flags_exploit_color:GetValue())
                builder:AddTextTop("exploit")
            end

            if fakelags <= 3 and enemy_lc.lc_factor_enemy == true and bot == false then
                builder:Color(gui_divinity_rage_group_flags_enemy_flags_exploit_color:GetValue())
                builder:AddTextTop("LC exploit")
            end

            if  fakelags > 3 and bot == false then
                builder:Color(gui_divinity_rage_group_flags_enemy_flags_fakelag_color:GetValue())
                builder:AddTextTop("fakelag")
            end
        end

        --bot flag
        if gui_divinity_rage_group_flags_enemy_flags_bot:GetValue() then
            local bot_entity = client.GetPlayerInfo(builder_entity:GetIndex()).fakeplayer
            if bot_entity == true then
                builder:Color(gui_divinity_rage_group_flags_enemy_flags_bot_color:GetValue())
                builder:AddTextRight("bot")
            end
        end

        --distance
        if gui_divinity_rage_group_flags_enemy_flags_distance:GetValue() then
            builder_entity_origin = builder_entity:GetAbsOrigin()
            local_player_origin = local_entity:GetAbsOrigin()
            distance_to_entity = string.format("%0.1f",(vector.Distance({local_player_origin.x, local_player_origin.y, local_player_origin.z}, {builder_entity_origin.x, builder_entity_origin.y, builder_entity_origin.z})/39.37))
            builder:Color(gui_divinity_rage_group_flags_enemy_flags_distance_color:GetValue())
            builder:AddTextRight(distance_to_entity .. "m")
        end
    end
end
callbacks.Register("DrawESP", rage_flags)

local animation_caches = {
    lenght_of_scope = 0,
    l = 0,
    animation_position = 0,
    animation_position_zero = true,
    current_cvar = client.GetConVar("cl_drawhud"),
    text_desync = "",
    dt_a = 0,
    hs_a = 0,
    fd_a = 0,
    sw_a = 0,
    tp_a = 0,
    dt_a_divinity = 0,
    hs_a_divinity = 0,
    fd_a_divinity = 0,
    sw_a_divinity = 0,
    tp_a_divinity = 0,
    alpha_a = 0,
    spectators_a = 0,
    spec_alpha_a = 0,
    user = cheat.GetUserName(),
    cvar_cache = 1,
    tick = 0,
    fps = 0,
    ip = 0
}

local function spectators()
    local spectators_particle = {}
    for k, v in pairs(entities.FindByClass("CCSPlayer")) do
        if v:GetIndex() ~= entities.GetLocalPlayer():GetIndex() then
            local v_name = v:GetName()
            local spectating_for = v:GetPropEntity("m_hObserverTarget")
            if spectating_for ~= nil then
                local v_index = v:GetIndex()
                if client.GetPlayerInfo(v:GetIndex()).IsGOTV == false and v_index ~= 1 then
                    local spectating = v:GetPropEntity("m_hObserverTarget")
                    local spectating_index = v:GetPropEntity("m_hObserverTarget"):GetIndex()
                    if spectating_index == client.GetLocalPlayerIndex() then
                        table.insert(spectators_particle, v)
                    end
                end
            end
        end
    end
    return spectators_particle
end

local ground = nil
local timer = 0

function get_texture(event)
    if event then
        if event:GetName() == "player_hurt" then
            if client.GetPlayerIndexByUserID(event:GetInt("attacker")) == client.GetLocalPlayerIndex() and client.GetPlayerIndexByUserID(event:GetInt("userid")) ~= client.GetLocalPlayerIndex() then

               ground = event:GetInt("hitgroup")

               timer = 255

            end
        end
    else
       ground = nil
    end
end
client.AllowListener("weapon_fire");
callbacks.Register("FireGameEvent", get_texture);

--model
png_open_model = file.Open("hit station/model.png","r")
png_read_model = png_open_model:Read()
png_open_model:Close()
model = draw.CreateTexture(common.DecodePNG(png_read_model))

--head
png_open_head = file.Open("hit station/head.png","r")
png_read_head = png_open_head:Read()
png_open_head:Close()
head = draw.CreateTexture(common.DecodePNG(png_read_head))

--body
png_open_body = file.Open("hit station/body.png","r")
png_read_body = png_open_body:Read()
png_open_body:Close()
body = draw.CreateTexture(common.DecodePNG(png_read_body))

--right arm
png_open_right_arm = file.Open("hit station/right arm.png","r")
png_read_right_arm = png_open_right_arm:Read()
png_open_right_arm:Close()
right_arm = draw.CreateTexture(common.DecodePNG(png_read_right_arm))

--left arm
png_open_left_arm = file.Open("hit station/left arm.png","r")
png_read_left_arm = png_open_left_arm:Read()
png_open_left_arm:Close()
left_arm = draw.CreateTexture(common.DecodePNG(png_read_left_arm))

--legs
png_open_legs = file.Open("hit station/legs.png","r")
png_read_legs = png_open_legs:Read()
png_open_legs:Close()
legs = draw.CreateTexture(common.DecodePNG(png_read_legs))


local function visual_other()
    local menu = gui.Reference( "Menu" )
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or (menu:IsActive() == false and not local_entity:IsAlive()) then 
        animation_caches.cvar_cache = 1
        return
    end
    
    -- divinity indicators
    draw.SetFont(fonts.divinity_font)
    local desync_delta_angle = math.abs(gui.GetValue("rbot.antiaim.base.rotation"))
    local dt_w, dt_h = draw.GetTextSize("doubletap")
    local hs_w, hs_h = draw.GetTextSize("hideshots")
    local fd_w, fd_h = draw.GetTextSize("fakeduck")
    local sw_w, sw_h = draw.GetTextSize("slow-walk")
    local tp_w, tp_h = draw.GetTextSize("thirdperson")
    local divi_w, divi_h = draw.GetTextSize("divi")
    local nity_w, nity_h = draw.GetTextSize("nivy")
    local desync_w, desync_h = draw.GetTextSize(desync_delta_angle .. "°")
    local hideshotson = gui.GetValue("rbot.antiaim.condition.shiftonshot")

    --get_desync_type
    if (gui_divinity_antiaim_group_main_desynctype_standing:GetValue() == 0 and localplayerstanding == true) or (gui_divinity_antiaim_group_main_desynctype_slowwalking:GetValue() == 0 and localplayerslowwalking == true) or (gui_divinity_antiaim_group_main_desynctype_moving:GetValue() == 0 and localplayermoving == true) or (gui_divinity_antiaim_group_main_desynctype_inair:GetValue() == 0 and localplayerinair == true) then
        animation_caches.text_desync = "static"
    elseif (gui_divinity_antiaim_group_main_desynctype_standing:GetValue() == 1 and localplayerstanding == true) or (gui_divinity_antiaim_group_main_desynctype_slowwalking:GetValue() == 1 and localplayerslowwalking == true) or (gui_divinity_antiaim_group_main_desynctype_moving:GetValue() == 1 and localplayermoving == true) or (gui_divinity_antiaim_group_main_desynctype_inair:GetValue() == 1 and localplayerinair == true) then
        animation_caches.text_desync = "jitter"
    elseif (gui_divinity_antiaim_group_main_desynctype_standing:GetValue() == 2 and localplayerstanding == true) or (gui_divinity_antiaim_group_main_desynctype_slowwalking:GetValue() == 2 and localplayerslowwalking == true) or (gui_divinity_antiaim_group_main_desynctype_moving:GetValue() == 2 and localplayermoving == true) or (gui_divinity_antiaim_group_main_desynctype_inair:GetValue() == 2 and localplayerinair == true) then
        animation_caches.text_desync = "3-angle jitter"
    elseif (gui_divinity_antiaim_group_main_desynctype_standing:GetValue() == 3 and localplayerstanding == true) or (gui_divinity_antiaim_group_main_desynctype_slowwalking:GetValue() == 3 and localplayerslowwalking == true) then
        animation_caches.text_desync = "roll aa"   
    end

    local text_desync_w, text_desync_h = draw.GetTextSize(animation_caches.text_desync)

    if gui_divinity_visual_group_other_divinity_indicators:GetValue() == 2 then
        draw.SetFont(fonts.divinity_font)
        --desync side
        if animation_caches.animation_position_zero == true and math.floor(animation_caches.animation_position) < 4 then
            animation_caches.animation_position = animation_caches.animation_position + 0.025
        end
        if math.floor(animation_caches.animation_position) <= 4 and animation_caches.animation_position_zero == false then
            animation_caches.animation_position = animation_caches.animation_position - 0.025
        end
        if animation_caches.animation_position >= 4 then
            animation_caches.animation_position_zero = false
        end
        if animation_caches.animation_position <= 0 then
            animation_caches.animation_position_zero = true
        end

        draw.Color(255, 255, 255, 255)
        if not (gui_divinity_antiaim_group_main_desynctype_standing:GetValue() == 1 and localplayerstanding == true) and not (gui_divinity_antiaim_group_main_desynctype_slowwalking:GetValue() == 1 and localplayerslowwalking == true) and not (gui_divinity_antiaim_group_main_desynctype_moving:GetValue() == 1 and localplayermoving == true) and not (gui_divinity_antiaim_group_main_desynctype_inair:GetValue() == 1 and localplayerinair == true) then
            if gui.GetValue("rbot.antiaim.base.rotation") < 0 then
                draw.Line(ScreenWeight/2 + animation_caches.animation_position + nity_w + 2, ScreenHeight/2 + 11 + nity_h, ScreenWeight/2 + animation_caches.animation_position + nity_w + 6, ScreenHeight/2 + nity_h/2 + 11)
                draw.Line(ScreenWeight/2 + animation_caches.animation_position + nity_w + 6, ScreenHeight/2 + nity_h/2 + 11, ScreenWeight/2 + animation_caches.animation_position + nity_w + 2, ScreenHeight/2 + 11)

                draw.Line(ScreenWeight/2 - divi_w - 2, ScreenHeight/2 + 11 + divi_h, ScreenWeight/2 - divi_w - 6, ScreenHeight/2 + divi_h/2 + 11)
                draw.Line(ScreenWeight/2 - divi_w - 6, ScreenHeight/2 + divi_h/2 + 11, ScreenWeight/2 - divi_w - 2, ScreenHeight/2 + 11)
            elseif gui.GetValue("rbot.antiaim.base.rotation") >= 0 then
                draw.Line(ScreenWeight/2 - animation_caches.animation_position - divi_w - 2, ScreenHeight/2 + 11 + divi_h, ScreenWeight/2 - animation_caches.animation_position - divi_w - 6, ScreenHeight/2 + divi_h/2 + 11)
                draw.Line(ScreenWeight/2 - animation_caches.animation_position - divi_w - 6, ScreenHeight/2 + divi_h/2 + 11, ScreenWeight/2 - animation_caches.animation_position - divi_w - 2, ScreenHeight/2 + 11)

                draw.Line(ScreenWeight/2 + nity_w + 2, ScreenHeight/2 + 11 + nity_h, ScreenWeight/2 + nity_w + 6, ScreenHeight/2 + nity_h/2 + 11)
                draw.Line(ScreenWeight/2 + nity_w + 6, ScreenHeight/2 + nity_h/2 + 11, ScreenWeight/2 + nity_w + 2, ScreenHeight/2 + 11)
            end
        else
            if gui.GetValue("rbot.antiaim.base.rotation") < 0 then
                draw.Line(ScreenWeight/2 + nity_w + 6, ScreenHeight/2 + 11 + nity_h, ScreenWeight/2 + nity_w + 10, ScreenHeight/2 + nity_h/2 + 11)
                draw.Line(ScreenWeight/2 + nity_w + 10, ScreenHeight/2 + nity_h/2 + 11, ScreenWeight/2 + nity_w + 6, ScreenHeight/2 + 11)

                draw.Line(ScreenWeight/2 - divi_w - 2, ScreenHeight/2 + 11 + divi_h, ScreenWeight/2 - divi_w - 6, ScreenHeight/2 + divi_h/2 + 11)
                draw.Line(ScreenWeight/2 - divi_w - 6, ScreenHeight/2 + divi_h/2 + 11, ScreenWeight/2 - divi_w - 2, ScreenHeight/2 + 11)
            elseif gui.GetValue("rbot.antiaim.base.rotation") >= 0 then
                draw.Line(ScreenWeight/2 - divi_w - 6, ScreenHeight/2 + 11 + divi_h, ScreenWeight/2  - divi_w - 10, ScreenHeight/2 + divi_h/2 + 11)
                draw.Line(ScreenWeight/2 - divi_w - 10, ScreenHeight/2 + divi_h/2 + 11, ScreenWeight/2  - divi_w - 6, ScreenHeight/2 + 11)

                draw.Line(ScreenWeight/2 + nity_w + 2, ScreenHeight/2 + 11 + nity_h, ScreenWeight/2 + nity_w + 6, ScreenHeight/2 + nity_h/2 + 11)
                draw.Line(ScreenWeight/2 + nity_w + 6, ScreenHeight/2 + nity_h/2 + 11, ScreenWeight/2 + nity_w + 2, ScreenHeight/2 + 11)
            end
        end
    end

    if gui_divinity_visual_group_other_divinity_indicators:GetValue() == 1 then
        draw.TextOutlined(ScreenWeight/2-(desync_w/2) + 1, ScreenHeight/2 + 21, desync_delta_angle .. "°", 255, 255, 255, 255)
    elseif gui_divinity_visual_group_other_divinity_indicators:GetValue() == 2 then
        draw.TextOutlined(ScreenWeight/2-(text_desync_w/2) + 1, ScreenHeight/2 + 21, animation_caches.text_desync, 255, 255, 255, 255)
    end

    --divinity indicator
    if gui_divinity_visual_group_other_divinity_indicators:GetValue() == 1 or gui_divinity_visual_group_other_divinity_indicators:GetValue() == 2 then

        draw.SetFont(fonts.divinity_font)
        draw.TextOutlined(ScreenWeight/2-(divi_w), ScreenHeight/2 + 10, "divi", 168, 216, 247,255)
        draw.TextOutlined(ScreenWeight/2, ScreenHeight/2 + 10, "nity", 255, 255, 255, 255)

        if gui.GetValue("esp.local.thirdperson") then

            draw.TextOutlined(ScreenWeight/2 - (tp_w / 2), ScreenHeight/2 + 32 + animation_caches.dt_a_divinity + animation_caches.hs_a_divinity + animation_caches.fd_a_divinity + animation_caches.sw_a_divinity, "thirdperson", 255, 255, 255, 255)
            
            if animation_caches.tp_a_divinity < 11 then
                animation_caches.tp_a_divinity = animation_caches.tp_a_divinity + 0.367
            end
        else
            if animation_caches.tp_a_divinity > 0 then
                animation_caches.tp_a_divinity = animation_caches.tp_a_divinity - 0.367
            end
        end

        if gui.GetValue("rbot.accuracy.movement.slowkey") ~= 0 and input.IsButtonDown(gui.GetValue("rbot.accuracy.movement.slowkey")) then

            draw.TextOutlined(ScreenWeight/2 - (sw_w / 2), ScreenHeight/2 + 32 + animation_caches.dt_a_divinity + animation_caches.hs_a_divinity + animation_caches.fd_a_divinity, "slow-walk", 255, 255, 255, 255)
            draw.Color(255, 255, 255, 255)

            if animation_caches.sw_a_divinity < 11 then
                animation_caches.sw_a_divinity = animation_caches.sw_a_divinity + 0.367
            end
        else
            if animation_caches.sw_a_divinity > 0 then
                animation_caches.sw_a_divinity = animation_caches.sw_a_divinity - 0.367
            end
        end

        if FdIsActive then

            draw.TextOutlined(ScreenWeight/2 - (fd_w / 2), ScreenHeight/2 + 32 + animation_caches.dt_a_divinity + animation_caches.hs_a_divinity, "fakeduck", 255, 255, 255, 255)

            if animation_caches.fd_a_divinity < 11 then
                animation_caches.fd_a_divinity = animation_caches.fd_a_divinity + 0.367
            end
        else
            if animation_caches.fd_a_divinity > 0 then
                animation_caches.fd_a_divinity = animation_caches.fd_a_divinity - 0.367
            end
        end

        if hideshotson then

            draw.TextOutlined(ScreenWeight/2 - (hs_w / 2), ScreenHeight/2 + 32 + animation_caches.dt_a_divinity, "hideshots", 255, 255, 255, 255)
            draw.Color(255, 255, 255, 255)

            if animation_caches.hs_a_divinity < 11 then
                animation_caches.hs_a_divinity = animation_caches.hs_a_divinity + 0.367
            end
        else
            if animation_caches.hs_a_divinity > 0 then
                animation_caches.hs_a_divinity = animation_caches.hs_a_divinity - 0.367
            end
        end

        if DtIsActive == true then

            draw.TextOutlined(ScreenWeight/2 - (dt_w / 2), ScreenHeight/2 + 32, "doubletap", 255, 255, 255, 255)

            if animation_caches.dt_a_divinity < 11 then
                animation_caches.dt_a_divinity = animation_caches.dt_a_divinity + 0.367
            end
        else
            if animation_caches.dt_a_divinity > 0 then
                animation_caches.dt_a_divinity = animation_caches.dt_a_divinity - 0.367
            end
        end
    end

    local mouse_x, mouse_y = input.GetMousePos()
    if menu:IsActive() then 
        --controle keybinds position
        if input.IsButtonDown(1) and (math.abs(mouse_x - invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue()) <= 50 and math.abs(mouse_y - invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue()) <= 50) then
            invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:SetValue(mouse_x)
            invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:SetValue(mouse_y)
        end

        --controle spec. list position
        if input.IsButtonDown(1) and (math.abs(mouse_x - invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:GetValue()) <= 50 and math.abs(mouse_y - invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue()) <= 50) then
            invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:SetValue(mouse_x)
            invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:SetValue(mouse_y)
        end

        --controle hit station
        if input.IsButtonDown(1) and (math.abs(mouse_x - invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue()) <= 50 and math.abs(mouse_y - invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue()) <= 50) then
            invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:SetValue(mouse_x)
            invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:SetValue(mouse_y)
        end

        --controle watermark
        if input.IsButtonDown(1) and (math.abs(mouse_x - invisible_gui.gui_divinity_visual_group_other_watermark_position_x:GetValue()) <= 50 and math.abs(mouse_y - invisible_gui.gui_divinity_visual_group_other_watermark_position_y:GetValue()) <= 50) then
            invisible_gui.gui_divinity_visual_group_other_watermark_position_x:SetValue(mouse_x)
            invisible_gui.gui_divinity_visual_group_other_watermark_position_y:SetValue(mouse_y)
        end
    end

    --security system
    if invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() == invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:GetValue() and
       invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() == invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue() then
        invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:SetValue(invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue() - 51)
        invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:SetValue(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() - 51)
    end

    if invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() == invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue() and
       invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() == invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() then
        invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:SetValue(invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue() - 51)
        invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:SetValue(invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() - 51)
    end

    if invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:GetValue() == invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue() and
       invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue() == invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() then
        invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:SetValue(invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:GetValue() - 51)
        invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:SetValue(invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() - 51)
    end

    if invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() == invisible_gui.gui_divinity_visual_group_other_watermark_position_x:GetValue() and
       invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() == invisible_gui.gui_divinity_visual_group_other_watermark_position_y:GetValue() then
        invisible_gui.gui_divinity_visual_group_other_watermark_position_y:SetValue(invisible_gui.gui_divinity_visual_group_other_watermark_position_y:GetValue() - 51)
        invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:SetValue(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() - 51)
    end

    if invisible_gui.gui_divinity_visual_group_other_watermark_position_x:GetValue() == invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:GetValue() and
       invisible_gui.gui_divinity_visual_group_other_watermark_position_y:GetValue() == invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue() then
        invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:SetValue(invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue() - 51)
        invisible_gui.gui_divinity_visual_group_other_watermark_position_x:SetValue(invisible_gui.gui_divinity_visual_group_other_watermark_position_x:GetValue() - 51)
    end

    if invisible_gui.gui_divinity_visual_group_other_watermark_position_x:GetValue() == invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue() and
       invisible_gui.gui_divinity_visual_group_other_watermark_position_y:GetValue() == invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() then
        invisible_gui.gui_divinity_visual_group_other_watermark_position_x:SetValue(invisible_gui.gui_divinity_visual_group_other_watermark_position_x:GetValue() - 51)
        invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:SetValue(invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() - 51)
    end

    local global_color_1 = {20, 20, 20}
    local global_color_2 = {255, 255, 255}

    if gui_divinity_visual_group_other_white_theme:GetValue() then
        global_color_1 = {245, 245, 245}
        global_color_2 = {0, 0, 0}
    else 
        global_color_1 = {20, 20, 20}
        global_color_2 = {255, 255, 255}
    end


    --keybinds
    if gui_divinity_visual_group_other_keybinds:GetValue() then

        draw.SetFont(fonts.divinity_font)
        local dt_x, dt_y = draw.GetTextSize("Double shot")
        local hs_x, hs_y = draw.GetTextSize("Hide shots")
        local fd_x, fd_y = draw.GetTextSize("Fake duck")
        local sw_x, sw_y = draw.GetTextSize("Slow walk")
        local tp_x, tp_y = draw.GetTextSize("Thirdperson")
        local tg_x, tg_y = draw.GetTextSize("[toggled]")

        if  animation_caches.sw_a + animation_caches.fd_a + animation_caches.hs_a + animation_caches.dt_a + animation_caches.tp_a ~= 0 or menu:IsActive() then
            if animation_caches.alpha_a < 255 then
                animation_caches.alpha_a  = animation_caches.alpha_a + 15
            end
        else
            if animation_caches.alpha_a > 0 then
                animation_caches.alpha_a  = animation_caches.alpha_a - 15
            end
        end

        local alpha_1 = animation_caches.alpha_a - 30

        if alpha_1 < 0 then 
            alpha_1 = 0
        end

        local alpha_2 = animation_caches.alpha_a - 170

        if alpha_2 < 0 then 
            alpha_2 = 0
        end

        draw.Color(global_color_1[1], global_color_1[2], global_color_1[3], alpha_1)
        draw.FilledRect(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue(), invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue(), invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 160, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 20)

        draw.Color(global_color_2[1], global_color_2[2], global_color_2[3], animation_caches.alpha_a)
        draw.SetFont(fonts.divinity_font_4)
        draw.Text(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 3, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 9, "a")

        draw.Color(global_color_2[1], global_color_2[2], global_color_2[3], animation_caches.alpha_a)
        draw.SetFont(fonts.divinity_font)
        draw.Text(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 22, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 5, "Key Binds")

        draw.Color(85, 85, 85, alpha_2)
        draw.FilledRect(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue(), invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 20, invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 160, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 30 + (dt_y / 2) + animation_caches.tp_a + animation_caches.sw_a + animation_caches.fd_a + animation_caches.hs_a + animation_caches.dt_a)

        if gui.GetValue("esp.local.thirdperson") then

            draw.Color(255, 255, 255, 255)
            draw.SetFont(fonts.divinity_font)
            draw.Text(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 5, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 25 + animation_caches.sw_a + animation_caches.fd_a + animation_caches.hs_a + animation_caches.dt_a + (tp_y / 2), "Thirdperson")
            draw.Text(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 155 - tg_x, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 25 + animation_caches.sw_a + animation_caches.fd_a + animation_caches.hs_a + animation_caches.dt_a + (tp_y / 2), "[toggled]")
            
            if animation_caches.tp_a < 15 then
                animation_caches.tp_a = animation_caches.tp_a + 0.5
            end
        else
            if animation_caches.tp_a > 0 then
                animation_caches.tp_a = animation_caches.tp_a - 0.5
            end
        end

        if gui.GetValue("rbot.accuracy.movement.slowkey") ~= 0 and input.IsButtonDown(gui.GetValue("rbot.accuracy.movement.slowkey")) then

            draw.Color(255, 255, 255, 255)
            draw.SetFont(fonts.divinity_font)
            draw.Text(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 5, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 25 + animation_caches.dt_a + animation_caches.hs_a + animation_caches.fd_a + (sw_y / 2), "Slow walk")
            draw.Text(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 155 - tg_x, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 25 + animation_caches.dt_a + animation_caches.hs_a + animation_caches.fd_a + (sw_y / 2), "[holding]")

            if animation_caches.sw_a < 15 then
                animation_caches.sw_a = animation_caches.sw_a + 0.5
            end
        else
            if animation_caches.sw_a > 0 then
                animation_caches.sw_a = animation_caches.sw_a - 0.5
            end
        end

        if FdIsActive then

            draw.Color(255, 255, 255, 255)
            draw.SetFont(fonts.divinity_font)
            draw.Text(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 5, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 25 + animation_caches.dt_a + animation_caches.hs_a + (fd_y / 2), "Fake duck")
            draw.Text(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 155 - tg_x, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 25 + animation_caches.dt_a + animation_caches.hs_a + (fd_y / 2), "[holding]")

            if animation_caches.fd_a < 15 then
                animation_caches.fd_a = animation_caches.fd_a + 0.5
            end
        else
            if animation_caches.fd_a > 0 then
                animation_caches.fd_a = animation_caches.fd_a - 0.5
            end
        end

        if hideshotson then

            draw.Color(255, 255, 255, 255)
            draw.SetFont(fonts.divinity_font)
            draw.Text(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 5, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 25 + animation_caches.dt_a + (hs_y / 2), "Hide shots")
            draw.Text(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 155 - tg_x, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 25 + animation_caches.dt_a + (hs_y / 2), "[toggled]")

            if animation_caches.hs_a < 15 then
                animation_caches.hs_a = animation_caches.hs_a + 0.5
            end
        else
            if animation_caches.hs_a > 0 then
                animation_caches.hs_a = animation_caches.hs_a - 0.5
            end
        end

        if DtIsActive == true then

            draw.Color(255, 255, 255, 255)
            draw.SetFont(fonts.divinity_font)
            draw.Text(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 5, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 25 + (dt_y / 2), "Double shot")
            draw.Text(invisible_gui.gui_divinity_visual_group_other_keybinds_position_x:GetValue() + 155 - tg_x, invisible_gui.gui_divinity_visual_group_other_keybinds_position_y:GetValue() + 25 + (dt_y / 2), "[toggled]")

            if animation_caches.dt_a < 15 then
                animation_caches.dt_a = animation_caches.dt_a + 0.5
            end
        else
            if animation_caches.dt_a > 0 then
                animation_caches.dt_a = animation_caches.dt_a - 0.5
            end
        end
    end

    --spectator list
    if gui_divinity_visual_group_other_spectator_list:GetValue() then
        if #spectators() ~= 0 or menu:IsActive() then
            if animation_caches.spec_alpha_a < 255 then
                animation_caches.spec_alpha_a = animation_caches.spec_alpha_a + 15
            end
        else
            if animation_caches.spec_alpha_a > 0 then
                animation_caches.spec_alpha_a = animation_caches.spec_alpha_a - 15
            end
        end

        local alpha_3 = animation_caches.spec_alpha_a - 30

        if alpha_3 < 0 then 
            alpha_3 = 0
        end

        local alpha_4 = animation_caches.spec_alpha_a - 170

        if alpha_4 < 0 then 
            alpha_4 = 0
        end

        draw.Color(global_color_1[1], global_color_1[2], global_color_1[3], alpha_3)
        draw.FilledRect(invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:GetValue(), invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue(), invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:GetValue() + 160, invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue()+ 20)

        draw.Color(85, 85, 85, alpha_4)
        draw.FilledRect(invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:GetValue(), invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue() + 20, invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:GetValue() + 160, invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue() + 34 + #spectators() * 15)

        draw.Color(global_color_2[1], global_color_2[2], global_color_2[3], animation_caches.spec_alpha_a)
        draw.SetFont(fonts.divinity_font_4)
        draw.Text(invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:GetValue() + 3, invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue() + 9, "d")

        draw.Color(global_color_2[1], global_color_2[2], global_color_2[3], animation_caches.spec_alpha_a)
        draw.SetFont(fonts.divinity_font)
        draw.Text(invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:GetValue() + 22, invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue() + 5, "Spectator List")

        for i = 0, #spectators(), 1 do

            if animation_caches.spectators_a < #spectators() * 15 - 15 then
                animation_caches.spectators_a = animation_caches.spectators_a + 0.5
            elseif animation_caches.spectators_a > #spectators() * 15 - 15 then
                animation_caches.spectators_a = animation_caches.spectators_a - 0.5
            elseif animation_caches.spectators_a < 0 then
                animation_caches.spectators_a = 0
            end

            local spectator_x, spectator_y = draw.GetTextSize(tostring(spectators()[i]))

            if spectators()[i] ~= nil then
                draw.Color(255, 255, 255, 255)
                draw.SetFont(fonts.divinity_font)
                draw.Text(invisible_gui.gui_divinity_visual_group_other_spectator_list_position_x:GetValue() + 5, invisible_gui.gui_divinity_visual_group_other_spectator_list_position_y:GetValue() + 25 + animation_caches.spectators_a - (i * 15 - 15) + (spectator_y / 2), tostring(spectators()[i]))
            end
        end
    end

    --watermark
    if gui_divinity_visual_group_other_watermark:GetValue() then
        local server = engine.GetServerIP()
        if globals.TickCount() % 64 == 0 then
            animation_caches.fps = math.floor(1 / globals.AbsoluteFrameTime())
        end
        if animation_caches.cvar_cache == 1 then
            animation_caches.tick = client.GetConVar("sv_maxcmdrate")
            animation_caches.cvar_cache = 0
        end
        local resources = entities:GetPlayerResources()
        local ping = resources:GetPropInt("m_iPing", client.GetLocalPlayerIndex())

        if server == "loopback" then
            animation_caches.ip = "localhost"
        elseif string.find(server, "A") then
            animation_caches.ip = "valve"    
        else
            animation_caches.ip = server
        end  

        draw.SetFont(fonts.divinity_font)
        local text_1 = ("AIMWARE")
        local text_1_x, text_1_y = draw.GetTextSize(text_1)

        local text_2 = (animation_caches.user .. " | " .. animation_caches.fps .. " fps" .. " | " .. "delay: " .. ping .. " ms " .. " | " .. animation_caches.ip .. " | " .. animation_caches.tick .. " tick")
        local text_2_x, text_2_y = draw.GetTextSize(text_2)

        draw.Color(global_color_1[1], global_color_1[2], global_color_1[3], 225)
        draw.FilledRect(invisible_gui.gui_divinity_visual_group_other_watermark_position_x:GetValue(), invisible_gui.gui_divinity_visual_group_other_watermark_position_y:GetValue(), invisible_gui.gui_divinity_visual_group_other_watermark_position_x:GetValue() + text_1_x + 20, invisible_gui.gui_divinity_visual_group_other_watermark_position_y:GetValue() + 20)

        draw.Color(85, 85, 85, 85)
        draw.FilledRect(invisible_gui.gui_divinity_visual_group_other_watermark_position_x:GetValue() + text_1_x + 20, invisible_gui.gui_divinity_visual_group_other_watermark_position_y:GetValue(), invisible_gui.gui_divinity_visual_group_other_watermark_position_x:GetValue() + text_1_x + text_2_x + 40, invisible_gui.gui_divinity_visual_group_other_watermark_position_y:GetValue() + 20)

        draw.Color(global_color_2[1], global_color_2[2], global_color_2[3], 255)
        draw.Text(invisible_gui.gui_divinity_visual_group_other_watermark_position_x:GetValue() + 10, invisible_gui.gui_divinity_visual_group_other_watermark_position_y:GetValue() + 1 + (text_1_y / 2), text_1)

        draw.Color(255, 255, 255, 255)
        draw.Text(invisible_gui.gui_divinity_visual_group_other_watermark_position_x:GetValue() + 30 + text_1_x, invisible_gui.gui_divinity_visual_group_other_watermark_position_y:GetValue() + 1 + (text_2_y / 2), text_2)
    end

    --custom scope
    draw.FilledCircle(ScreenWeight/2, ScreenHeight/2, 100, 0.1)
    if gui_divinity_visual_group_other_custom_scope:GetValue() then
        local color_scope_r, color_scope_g, color_scope_b, color_scope_a = gui_divinity_visual_group_other_custom_scope_color:GetValue()
        localplayerscoped = local_entity:GetPropBool("m_bIsScoped")

        --animation
        if gui_divinity_visual_group_other_custom_scope:GetValue() and localplayerscoped then 
            animation_caches.l = 1
            if animation_caches.current_cvar ~= animation_caches.l then
                client.SetConVar("cl_drawhud", "0", true)
                animation_caches.current_cvar = animation_caches.l
            end

            if animation_caches.lenght_of_scope <= gui_divinity_visual_group_other_custom_scope_weight:GetValue() then
                animation_caches.lenght_of_scope = animation_caches.lenght_of_scope + 5
            end
        else
            animation_caches.l = 0
            if animation_caches.current_cvar ~= animation_caches.l then
                client.SetConVar("cl_drawhud", "1", true)
                animation_caches.current_cvar = animation_caches.l
            end

            gui.SetValue("esp.other.noscopeoverlay", true)

            if animation_caches.lenght_of_scope >= 10 then
                animation_caches.lenght_of_scope = animation_caches.lenght_of_scope - 5
            end
        end

        if animation_caches.lenght_of_scope >= 10 then
            gui.SetValue("esp.other.noscopeoverlay", false)
            gui.SetValue("esp.other.crosshair", false)
            draw.GradientRect(ScreenWeight/2+gui_divinity_visual_group_other_custom_scope_indent:GetValue(), ScreenHeight/2, animation_caches.lenght_of_scope, gui_divinity_visual_group_other_custom_scope_height:GetValue(), color_scope_r, color_scope_g, color_scope_b, color_scope_a,0,0)
            draw.GradientRect(ScreenWeight/2-gui_divinity_visual_group_other_custom_scope_indent:GetValue(), ScreenHeight/2, animation_caches.lenght_of_scope, gui_divinity_visual_group_other_custom_scope_height:GetValue(), color_scope_r, color_scope_g, color_scope_b, color_scope_a,0,1)
            draw.GradientRect(ScreenWeight/2, ScreenHeight/2-gui_divinity_visual_group_other_custom_scope_indent:GetValue(), animation_caches.lenght_of_scope, gui_divinity_visual_group_other_custom_scope_height:GetValue(), color_scope_r, color_scope_g, color_scope_b, color_scope_a,1,0)
            draw.GradientRect(ScreenWeight/2, ScreenHeight/2+gui_divinity_visual_group_other_custom_scope_indent:GetValue(), animation_caches.lenght_of_scope, gui_divinity_visual_group_other_custom_scope_height:GetValue(), color_scope_r, color_scope_g, color_scope_b, color_scope_a,1,1)
        end
    end

    --hit station
    local textures = {{head, 55, 26, 115, 82}, {body, 48, 77, 109, 159}, {body, 48, 77, 109, 159}, {left_arm, 106, 71, 143, 181}, {right_arm, 17, 34, 53, 140}, {legs, 43, 161, 140, 315}, {legs, 43, 161, 140, 315}}

    if gui_divinity_visual_group_other_hit_station:GetValue() then

        draw.Color(global_color_1[1], global_color_1[2], global_color_1[3], 225)
        draw.FilledRect(invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue(), invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue(), invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue() + 160, invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() + 20)

        draw.Color(global_color_2[1], global_color_2[2], global_color_2[3], 255)
        draw.SetFont(fonts.divinity_font_4)
        draw.Text(invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue() + 3, invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() + 9, "b")

        draw.Color(global_color_2[1], global_color_2[2], global_color_2[3], 255)
        draw.SetFont(fonts.divinity_font)
        draw.Text(invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue() + 22, invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() + 5, "Hit Station")

        draw.Color(85, 85, 85, 85)
        draw.FilledRect(invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue(), invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() + 20, invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue() + 160, invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() + 315)

        draw.SetTexture(model)
        draw.Color(255, 255, 255, 255)
        draw.FilledRect(invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue() + 5, invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() + 15, invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue() + 155, invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() + 310)

        timer = timer - 0.33
        if timer <= 0 then
            timer = 0
        end

        if ground ~= nil then
            if textures[ground] then
                draw.SetTexture(textures[ground][1])
                draw.Color(255, 20, 20, timer)
                draw.FilledRect(invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue() + textures[ground][2], invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() + textures[ground][3], invisible_gui.gui_divinity_visual_group_other_hit_station_position_x:GetValue() + textures[ground][4], invisible_gui.gui_divinity_visual_group_other_hit_station_position_y:GetValue() + textures[ground][5])
            end
        end
    end
end
callbacks.Register('Draw', visual_other);

----------------------------------------------------------------------------
--damage marker from my old lua
local particles = {{}}
local shot_particle = {}
function visual_other_1(GameEvent)
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end
    --damage marker
    local math_random_1 = math.random(1,10)
    local math_random_2 = math.random(1,10)
    local math_random_3 = math.random(1,10)
    if GameEvent then
        if GameEvent:GetName() == "player_hurt" then
            if client.GetPlayerIndexByUserID(GameEvent:GetInt("attacker")) == client.GetLocalPlayerIndex() and client.GetPlayerIndexByUserID(GameEvent:GetInt("userid")) ~= client.GetLocalPlayerIndex() then

                local HitGround = GameEvent:GetInt("hitgroup")
                pos = entities.GetByUserID(GameEvent:GetInt("userid")):GetHitboxPosition( HitGroup )
                if pos == nil then
                    pos = entities.GetAbsOrigin(entities.GetByUserID(GameEvent:GetInt("userid")))
                    pos.z  = pos.z + 30
                end
                pos.x = pos.x - 10 + (math_random_1 * 5)
                pos.y  = pos.y - 10 + (math_random_2 * 5)
                pos.z  = pos.z  - 15 + (math_random_3 * 4)

                shot_particle = {}

                table.insert(shot_particle, pos.x)
                table.insert(shot_particle, pos.y)
                table.insert(shot_particle, pos.z)

                time = globals.TickCount() + 250
                table.insert(shot_particle, time)

                health = GameEvent:GetInt("health")
                table.insert(shot_particle, health)

                damage = GameEvent:GetInt("dmg_health")
                table.insert(shot_particle, damage)

                hit_time = globals.TickCount() + 150
                table.insert(shot_particle, hit_time)

                table.insert(shot_particle, 255)

                table.insert(particles, shot_particle)
            end
        end
    end
end
client.AllowListener("player_hurt");
callbacks.Register("FireGameEvent", visual_other_1);
callbacks.Register("Draw", visual_other_1);

local impact_particles = {}
local start_impact_particles = {}
local tick_checker = 0
function get_tracer(event)
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end
    if event then
        if event:GetName() == "bullet_impact" then
            if client.GetPlayerIndexByUserID(event:GetInt("userid")) == client.GetLocalPlayerIndex() then
                if globals.TickCount() - tick_checker > 2 then

                    tick_checker = globals.TickCount()
                    local impact_pos = Vector3(event:GetFloat("x"), event:GetFloat("y"), event:GetFloat("z"))
                    local local_pos = local_entity:GetAbsOrigin() + Vector3(0, 0, local_entity:GetPropFloat("localdata", "m_vecViewOffset[2]")) + Vector3(0, 0, -1)

                    start_impact_particles = {}
                    table.insert(start_impact_particles, impact_pos)
                    table.insert(start_impact_particles, local_pos)
                    table.insert(start_impact_particles, globals.CurTime() + 2)
                    table.insert(start_impact_particles, 255)

                    table.insert(impact_particles, start_impact_particles)
                end
            end
        end
    end
end
client.AllowListener("bullet_impact")
callbacks.Register('FireGameEvent', get_tracer);

function draw_tracer( ... )
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
         impact_particles = {}
        return
    end
    local tracer_color_r, tracer_color_g, tracer_color_b = gui_divinity_visual_group_world_bullet_tracer_color:GetValue()
    if gui_divinity_visual_group_world_bullet_tracer:GetValue() then
        for i = 1, #impact_particles, 1 do
            local x1, y1 = client.WorldToScreen(impact_particles[i][1])
            local x2, y2 = client.WorldToScreen(impact_particles[i][2])

            if impact_particles[i][3] - globals.CurTime() > 1 then
                impact_particles[i][4] = 255
            elseif impact_particles[i][3] - globals.CurTime() <= 1 then
                impact_particles[i][4] = impact_particles[i][4] - 1.3
            end
            if impact_particles[i][4] <=0 then
                impact_particles[i][4] = 0 
            end

            if x1 and x2 and y1 and y2 then
                if globals.CurTime() - impact_particles[i][3] <= 0 then
                    draw.Color(tracer_color_r, tracer_color_g, tracer_color_b, impact_particles[i][4])  
                    draw.Line(x1, y1, x2, y2)
                end
            end
        end
    end
end
callbacks.Register("Draw", draw_tracer)

local hearts = {
    red_heart =
            {
                {{r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 255, g = 132, b = 135, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 136, g = 0, b = 21, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 136, g = 0, b = 21, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 136, g = 0, b = 21, a = 255}, {r = 0, g = 0, b = 0, a = 255}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 136, g = 0, b = 21, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 136, g = 0, b = 21, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 237, g = 28, b = 36, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
            }
,
    green_heart =
            {
                {{r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 99, g = 228, b = 124, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 16, g = 92, b = 31, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 16, g = 92, b = 31, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 16, g = 92, b = 31, a = 255}, {r = 0, g = 0, b = 0, a = 255}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 16, g = 92, b = 31, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 16, g = 92, b = 31, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 31, g = 180, b = 61, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
            }
,
    yellow_heart =
            {
                {{r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 249, g = 253, b = 96, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 149, g = 153, b = 2, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 149, g = 153, b = 2, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 149, g = 153, b = 2, a = 255}, {r = 0, g = 0, b = 0, a = 255}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 149, g = 153, b = 2, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 149, g = 153, b = 2, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 220, g = 225, b = 4, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
            }
,
    orange_heart =
            {
                {{r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 249, g = 253, b = 96, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 193, g = 78, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 193, g = 78, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 193, g = 78, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 193, g = 78, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 193, g = 78, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 255, g = 127, b = 39, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
                {{r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 0, g = 0, b = 0, a = 255}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, {r = 255, g = 255, b = 255, a = 0}, },
            }
}

draw.Heart = function(pic, x, y, scale, alpha)
    for i = 1, #pic, 1 do
        for j = 1, #pic[i], 1 do
            -- don't draw white background color
            if pic[j][i].r + pic[j][i].g + pic[j][i].b == 255 * 3 then
                draw.Color(pic[j][i].r, pic[j][i].g, pic[j][i].b, 0)
                draw.FilledRect(x + (j-1) * scale, y + (i-1) * scale, x + (j-1) * scale + scale, y + (i-1) * scale + scale)
            else
                draw.Color(pic[j][i].r, pic[j][i].g, pic[j][i].b, alpha)
                draw.FilledRect(x + (j-1) * scale, y + (i-1) * scale, x + (j-1) * scale + scale, y + (i-1) * scale + scale)
            end         
        end
    end
end

function animation()
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end

    for i = 1, #particles, 1 do
        if particles[i][1] ~= nil then
            local delta_time = particles[i][4] - globals.TickCount()
            if delta_time > 0 then
                particles[i][3] = particles[i][3] + (3 / 10)
            end
        end
    end
end
callbacks.Register('CreateMove', animation) 

local color_hit_a = 255
local anim_size = 0
local timer_hitmarker = {}
function render_damage()
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then
        particles = {}
        timer = 0
    end
    for i = 1, #particles, 1 do
        if particles[i][1] ~= nil and particles[i][2] ~= nil and particles[i][3] ~= nil then
            position_x, position_y = client.WorldToScreen(Vector3(particles[i][1], particles[i][2], particles[i][3]))
            local timer = particles[i][4]  - globals.TickCount()
            health_remaining = particles[i][5]
            damage_health = particles[i][6]

            if timer > 255 then
                timer = 255
            end
            if timer > 0 then
                if gui_divinity_visual_group_other_damage_marker:GetValue() and  gui_divinity_visual_group_other_health_marker:GetValue() == false and  position_x ~= nil and position_y~= nil then
                    if health_remaining > 0 then
                        lua_damage_color_r, lua_damage_color_g,  lua_damage_color_b = gui_divinity_visual_group_other_damage_marker_color_def:GetValue() 
                    end
                    if health_remaining <= 0  then
                        lua_damage_color_r, lua_damage_color_g,  lua_damage_color_b = gui_divinity_visual_group_other_damage_marker_color_lethal:GetValue()
                    end                  
                    draw.SetFont(fonts.damage_font)
                    draw.Color(0, 0, 0, timer)
                    draw.Text( position_x, position_y + 1, '-' .. particles[i][6])
                    draw.Text( position_x, position_y - 1, '-' .. particles[i][6])
                    draw.Text( position_x + 1, position_y, '-' .. particles[i][6])
                    draw.Text( position_x - 1, position_y, '-' .. particles[i][6])
                    draw.Color(lua_damage_color_r, lua_damage_color_g,  lua_damage_color_b, timer)
                    draw.Text( position_x, position_y, '-' ..  particles[i][6])

                elseif gui_divinity_visual_group_other_damage_marker:GetValue() and  gui_divinity_visual_group_other_health_marker:GetValue() and  position_x ~= nil and position_y~= nil then
                    if damage_health <= 25 then
                        draw.Heart(hearts.green_heart, position_x, position_y,  2, timer)
                    elseif damage_health <= 50 then
                        draw.Heart(hearts.yellow_heart, position_x + 7, position_y + 7,  2, timer)
                    elseif damage_health <= 75 then
                        draw.Heart(hearts.orange_heart, position_x + 7, position_y + 7, 2, timer)
                    else
                        draw.Heart(hearts.red_heart, position_x + 7, position_y  + 7,  2, timer)
                    end
                end
            end

            --hitmarker
            if gui_divinity_visual_group_other_hitmarker:GetValue() then
                hitmarker_color_r, hitmarker_color_g, hitmarker_color_b, hitmarker_color_a = gui_divinity_visual_group_other_hitmarker_color:GetValue()
                timer_hitmarker =  particles[i][7] - globals.TickCount() - 75

                if timer_hitmarker < 50 and timer_hitmarker > 0 then
                    particles[i][8] = particles[i][8] - 2
                    if particles[i][8] < 0 then
                        particles[i][8] = 0
                    end
                end

                if timer_hitmarker > 0 then

                    draw.Color(hitmarker_color_r, hitmarker_color_g, hitmarker_color_b, particles[i][8])

                    draw.Line(ScreenWeight/2 + 5, ScreenHeight/2 - 5, ScreenWeight/2 + 10, ScreenHeight/2 - 10)
                    draw.Line(ScreenWeight/2 - 5, ScreenHeight/2 - 5, ScreenWeight/2 - 10, ScreenHeight/2 - 10)
                    draw.Line(ScreenWeight/2 + 5, ScreenHeight/2 + 5, ScreenWeight/2 + 10, ScreenHeight/2 + 10)
                    draw.Line(ScreenWeight/2 - 5, ScreenHeight/2 + 5, ScreenWeight/2 - 10, ScreenHeight/2 + 10)
                end
            end
        end
    end
end
callbacks.Register('Draw', render_damage)

------------------------------------------------------------------------------------
--my old bomb info lua
local function lerp_pos(x_1, y_1, z_1, x_2, y_2, z_2, percentage) 
    local x = (x_2 - x_1) * percentage + x_1 
    local y = (y_2 - y_1) * percentage + y_1
    local z = (z_2 - z_1) * percentage + z_1 
    return x, y, z 
end

local function get_site(site) 
    local a_site_position = entities.GetPlayerResources():GetProp("m_bombsiteCenterA")
    local b_site_position = entities.GetPlayerResources():GetProp("m_bombsiteCenterB")
    local site_position_1 = site:GetMins()
    local site_position_2 = site:GetMaxs()
    local site_position_x, site_position_y, site_position_z = lerp_pos(site_position_1.x, site_position_1.y, site_position_1.z , site_position_2.x, site_position_2.y, site_position_2.z, 0.5)
    local distance_site_a, distance_site_b = vector.Distance({site_position_x, site_position_y, site_position_z}, {a_site_position.x, a_site_position.y, a_site_position.z}), vector.Distance({site_position_x, site_position_y, site_position_z}, {b_site_position.x, b_site_position.y, b_site_position.z})
    
    return distance_site_b > distance_site_a and "A" or "B" 
end
------------------------------

local bomb_cache = {
    planted = false,
    dropped = false,
    pickup = false,
    defused = false,
    start_defuse = false,
    start_plant = false,
    in_hands = false,
    pickup_user_name = "",
    exploded = false
}

function get_bomb_info(GameEvent)
    local local_entity = entities.GetLocalPlayer()
    if not local_entity then 
        return
    end
    if GameEvent then
        if GameEvent:GetName() == "bomb_dropped" then
            bomb_cache.dropped = true
            bomb_cache.pickup = false
            bomb_cache.in_hands = false
        end
        if GameEvent:GetName() == "bomb_pickup" then
            bomb_cache.pickup_user_name = entities.GetByUserID(GameEvent:GetInt("userid"))
            bomb_cache.dropped = false
            bomb_cache.pickup = true
        end
        if GameEvent:GetName() == "bomb_beginplant" then
            bomb_site = get_site(entities.GetByIndex(GameEvent:GetInt("site")))
            bomb_cache.start_plant = true
        end
        if GameEvent:GetName() == "bomb_abortplant" then
            bomb_cache.start_plant = false
        end
        if GameEvent:GetName() == "bomb_planted" then
            bomb_site = get_site(entities.GetByIndex(GameEvent:GetInt("site")))
            bomb_timer = globals.CurTime() + 40
            bomb_cache.planted = true
            bomb_cache.start_plant = false
            bomb_cache.defused = false
        end
        if GameEvent:GetName() == "bomb_defused" then
            bomb_cache.planted = false
            bomb_cache.defused = true
            bomb_cache.start_defuse = false
            bomb_cache.dropped = false
            bomb_cache.pickup = false
        end
        if GameEvent:GetName() == "bomb_begindefuse" then
            has_kit = GameEvent:GetInt("haskit")
            bomb_cache.start_defuse = true
            if has_kit == true then
                defuse_timer = globals.CurTime() + 5
            else
                defuse_timer = globals.CurTime() + 10
            end
        end
        if GameEvent:GetName() == "bomb_abortdefuse" then
            bomb_cache.start_defuse = false
        end
        if GameEvent:GetName() == "bomb_exploded" then
            bomb_cache.planted = false
            bomb_cache.exploded = true
            bomb_cache.defused = false
        end
        if GameEvent:GetName() == "round_prestart" then
            bomb_cache.exploded = false
            bomb_cache.planted = false
            bomb_cache.dropped = false
            bomb_cache.pickup = false
            bomb_cache.defused = false
            bomb_cache.start_defuse = false
            bomb_cache.start_plant = false
            bomb_cache.in_hands = true
        end
    end
end

client.AllowListener("round_end")
client.AllowListener("bomb_dropped")
client.AllowListener("bomb_pickup")
client.AllowListener("bomb_beginplant")
client.AllowListener("bomb_abortplant")
client.AllowListener("bomb_planted")
client.AllowListener("bomb_defused")
client.AllowListener("bomb_begindefuse")
client.AllowListener("bomb_abortdefuse")
client.AllowListener("bomb_exploded")

callbacks.Register("FireGameEvent", get_bomb_info);
callbacks.Register("Draw", get_bomb_info);

local time_to_explode = 0
local time_to_defuse = 0
function plant_info()
    local local_entity = entities.GetLocalPlayer()
    if not local_entity  then 
        return
    end
    if bomb_cache.planted == true then
        time_to_explode = bomb_timer - globals.CurTime()
    end

    if time_to_explode < 0 then
        bomb_cache.planted = false
    end

    if bomb_cache.exploded == true then
        time_to_explode = 0
    end

    if bomb_cache.start_defuse == true then
        time_to_defuse = defuse_timer - globals.CurTime()
    end

    if bomb_cache.defused == true then
        time_to_defuse = 0
        time_to_explode = 0
    end
end
callbacks.Register("Draw", plant_info);

function draw_bomb()
    local local_entity = entities.GetLocalPlayer()
    if not local_entity  then 
        return
    end
    draw.SetFont(fonts.divinity_font)
    status_x, status_y = draw.GetTextSize("BOMB STATUS: ")
    if gui_divinity_visual_group_world_bomb:GetValue() ~= 0 then
        if bomb_cache.planted == false and bomb_cache.start_plant == false and bomb_cache.dropped == true then
            status_text = "DROPPED"
        elseif bomb_cache.planted == false and bomb_cache.start_plant == false and bomb_cache.pickup == true and bomb_cache.pickup_user_name ~= nil then
            status_text = "CARRIED BY " .. tostring(bomb_cache.pickup_user_name)
        elseif bomb_cache.planted == false and bomb_cache.start_plant == true and bomb_cache.start_defuse == false then
            status_text = "PLANTING AT SITE " .. bomb_site
        elseif bomb_cache.planted == true and bomb_cache.start_defuse == true then
            status_text = "DEFUSING " .. string.format("%0.1f", time_to_defuse)
        elseif bomb_cache.planted == true and bomb_cache.start_defuse == false and bomb_cache.exploded == false then
            status_text = "PLANTED AT SITE " .. bomb_site .. " ( " .. string.format("%0.1f", time_to_explode) .. " )"
        elseif bomb_cache.defused  == true then
            status_text = "DEFUSED"
        elseif bomb_cache.exploded == true then
            status_text = "EXPLODED"
        end
        info_x, info_y = draw.GetTextSize(status_text)

        if status_text ~= nil then
            if gui_divinity_visual_group_world_bomb:GetValue() == 1 then
                draw.Color(240, 240, 240)
                draw.FilledRect(gui_divinity_visual_group_world_bomb_position_x:GetValue() - 5, gui_divinity_visual_group_world_bomb_position_y:GetValue() - status_y, gui_divinity_visual_group_world_bomb_position_x:GetValue() + status_x + info_x + 5, gui_divinity_visual_group_world_bomb_position_y:GetValue() + 2*status_y+2)

                draw.Color(10, 10, 10)
                draw.Text(gui_divinity_visual_group_world_bomb_position_x:GetValue(), gui_divinity_visual_group_world_bomb_position_y:GetValue(), "BOMB STATUS: ")
                draw.Color(220, 0, 0)
                draw.Text(gui_divinity_visual_group_world_bomb_position_x:GetValue() + status_x, gui_divinity_visual_group_world_bomb_position_y:GetValue(), status_text)
            elseif gui_divinity_visual_group_world_bomb:GetValue() == 2 then
                draw.Color(10, 10, 10)
                draw.FilledRect(gui_divinity_visual_group_world_bomb_position_x:GetValue() - 5, gui_divinity_visual_group_world_bomb_position_y:GetValue() - status_y, gui_divinity_visual_group_world_bomb_position_x:GetValue() + status_x + info_x + 5, gui_divinity_visual_group_world_bomb_position_y:GetValue() + 2*status_y+2)

                draw.Color(240, 240, 240)
                draw.Text(gui_divinity_visual_group_world_bomb_position_x:GetValue(), gui_divinity_visual_group_world_bomb_position_y:GetValue(), "BOMB STATUS: ")
                draw.Color(220, 0, 0)
                draw.Text(gui_divinity_visual_group_world_bomb_position_x:GetValue() + status_x, gui_divinity_visual_group_world_bomb_position_y:GetValue(), status_text)
            elseif gui_divinity_visual_group_world_bomb:GetValue() == 3 then
                draw.Color(156, 184, 255)
                draw.FilledRect(gui_divinity_visual_group_world_bomb_position_x:GetValue() - 5, gui_divinity_visual_group_world_bomb_position_y:GetValue() - status_y, gui_divinity_visual_group_world_bomb_position_x:GetValue() + status_x + info_x + 5, gui_divinity_visual_group_world_bomb_position_y:GetValue() + 2*status_y+2)

                draw.Color(240, 240, 240)
                draw.Text(gui_divinity_visual_group_world_bomb_position_x:GetValue(), gui_divinity_visual_group_world_bomb_position_y:GetValue(), "BOMB STATUS: ")
                draw.Color(220, 0, 0)
                draw.Text(gui_divinity_visual_group_world_bomb_position_x:GetValue() + status_x, gui_divinity_visual_group_world_bomb_position_y:GetValue(), status_text)
            end
        end
    end
end
callbacks.Register("Draw", draw_bomb);

----------------------------------------------------------------------------------

local world_cache = {
    aspectratio_cache = 999,
    ambient_light_cache = 999,
    bloom_cache = 999,
    exposure_cache = 999,
    ambient_cache = 999,
    foot_shadow_cache = 999,
    world_modulations_cache = 999,

    leg_shadow = 999,
    leg_cvar_cache = 999,
}

--all world modulations(with cache system to improve fps)
local function visual_world(Event)

    local local_entity = entities.GetLocalPlayer()
    if not local_entity then 
        world_cache.aspectratio_cache = 999
        world_cache.ambient_light_cache = 999
        world_cache.bloom_cache =999
        world_cache.exposure_cache = 999
        world_cache.ambient_cache = 999
        world_cache.foot_shadow_cache = 999
        world_cache.world_modulations_cache = 999

        world_cache.leg_shadow = 999
        world_cache.leg_cvar_cache = 999
        return
    end

    local TonemapController = entities.FindByClass('CEnvTonemapController')[1]
    local PostProcessing = gui.Reference("Visuals", "Other", "Effects", "Effects Removal", "No Post Processing")
    local color_wall_r, color_wall_g, color_wall_b, color_wall_a = gui_divinity_visual_group_world_ambient_light:GetValue()
            if TonemapController then
                TonemapController:SetProp('m_bUseCustomBloomScale', 1)
                if gui_divinity_visual_group_world_bloom:GetValue() > 0 then
                    PostProcessing:SetValue(false)
                else
                    PostProcessing:SetValue(true)
                end

                if  gui_divinity_visual_group_world_bloom:GetValue() ~= world_cache.bloom_cache then
                    TonemapController:SetProp('m_flCustomBloomScaleMinimum', gui_divinity_visual_group_world_bloom:GetValue()* 0.1)
                    TonemapController:SetProp('m_flCustomBloomScale', gui_divinity_visual_group_world_bloom:GetValue()* 0.1)
                    world_cache.bloom_cache = gui_divinity_visual_group_world_bloom:GetValue()
                end

                if world_cache.ambient_cache ~= gui_divinity_visual_group_world_ambient:GetValue() then
                    client.SetConVar('r_modelAmbientMin', gui_divinity_visual_group_world_ambient:GetValue(), true)
                    world_cache.ambient_cache = gui_divinity_visual_group_world_ambient:GetValue()
                end

                if world_cache.exposure_cache ~= gui_divinity_visual_group_world_exposure:GetValue() then
                    TonemapController:SetProp('m_bUseCustomAutoExposureMin', 1)
                    TonemapController:SetProp('m_bUseCustomAutoExposureMax', 1)
                    TonemapController:SetProp('m_flCustomAutoExposureMax', 1.01 - (gui_divinity_visual_group_world_exposure:GetValue() * 0.01))
                    TonemapController:SetProp('m_flCustomAutoExposureMin', 1.01 - (gui_divinity_visual_group_world_exposure:GetValue() * 0.01))
                    world_cache.exposure_cache = gui_divinity_visual_group_world_exposure:GetValue()
                end

                if world_cache.aspectratio_cache ~= gui_divinity_visual_group_world_aspectratio:GetValue() then
                    client.SetConVar('r_aspectratio', gui_divinity_visual_group_world_aspectratio:GetValue(), true)
                    world_cache.aspectratio_cache = gui_divinity_visual_group_world_aspectratio:GetValue()
                end

                if gui_divinity_visual_group_world_foot_shadow:GetValue() then
                    world_cache.leg_shadow = 0
                    if world_cache.leg_shadow ~= world_cache.leg_cvar_cache then
                        client.SetConVar("cl_foot_contact_shadows", 0, true)
                        world_cache.leg_cvar_cache = world_cache.leg_shadow
                    end
                else
                    world_cache.leg_shadow = 1
                    if world_cache.leg_shadow ~= world_cache.leg_cvar_cache then
                        client.SetConVar("cl_foot_contact_shadows", 1, true)
                        world_cache.leg_cvar_cache = world_cache.leg_shadow
                    end
                end 

                if gui_divinity_visual_group_world_ambient_light:GetValue() ~= world_cache.ambient_light_cache then
                    client.SetConVar('mat_ambient_light_r', color_wall_r/ 255, true)
                    client.SetConVar('mat_ambient_light_g', color_wall_g/ 255, true)
                    client.SetConVar('mat_ambient_light_b', color_wall_b/ 255, true)
                    world_cache.ambient_light_cache = gui_divinity_visual_group_world_ambient_light:GetValue()
                end
                if gui_divinity_visual_group_world_controller:GetValue() == 0 and gui_divinity_visual_group_world_controller:GetValue() ~= world_cache.world_modulations_cache then
                    client.SetConVar("mat_showlowresimage",0, true)
                    client.SetConVar("mat_drawgray",0, true)
                    client.SetConVar("mat_fullbright",0, true)
                    world_cache.world_modulations_cache = gui_divinity_visual_group_world_controller:GetValue()
                elseif gui_divinity_visual_group_world_controller:GetValue() == 1 and gui_divinity_visual_group_world_controller:GetValue() ~= world_cache.world_modulations_cache then
                    client.SetConVar("mat_fullbright",0, true)
                    client.SetConVar("mat_showlowresimage",0, true)
                    client.SetConVar("mat_drawgray",0, true)
                    client.SetConVar("mat_fullbright",2, true)
                    world_cache.world_modulations_cache = gui_divinity_visual_group_world_controller:GetValue()
                elseif gui_divinity_visual_group_world_controller:GetValue() == 2 and gui_divinity_visual_group_world_controller:GetValue() ~= world_cache.world_modulations_cache then
                    client.SetConVar("mat_showlowresimage",0, true)
                    client.SetConVar("mat_fullbright",0, true)
                    client.SetConVar("mat_drawgray",1, true)
                    world_cache.world_modulations_cache = gui_divinity_visual_group_world_controller:GetValue()
                elseif gui_divinity_visual_group_world_controller:GetValue() == 3 and gui_divinity_visual_group_world_controller:GetValue() ~= world_cache.world_modulations_cache then
                    client.SetConVar("mat_fullbright",0, true)
                    client.SetConVar("mat_drawgray",0, true)
                    client.SetConVar("mat_showlowresimage",1, true) 
                    world_cache.world_modulations_cache = gui_divinity_visual_group_world_controller:GetValue()
                end
                if gui_divinity_visual_group_world_auto_nightmode:GetValue() > 0 then
                    gui_divinity_visual_group_world_exposure:SetValue(gui_divinity_visual_group_world_auto_nightmode:GetValue()*10)
                    gui_divinity_visual_group_world_bloom:SetValue(gui_divinity_visual_group_world_auto_nightmode:GetValue()*5)
                    gui_divinity_visual_group_world_ambient:SetValue(gui_divinity_visual_group_world_auto_nightmode:GetValue()*1.5)
                end
            end
        end
client.AllowListener("weapon_fire");
callbacks.Register("FireGameEvent", visual_world);
callbacks.Register('Draw', visual_world);

local indicators_cache = {
    static_curtime_doubletap = globals.CurTime(),
    static_curtime_hideshots = globals.CurTime(),
    lc_schetchik_local = false,
    lc_factor_local = false,
    old_simtime_local = 0,
    old_delta_simtime_local = 0
}

function math.round(exact, quantum)
    local quant,frac = math.modf(exact/quantum)
    return quantum * (quant + (frac > 0.5 and 1 or 0))
end

--all indicators
function misc_indicators()
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end
    --desync side indicator
    if gui_divinity_misc_group_indicators_desync_side_indicator:GetValue() then
        if gui.GetValue("rbot.antiaim.base.rotation") >= 0 then 
            draw.Color(gui_divinity_misc_group_indicators_desync_side_indicator_color_active:GetValue())
            draw.FilledRect(ScreenWeight/2 - 40, ScreenHeight/2 + 10, ScreenWeight/2 - 38, ScreenHeight/2 - 10)
            draw.Color(gui_divinity_misc_group_indicators_desync_side_indicator_color_not_active:GetValue())
            draw.FilledRect(ScreenWeight/2 + 40, ScreenHeight/2 + 10, ScreenWeight/2 + 38, ScreenHeight/2 - 10)
        elseif gui.GetValue("rbot.antiaim.base.rotation") < 0 then
            draw.Color(gui_divinity_misc_group_indicators_desync_side_indicator_color_active:GetValue())
            draw.FilledRect(ScreenWeight/2 + 40, ScreenHeight/2 + 10, ScreenWeight/2 + 38, ScreenHeight/2 - 10)
            draw.Color(gui_divinity_misc_group_indicators_desync_side_indicator_color_not_active:GetValue())
            draw.FilledRect(ScreenWeight/2 - 40, ScreenHeight/2 + 10, ScreenWeight/2 - 38, ScreenHeight/2 - 10)
        end
    end

    if gui_divinity_misc_group_indicators_manual_indicator:GetValue() then 
        if manual_right == 0 and manual_back==1 and manual_left == 0 then 
            draw.Color(gui_divinity_misc_group_indicators_manual_indicator_color_not_active:GetValue())
            draw.Triangle(ScreenWeight/2 - 42, ScreenHeight/2 + 10, ScreenWeight/2 - 57, ScreenHeight/2, ScreenWeight/2 - 42, ScreenHeight/2 - 10)
            draw.Triangle(ScreenWeight/2 + 42, ScreenHeight/2 + 10, ScreenWeight/2 + 57, ScreenHeight/2, ScreenWeight/2 + 42, ScreenHeight/2 - 10)
        end
        if manual_right == 1 and manual_back==0 and manual_left == 0 then 
            draw.Color(gui_divinity_misc_group_indicators_manual_indicator_color_not_active:GetValue())
            draw.Triangle(ScreenWeight/2 - 42, ScreenHeight/2 + 10, ScreenWeight/2 - 57, ScreenHeight/2, ScreenWeight/2 - 42, ScreenHeight/2 - 10)
            draw.Color(gui_divinity_misc_group_indicators_manual_indicator_color_active:GetValue())
            draw.Triangle(ScreenWeight/2 + 42, ScreenHeight/2 + 10, ScreenWeight/2 + 57, ScreenHeight/2, ScreenWeight/2 + 42, ScreenHeight/2 - 10)
        end
        if manual_right == 0 and manual_back==0 and manual_left == 1 then 
            draw.Color(gui_divinity_misc_group_indicators_manual_indicator_color_active:GetValue())
            draw.Triangle(ScreenWeight/2 - 42, ScreenHeight/2 + 10, ScreenWeight/2 - 57, ScreenHeight/2, ScreenWeight/2 - 42, ScreenHeight/2 - 10)
            draw.Color(gui_divinity_misc_group_indicators_manual_indicator_color_not_active:GetValue())
            draw.Triangle(ScreenWeight/2 + 42, ScreenHeight/2 + 10, ScreenWeight/2 + 57, ScreenHeight/2, ScreenWeight/2 + 42, ScreenHeight/2 - 10)
        end 
    end

    draw.SetFont(fonts.skeet_indicator_font)
    local fake_weight, fake_height = draw.GetTextSize("FAKE")
    local doubletap_weight, doubletap_height = draw.GetTextSize("DT")
    local hideshots_weight, hideshots_height = draw.GetTextSize("HS")
    --monsterJ p120
    local body_yaw = math.abs(math.max(-60, math.min(60, math.round((local_entity:GetPropFloat( "m_flPoseParameter", "11") or 0)*120-60+0.5, 1))))

    if gui_divinity_misc_group_indicators_skeet_indicator:GetValue() and gui_divinity_misc_group_indicators_skeet_indicator_old_fake:GetValue() then 
        if body_yaw <= 58 and body_yaw >= 48 then 
            draw.Color(10, 240, 0, 255)
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+30, "FAKE")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+29, "FAKE")
        elseif body_yaw < 48 and body_yaw >= 38 then 
            draw.Color(104, 240, 0, 255)
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+30, "FAKE")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+29, "FAKE")
        elseif body_yaw < 38 and  body_yaw >= 28 then 
            draw.Color(198, 240, 0, 255) 
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+30, "FAKE")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+29, "FAKE")  
        elseif body_yaw < 28 and  body_yaw >= 18 then 
            draw.Color(240, 188, 0, 255) 
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+30, "FAKE")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+29, "FAKE")
        elseif body_yaw < 18 and  body_yaw >= 8 then 
            draw.Color(240, 94, 0, 255)  
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+30, "FAKE")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+29, "FAKE")
        elseif body_yaw < 8 and  body_yaw >= 0  then 
            draw.Color(240, 10, 0, 255)
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+30, "FAKE")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+29, "FAKE")  
        end
    elseif gui_divinity_misc_group_indicators_skeet_indicator:GetValue() and not gui_divinity_misc_group_indicators_skeet_indicator_old_fake:GetValue() then
        if gui_divinity_misc_group_indicators_skeet_indicator_filled_background:GetValue() then
            draw.Color(0,0,0,255)
            draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+37+fake_height, gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+fake_weight, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+34+fake_height) 
        end
        draw.Color(gui_divinity_misc_group_indicators_skeet_indicator_color:GetValue())
        draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+37+fake_height, gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+(fake_weight*(body_yaw/58)), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+34+fake_height)
        draw.Color(gui_divinity_misc_group_indicators_skeet_indicator_color:GetValue())
        draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+30, "FAKE")
        draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+29, "FAKE")
    end

    hideshots_active = gui.GetValue("rbot.antiaim.condition.shiftonshot")
    nextattack_local_doubletap = local_entity:GetPropEntity('m_hActiveWeapon'):GetPropFloat('LocalActiveWeaponData', 'm_flNextPrimaryAttack')
    nextattack_local_hideshots = local_entity:GetPropEntity('m_hActiveWeapon'):GetPropFloat('LocalActiveWeaponData', 'm_flNextPrimaryAttack')

    doubletap_curtime = globals.CurTime()
    if nextattack_local_doubletap ~= nil then
        charge_time_doubletap = (nextattack_local_doubletap-indicators_cache.static_curtime_doubletap)
        current_doubletap_time = ((doubletap_curtime-indicators_cache.static_curtime_doubletap)/(charge_time_doubletap))
    end

    hideshots_curtime = globals.CurTime()
    if nextattack_local_hideshots ~= nil then
        charge_time_hideshots = (nextattack_local_hideshots-indicators_cache.static_curtime_hideshots)
        current_hideshots_time=((hideshots_curtime-indicators_cache.static_curtime_hideshots)/(charge_time_hideshots))
    end

    if gui_divinity_misc_group_indicators_skeet_indicator:GetValue() then
        if DtIsActive == true then
            if nextattack_local_doubletap > globals.CurTime() then
                if gui_divinity_misc_group_indicators_skeet_indicator_filled_background:GetValue() then
                    draw.Color(0,0,0,255)
                    draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-23+doubletap_height,gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+doubletap_weight, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-26+doubletap_height)
                    draw.Color(240,10,0,255)
                    draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-30,"DT")
                    draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-31,"DT")
                    draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-23+doubletap_height,gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+(doubletap_weight*current_doubletap_time), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-26+doubletap_height)
                else
                    draw.Color(240,10,0,255)
                    draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-30,"DT")
                    draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-31,"DT")
                    draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-23+doubletap_height,gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+(doubletap_weight*current_doubletap_time), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-26+doubletap_height)
                end
            else 
                if gui_divinity_misc_group_indicators_skeet_indicator_filled_background:GetValue() then
                    draw.Color(0,0,0,255)
                    draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-23+doubletap_height,gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+doubletap_weight, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-26+doubletap_height)
                    draw.Color(gui_divinity_misc_group_indicators_skeet_indicator_color:GetValue())
                    draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-30,"DT")
                    draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-31,"DT")
                    draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-23+doubletap_height,gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+doubletap_weight, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-26+doubletap_height)
                    indicators_cache.static_curtime_doubletap = globals.CurTime()
                else
                    draw.Color(gui_divinity_misc_group_indicators_skeet_indicator_color:GetValue())
                    draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-30,"DT")
                    draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-31,"DT")
                    draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-23+doubletap_height,gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+doubletap_weight, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-26+doubletap_height)
                    indicators_cache.static_curtime_doubletap = globals.CurTime()
                end
            end
        end

        if hideshots_active then
            if nextattack_local_hideshots>globals.CurTime() then
                if gui_divinity_misc_group_indicators_skeet_indicator_filled_background:GetValue() then
                    draw.Color(0,0,0,255)
                    draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-53+hideshots_height, gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+hideshots_weight, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-56+hideshots_height)
                    draw.Color(240,10,0,255)
                    draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-60,"HS")
                    draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-61,"HS")
                    draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-53+hideshots_height, gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+(hideshots_weight*current_hideshots_time), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-56+hideshots_height)
                else
                    draw.Color(240,10,0,255)
                    draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-60,"HS")
                    draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-61,"HS")
                    draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-53+hideshots_height, gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+(hideshots_weight*current_hideshots_time), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-56+hideshots_height)
                end
            else
                if gui_divinity_misc_group_indicators_skeet_indicator_filled_background:GetValue() then
                    draw.Color(0,0,0,255)
                    draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-53+hideshots_height, gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+hideshots_weight, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-56+hideshots_height)
                    draw.Color(gui_divinity_misc_group_indicators_skeet_indicator_color:GetValue())
                    draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-60,"HS")
                    draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-61,"HS")
                    draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-53+hideshots_height, gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+hideshots_weight, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-56+hideshots_height)
                    indicators_cache.static_curtime_hideshots = globals.CurTime()
                else
                    draw.Color(gui_divinity_misc_group_indicators_skeet_indicator_color:GetValue())
                    draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-60,"HS")
                    draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-61,"HS")
                    draw.FilledRect(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-53+hideshots_height, gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+hideshots_weight, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-56+hideshots_height)
                    indicators_cache.static_curtime_hideshots = globals.CurTime()                
                end
            end
        end

        if FdIsActive == true then
            draw.Color(gui_divinity_misc_group_indicators_skeet_indicator_color:GetValue())
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-90,"FD")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-91,"FD")
        end

        draw.Color(gui_divinity_misc_group_indicators_skeet_indicator_color:GetValue())
        draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+60,"DMG:")
        draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+59,"DMG:")
        draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+90,"HC:")
        draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+89,"HC:")

        --adaptive dmg on specific guns
        if weaponclass == 'knife' or local_entity:GetWeaponID() == 43 or local_entity:GetWeaponID() == 44 or local_entity:GetWeaponID() == 45 or local_entity:GetWeaponID() == 46 or local_entity:GetWeaponID() == 47 or local_entity:GetWeaponID() ==48 then
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+72, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+60, "AUTO")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+71, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+59, "AUTO")
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+72, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+90, "AUTO")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+71, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+89, "AUTO")
        elseif local_entity:GetWeaponID() == 31 then
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+72, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+60, gui.GetValue("rbot.accuracy.weapon.zeus.mindmg"))
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+71, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+59, gui.GetValue("rbot.accuracy.weapon.zeus.mindmg"))
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+72, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+90, gui.GetValue("rbot.accuracy.weapon.zeus.hitchance"))
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+71, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+89, gui.GetValue("rbot.accuracy.weapon.zeus.hitchance"))
        else 
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+72, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+60, gui.GetValue("rbot.accuracy.weapon."..weaponclass..".mindmg"))
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+71, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+59, gui.GetValue("rbot.accuracy.weapon."..weaponclass..".mindmg"))
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+72, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+90, gui.GetValue("rbot.accuracy.weapon."..weaponclass..".hitchance"))
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()+71, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()+89, gui.GetValue("rbot.accuracy.weapon."..weaponclass..".hitchance"))
        end

        --desync side
        if gui.GetValue("rbot.antiaim.base.rotation") >= 0 then
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue(), "LEFT")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-1, "LEFT")
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue(), "LEFT")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-1, "LEFT") 
        elseif gui.GetValue("rbot.antiaim.base.rotation") < 0 then
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue(), "RIGHT")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-1, "RIGHT")
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue(), "RIGHT")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-1, "RIGHT")
        end 

        --freestand indicator
        if gui_divinity_antiaim_group_misc_freestand:GetValue() then
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-120,"FS")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-121,"FS")
        end

        --local LC caclucation 
        local simtime_local = local_entity:GetPropFloat("m_flSimulationTime") 
        if simtime_local ~= indicators_cache.old_simtime_local and indicators_cache.lc_schetchik_local == false then
            indicators_cache.lc_schetchik_local = true
        end

        if indicators_cache.lc_schetchik_local == true then
            delta_simtime_local = simtime_local - indicators_cache.old_simtime_local 
            indicators_cache.lc_schetchik_local = false
            main_delta_simtime_local = delta_simtime_local - indicators_cache.old_delta_simtime_local 
        end

        indicators_cache.old_delta_simtime_local = delta_simtime_local
        indicators_cache.old_simtime_local = simtime_local
        if main_delta_simtime_local < 0 then
            indicators_cache.lc_factor_local = false
        else 
            indicators_cache.lc_factor_local = true
        end

        if indicators_cache.lc_factor_local == true then
            draw.Color(gui_divinity_misc_group_indicators_skeet_indicator_color:GetValue())
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-150, "LC")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-151, "LC")
        else
            draw.Color(240,10,0,255)
            draw.Text(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue(), gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-150,"LC")
            draw.TextShadow(gui_divinity_misc_group_indicators_skeet_indicator_position_x:GetValue()-1, gui_divinity_misc_group_indicators_skeet_indicator_position_y:GetValue()-151, "LC")
        end
    end  
end
callbacks.Register('Draw', misc_indicators);

local misc_cache = {
    current_distance = 0,

    crosshair_cvar = client.GetConVar("weapon_debug_spread_show"),
    force_crosshair = 0,

    position_def_x_cache = client.GetConVar("viewmodel_offset_x"),
    position_def_y_cache = client.GetConVar("viewmodel_offset_y"),
    position_def_z_cache = client.GetConVar("viewmodel_offset_z"),
    viewmodel_cache = false,

    viewmodel_in_scope_cvar = client.GetConVar("fov_cs_debug"),
    viewmodel_in_scope_cache = 0,

    viewmodel_x_cache = client.GetConVar("viewmodel_offset_x"),
    viewmodel_y_cache = client.GetConVar("viewmodel_offset_y"),
    viewmodel_z_cache = client.GetConVar("viewmodel_offset_z")
}

--all other misc functions
local function misc_other()
    local local_entity = entities.GetLocalPlayer()
    if not local_entity or not local_entity:IsAlive() then 
        return
    end

    --viewmodel in scope
    if gui_divinity_misc_group_other_viewmodel_in_scope:GetValue() then
        viewmodel_in_scope_cache = 90
        if viewmodel_in_scope_cvar ~= viewmodel_in_scope_cache then
            client.SetConVar("fov_cs_debug", 90, true)
            viewmodel_in_scope_cvar = viewmodel_in_scope_cache
        end
    else
        viewmodel_in_scope_cache = 0
        if viewmodel_in_scope_cvar ~= viewmodel_in_scope_cache then
            client.SetConVar("fov_cs_debug", 0, true)
            viewmodel_in_scope_cvar = viewmodel_in_scope_cache
        end
    end

    --better  thirdperson
    if gui_divinity_misc_group_other_better_thirdperson:GetValue() then
        if gui_divinity_misc_group_other_better_thirdperson_enabler:GetValue() then
            gui.SetValue("esp.local.thirdperson", true)
            misc_cache.current_distance = misc_cache.current_distance + 5
            if misc_cache.current_distance >= gui_divinity_misc_group_other_better_thirdperson_distance:GetValue() then
                misc_cache.current_distance = gui_divinity_misc_group_other_better_thirdperson_distance:GetValue()
            end
            gui.SetValue("esp.local.thirdpersondist", misc_cache.current_distance)
        elseif not gui_divinity_misc_group_other_better_thirdperson_enabler:GetValue() then
            misc_cache.current_distance = misc_cache.current_distance - 5
            if misc_cache.current_distance <= 0 then
                misc_cache.current_distance = 0
            end
            gui.SetValue("esp.local.thirdpersondist", misc_cache.current_distance)
            if gui.GetValue("esp.local.thirdpersondist") == 0 then
                gui.SetValue("esp.local.thirdperson", false)
            end
        end
    end

    --nades 
    if gui_divinity_misc_group_other_disable_thirdperson_grenade:GetValue() then
        if entities.GetLocalPlayer():GetWeaponID() == 43 or entities.GetLocalPlayer():GetWeaponID() == 44 or entities.GetLocalPlayer():GetWeaponID() == 45 or entities.GetLocalPlayer():GetWeaponID() == 46 or entities.GetLocalPlayer():GetWeaponID() == 47 or entities.GetLocalPlayer():GetWeaponID() == 48 then
            if gui_divinity_misc_group_other_better_thirdperson:GetValue() and gui_divinity_misc_group_other_better_thirdperson_enabler:GetValue() then
                gui_divinity_misc_group_other_better_thirdperson_enabler:SetValue(false)
            elseif not gui_divinity_misc_group_other_better_thirdperson:GetValue() then
                gui.SetValue("esp.local.thirdperson", false)
            end
        end
    end

    if gui_divinity_misc_group_other_show_nade_tracer_on_throw:GetValue() then
        if (input.IsButtonDown(1) or input.IsButtonDown(2)) and (entities.GetLocalPlayer():GetWeaponID() == 43 or entities.GetLocalPlayer():GetWeaponID() == 44 or entities.GetLocalPlayer():GetWeaponID() == 45 or entities.GetLocalPlayer():GetWeaponID() == 46 or entities.GetLocalPlayer():GetWeaponID() == 47 or entities.GetLocalPlayer():GetWeaponID() == 48) then
            gui.SetValue("esp.world.nadewarning.local", 1)
            gui.SetValue("esp.world.nadetracer.local", 1)  
        elseif not (entities.GetLocalPlayer():GetWeaponID() == 43 or entities.GetLocalPlayer():GetWeaponID() == 44 or entities.GetLocalPlayer():GetWeaponID() == 45 or entities.GetLocalPlayer():GetWeaponID() == 46 or entities.GetLocalPlayer():GetWeaponID() == 47 or entities.GetLocalPlayer():GetWeaponID() == 48) then
            gui.SetValue("esp.world.nadetracer.local", 1)
            gui.SetValue("esp.world.nadewarning.local", 1) 
        else 
            gui.SetValue("esp.world.nadetracer.local", 0)
            gui.SetValue("esp.world.nadewarning.local", 0) 
        end
    end

    if gui_divinity_misc_group_other_force_crosshair:GetValue() and gui.GetValue("esp.other.crosshair")==false then 
        misc_cache.force_crosshair = 1
        if misc_cache.force_crosshair ~= misc_cache.crosshair_cvar then
            client.SetConVar("weapon_debug_spread_show", 3, true) 
            misc_cache.crosshair_cvar  = misc_cache.force_crosshair
        end
    else
        misc_cache.force_crosshair = 0
        if misc_cache.force_crosshair ~= misc_cache.crosshair_cvar then
            client.SetConVar("weapon_debug_spread_show", 0, true) 
            misc_cache.crosshair_cvar  = misc_cache.force_crosshair
        end
    end

    if gui_divinity_misc_group_other_leg_fucker:GetValue() then
        entities.GetLocalPlayer():SetPropInt(1, "m_flPoseParameter")
        if globals.TickCount() % 2 == 0 then
            gui.SetValue("misc.slidewalk", false)
        end
        if globals.TickCount() % 4 == 0 then
            gui.SetValue("misc.slidewalk", true)
        end
    end

    --viewmodel(also with the value cahceing)
    if gui_divinity_misc_group_other_viewmodel_changer:GetValue() then
        misc_cache.viewmodel_cache = true
        if misc_cache.viewmodel_x_cache ~= gui_divinity_misc_group_other_viewmodel_changer_x:GetValue() then
            client.SetConVar("viewmodel_offset_x", gui_divinity_misc_group_other_viewmodel_changer_x:GetValue(), true)
            misc_cache.viewmodel_x_cache = gui_divinity_misc_group_other_viewmodel_changer_x:GetValue()
        end
        if misc_cache.viewmodel_y_cache ~= gui_divinity_misc_group_other_viewmodel_changer_y:GetValue() then
            client.SetConVar("viewmodel_offset_y", gui_divinity_misc_group_other_viewmodel_changer_y:GetValue(), true)
            misc_cache.viewmodel_y_cache = gui_divinity_misc_group_other_viewmodel_changer_y:GetValue()
        end
        if  misc_cache.viewmodel_z_cache ~= gui_divinity_misc_group_other_viewmodel_changer_z:GetValue() then
            client.SetConVar("viewmodel_offset_z", gui_divinity_misc_group_other_viewmodel_changer_z:GetValue(), true)
            misc_cache.viewmodel_z_cache = gui_divinity_misc_group_other_viewmodel_changer_z:GetValue()
        end
    else
        if misc_cache.viewmodel_cache ~= gui_divinity_misc_group_other_viewmodel_changer:GetValue() then
            client.SetConVar("viewmodel_offset_x", misc_cache.position_def_x_cache, true)
            client.SetConVar("viewmodel_offset_y", misc_cache.position_def_y_cache, true)
            client.SetConVar("viewmodel_offset_z", misc_cache.position_def_z_cache, true)
            misc_cache.viewmodel_cache = gui_divinity_misc_group_other_viewmodel_changer:GetValue()
        end
    end
end
callbacks.Register('Draw', misc_other);

--thanks to Cheesot(clantag)
local Clantag = ffi.cast('int(__fastcall*)(const char*, const char*)', mem.FindPattern('engine.dll', '53 56 57 8B DA 8B F9 FF 15'))

local usefull_features_cache = {
    static_clantag_time = globals.CurTime(),
    clantag_step = 1,
    play_hitsound = nil,
    last_tag = nil
}

local Set_Clantag = function(tag)
    if tag ~= usefull_features_cache.last_tag then
        Clantag(tag, "")
        usefull_features_cache.last_tag = tag
    end
end

--all event functions to improve game 
function misc_usefull_features(event)
    local local_entity = entities.GetLocalPlayer()
    if not local_entity then 
        usefull_features_cache.clantag_step = 1
        return
    end
    if event then
        if  event:GetName() == "player_hurt" then
            if client.GetPlayerIndexByUserID(event:GetInt("attacker")) == client.GetLocalPlayerIndex() then
                if gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() == 1 then
                    usefull_features_cache.play_hitsound = "play hitsound_lua/bell"
                elseif gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() == 2 then
                    usefull_features_cache.play_hitsound = "play hitsound_lua/bubble"
                elseif gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() == 3 then
                    usefull_features_cache.play_hitsound = "play hitsound_lua/button"
                elseif gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() == 4 then
                    usefull_features_cache.play_hitsound = "play hitsound_lua/cod"
                elseif gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() == 5 then
                    usefull_features_cache.play_hitsound = "play hitsound_lua/cookie"
                elseif gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() == 6 then
                    usefull_features_cache.play_hitsound = "play hitsound_lua/click"
                elseif gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() == 7 then
                    usefull_features_cache.play_hitsound = "play hitsound_lua/flick"
                elseif gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() == 8 then
                    usefull_features_cache.play_hitsound = "play hitsound_lua/space"
                elseif gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() == 9 then
                    usefull_features_cache.play_hitsound = "play hitsound_lua/pop"
                elseif gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() == 10 then
                    usefull_features_cache.play_hitsound = "play hitsound_lua/stapler"
                elseif gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() == 11 then
                    usefull_features_cache.play_hitsound = "play hitsound_lua/spoon"
                elseif gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() == 12 then
                    usefull_features_cache.play_hitsound = "play hitsound_lua/quake"
                end
                if gui_divinity_misc_group_usefull_features_custom_hitsound:GetValue() ~= 0 then
                    client.Command(usefull_features_cache.play_hitsound, true)
                    gui.SetValue("esp.world.hiteffects.sound", false)
                else
                    gui.SetValue("esp.world.hiteffects.sound", true)
                end
            end
        end
        if event:GetName() == "round_prestart" then
            if gui_divinity_misc_group_usefull_features_buybot:GetValue() == 1 then
                    client.Command("buy scar20; buy g3sg1", true)
                    client.Command("buy vesthelm;buy vest", true)
                    client.Command("buy deagle", true)
                    client.Command("buy hegrenade", true)
                    client.Command("buy molotov; buy incgrenade", true)
                    client.Command("buy smokegrenade", true)
                    client.Command("buy defuser", true)
                    client.Command("buy taser", true)


            elseif gui_divinity_misc_group_usefull_features_buybot:GetValue() == 2 then
                client.Command("buy awp", true)
                client.Command("buy vesthelm;buy vest", true)
                client.Command("buy deagle", true)
                client.Command("buy hegrenade", true)
                client.Command("buy molotov; buy incgrenade", true)
                client.Command("buy smokegrenade", true)
                client.Command("buy defuser", true)
                client.Command("buy taser", true)

            elseif gui_divinity_misc_group_usefull_features_buybot:GetValue() == 3 then
                client.Command("buy ssg08", true)
                client.Command("buy vesthelm;buy vest", true)
                client.Command("buy deagle", true)
                client.Command("buy hegrenade", true)
                client.Command("buy molotov; buy incgrenade", true)
                client.Command("buy smokegrenade", true)
                client.Command("buy defuser", true)
                client.Command("buy taser", true)

            elseif gui_divinity_misc_group_usefull_features_buybot:GetValue() == 4 then
                client.Command("buy scar20; buy g3sg1", true)
                client.Command("buy vesthelm;buy vest", true)
                client.Command("buy elite", true)
                client.Command("buy hegrenade", true)
                client.Command("buy molotov; buy incgrenade", true)
                client.Command("buy smokegrenade", true)
                client.Command("buy defuser", true)
                client.Command("buy taser", true)

            elseif gui_divinity_misc_group_usefull_features_buybot:GetValue() == 5 then
                client.Command("buy scar20; buy awp", true)
                client.Command("buy vesthelm;buy vest", true)
                client.Command("buy elite", true)
                client.Command("buy hegrenade", true)
                client.Command("buy molotov; buy incgrenade", true)
                client.Command("buy smokegrenade", true)
                client.Command("buy defuser", true)
                client.Command("buy taser", true)

            elseif gui_divinity_misc_group_usefull_features_buybot:GetValue() == 6 then
                client.Command("buy scar20; buy ssg08", true)
                client.Command("buy vesthelm;buy vest", true)
                client.Command("buy elite", true)
                client.Command("buy hegrenade", true)
                client.Command("buy molotov; buy incgrenade", true)
                client.Command("buy smokegrenade", true)
                client.Command("buy defuser", true)
                client.Command("buy taser", true)

            elseif gui_divinity_misc_group_usefull_features_buybot:GetValue() == 7 then
                client.Command("buy vesthelm;buy vest", true)
                client.Command("buy deagle", true)
                client.Command("buy hegrenade", true)
                client.Command("buy molotov; buy incgrenade", true)
                client.Command("buy smokegrenade", true)
                client.Command("buy defuser", true)
                client.Command("buy taser", true)

            elseif gui_divinity_misc_group_usefull_features_buybot:GetValue() == 8 then
                client.Command("buy vesthelm;buy vest", true)
                client.Command("buy elite", true)
                client.Command("buy hegrenade", true)
                client.Command("buy molotov; buy incgrenade", true)
                client.Command("buy smokegrenade", true)
                client.Command("buy defuser", true)
                client.Command("buy taser", true)
       
            elseif gui_divinity_misc_group_usefull_features_buybot:GetValue() == 9 then
                client.Command("buy vesthelm;buy vest", true)
                client.Command("buy hegrenade", true)
                client.Command("buy molotov; buy incgrenade", true)
                client.Command("buy smokegrenade", true)
                client.Command("buy defuser", true)
                client.Command("buy taser", true)
            end
        end
    end

    local divinity_clantag = {
        "divinity", "divinit", "divini", "divin", "divi", "div", "di", "d", " ", "d", "di", "div", "divi", "divin", "divini", "divinit", "divinity", "divinit", "divini", "divin", "divi", "div", "di", "d", " ", "d", "di", "div", "divi", "divin", "divini", "divinit", "divinity", "divinity_", "divinity_s", "divinity_sc", "divinity_scr", "divinity_scri", "divinity_scrip", "divinity_script", "divinity_scrip", "divinity_scri",  "divinity_scr", "divinity_sc", "divinity_s", "divinity_"
    }

    if gui_divinity_misc_group_usefull_features_clantag:GetValue() == 1 then

        --clantag animation
        if globals.CurTime() - usefull_features_cache.static_clantag_time >= 0.25 then
            usefull_features_cache.clantag_step = usefull_features_cache.clantag_step + 1
            usefull_features_cache.static_clantag_time = globals.CurTime()
        end

        --return clantag to first position
        if usefull_features_cache.clantag_step == #divinity_clantag then
            usefull_features_cache.clantag_step = 1 
        end

        Set_Clantag(divinity_clantag[usefull_features_cache.clantag_step])

    else 
        Set_Clantag("")
    end
end
client.AllowListener("round_prestart")
client.AllowListener("player_hurt")
callbacks.Register('FireGameEvent', misc_usefull_features);
callbacks.Register('Draw', misc_usefull_features);
