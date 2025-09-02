/*
    File: custom.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-10-07
    Last Update: 2020-05-25
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Custom (default FIA) resistance preset.

    Needed Mods:
        - None

    Optional Mods:
        - None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KPLIB_r_units = [
    "I_G_Soldier_AR_F",
    "I_G_engineer_F",
    "I_G_officer_F",
    "I_G_medic_F",
    "I_G_Soldier_F",
    "I_G_Soldier_LAT_F",
    "I_G_Soldier_M_F",
    "I_G_Soldier_SL_F"
];

// Armed vehicles
KPLIB_r_vehicles = [
    "knd_O_rebel_AAT",
    "JMSLLTE_B_veh_ITT_imp_F"
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KPLIB_r_weapons_1 = [
    ["knd_spacek_folded","knd_spacek_mag",4,"",""],
    ["knd_spacek","knd_spacek_mag",4,"",""],
    ["knd_ppsh","knd_ppsh_mag",4,"",""]
];

KPLIB_r_weapons_2 = [
    ["knd_a280","knd_a280_mag",4,"knd_a280_scope_attachment",""],
    ["knd_spacek_folded","knd_spacek_mag",4,"",""],
    ["knd_spacek","knd_spacek_mag",4,"",""],
    ["knd_ppsh","knd_ppsh_mag",4,"",""],
    ["knd_cycler_F","knd_cycler_mag",5,"",""]
];

KPLIB_r_weapons_3 = [
    ["knd_a280","knd_a280_mag",4,"knd_a280_scope_attachment",""],
    ["knd_spacek_folded","knd_spacek_mag",4,"",""],
    ["knd_spacek","knd_spacek_mag",4,"",""],
    ["knd_ppsh","knd_ppsh_mag",4,"",""],
    ["knd_cycler_F","knd_cycler_mag",5,"",""],
    ["knd_AMR_F","knd_mag_AMR",5,"knd_amr_scope_attachment",""],
    ["knd_amban_F","knd_amban_mag",20,"",""]
];

// Uniforms
KPLIB_r_uniforms_1 = [
    "JMSLLTE_c_genshirt_beige_F_CombatUniform",
    "JMSLLTE_c_jumpsuit_blue_F_CombatUniform",
    "JMSLLTE_c_jumpsuit_green_F_CombatUniform",
    "JMSLLTE_c_jumpsuit_sand_F_CombatUniform",
    "JMSLLTE_EmpNavyCrew_red_F_CombatUniform",
    "JMSLLTE_c_genshirt2_black_F_CombatUniform",
    "JMSLLTE_c_genshirt_blue_F_CombatUniform"
];

KPLIB_r_uniforms_2 = [
    "JMSLLTE_ScumTroopCom_black_F_CombatUniform",
    "JMSLLTE_ScumTroopCom_black2_F_CombatUniform",
    "JMSLLTE_ScumPathfinder_brown_F_CombatUniform",
    "JMSLLTE_ScumPathfinder_wood_F_CombatUniform",
    "JMSLLTE_ScumNavy_red_F_CombatUniform",
    "JMSLLTE_ScumNavy_white_F_CombatUniform",
    "JMSLLTE_ScumTroopHeavy_wood_F_CombatUniform"
];

KPLIB_r_uniforms_3 = [
    "JMSLLTE_ScumAlCommando_wood_F_CombatUniform",
    "JMSLLTE_ScumAlCommando_base_F_CombatUniform",
    "JMSLLTE_ScumAlCommando_desert_F_CombatUniform",
    "JMSLLTE_ScumAlCommando_cloud_F_CombatUniform",
    "JMSLLTE_ScumCommando_desertS_F_CombatUniform",
    "JMSLLTE_JinTrooper_suitEmp_F_CombatUniform",
    "JMSLLTE_ScumCommando_cloud_F_CombatUniform"
];

// Vests
KPLIB_r_vests_1 = [
    "JMSLLTE_NavytrooperHolster_armor",
    "JMSLLTE_CommandosStrip_armor",
    "V_LegStrapBag_black_F",
    "V_Pocketed_coyote_F",
    "V_Pocketed_olive_F",
    "V_Pocketed_black_F",
    "V_BandollierB_cbr",
    "V_BandollierB_rgr",
    "V_BandollierB_khk",
    "V_BandollierB_oli",
    "V_BandollierB_blk",
    "V_BandollierB_ghex_F"
];

KPLIB_r_vests_2 = [
    "JMSLLTE_CommandoBelt_armor",
    "V_Chestrig_khk",
    "V_Chestrig_oli",
    "V_Chestrig_blk"
];

KPLIB_r_vests_3 = [
    "JMSLLTE_Jinata_holster",
    "JMSLLTE_Scum_mimb_armor"
];

// Headgear
KPLIB_r_headgear_1 = [
    "",
    "",
    "",
    "",
    "H_Hat_brown",
    "H_Hat_grey",
    "H_Hat_tan",
    "H_Hat_checker",
    "H_Hat_camo",
    "H_Bandanna_surfer",
    "H_Bandanna_surfer_grn",
    "H_Bandanna_surfer_blk",
    "H_Hat_Safari_olive_F",
    "H_Hat_Safari_sand_F",
    "H_Construction_basic_black_F",
    "H_Helmet_Skate",
    "H_Cap_blu",
    "H_Cap_grn",
    "H_Cap_tan",
    "H_Cap_oli",
    "H_Cap_red",
    "H_Cap_blk"
];

KPLIB_r_headgear_2 = [
    "JMSLLTE_Path_1_black_cap",
    "JMSLLTE_Path_1_brown_cap",
    "H_Bandanna_gry",
    "H_Bandanna_camo",
    "H_Bandanna_cbr",
    "H_Bandanna_sgg",
    "H_Bandanna_khk",
    "H_Cap_blu",
    "H_Cap_grn",
    "H_Cap_tan",
    "H_Cap_oli",
    "H_Cap_red",
    "H_Cap_blk",
    "H_Cap_blk_Raven",
    "H_MilCap_dgtl"
];

KPLIB_r_headgear_3 = [
    "JMSLLTE_Snowtrooper_helmet_CIS",
    "JMSLLTE_Commando_black_helmet",
    "JMSLLTE_CommandoH_cloud_helmet",
    "H_Booniehat_khk",
    "H_Booniehat_oli",
    "H_Booniehat_tan",
    "H_Booniehat_dgtl",
    "H_Booniehat_tna_F",
    "H_PASGT_basic_olive_F",
    "H_PASGT_basic_white_F"
];

// Facegear. Applies for tier 2 and 3.
KPLIB_r_facegear = [
    "",
    "",
    ""
];
