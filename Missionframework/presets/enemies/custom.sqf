/*
    File: custom.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-10-07
    Last Update: 2020-05-15
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Custom (default CSAT) enemy preset.

    Needed Mods:
        - None

    Optional Mods:
        - None
*/

// Enemy infantry classes
KPLIB_o_officer = "knd_imp_commando_heavy_F";                                        // Officer
KPLIB_o_squadLeader = "knd_stormtrooper_shock_officer_F";                                 // Squad Leader
KPLIB_o_teamLeader = "knd_stormtrooper_officer_F";                                  // Team Leader
KPLIB_o_sentry = "knd_armytrooper_F";                                    // Rifleman (Lite)
KPLIB_o_rifleman = "knd_armytrooper_F";                                       // Rifleman
KPLIB_o_riflemanLAT = "knd_armytrooper_rocket_F";                                // Rifleman (LAT)
KPLIB_o_grenadier = "knd_stormtrooper_shock_F";                                   // Grenadier
KPLIB_o_machinegunner = "knd_stormtrooper_heavy_F";                               // Autorifleman
KPLIB_o_heavyGunner = "knd_stormtrooper_heavy_F";                                // Heavy Gunner
KPLIB_o_marksman = "knd_armytrooper_sniper_F";                                     // Marksman
KPLIB_o_sharpshooter = "knd_armytrooper_sniper_F";                              // Sharpshooter
KPLIB_o_sniper = "knd_scoutTrooper_F";                                          // Sniper
KPLIB_o_atSpecialist = "knd_armytrooper_rocket_F";                                // AT Specialist
KPLIB_o_aaSpecialist = "knd_armytrooper_rocket_AA_F";                                // AA Specialist
KPLIB_o_medic = "knd_armytrooper_medic_F";                                            // Combat Life Saver
KPLIB_o_engineer = "knd_stormtrooper_F";                                      // Engineer
KPLIB_o_paratrooper = "knd_imp_commando_basic_F";                                 // Paratrooper

// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "knd_imp_transport";                                           // Ifrit
KPLIB_o_mrapArmed = "knd_imp_transport";                                     // Ifrit (HMG)
KPLIB_o_transportHeli = "knd_imp_patrol_laat";                   // Mi-290 Taru (Bench)
KPLIB_o_transportTruck = "merc_argon_covered";;                        // Tempest Transport (Covered)
KPLIB_o_transportTruckAmmo = "O_Truck_03_transport_F";                  // Tempest Transport (Open) -> Has to be able to transport resource crates!
KPLIB_o_fuelTruck = "O_Truck_03_fuel_F";                                // Tempest Fuel
KPLIB_o_ammoTruck = "O_Truck_03_ammo_F";                                // Tempest Ammo
KPLIB_o_fuelContainer = "Land_Pod_Heli_Transport_04_fuel_F";            // Taru Fuel Pod
KPLIB_o_ammoContainer = "Land_Pod_Heli_Transport_04_ammo_F";            // Taru Ammo Pod
KPLIB_o_flag = "ls_flag_imp";                                          // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "knd_O_Imperial_ArmyTrooper_F",                                                     // Rifleman (Lite)
    "knd_O_Imperial_ArmyTrooper_F",                                                     // Rifleman (Lite)
    "knd_O_Imperial_ArmyTrooper_F",                                                     // Rifleman
    "knd_O_Imperial_ArmyTrooper_F",                                                     // Rifleman
    "knd_O_Imperial_ArmyTrooper_Rocketman_AA_F",                                                 // Rifleman (AT)
    "knd_O_Imperial_ArmyTrooper_Rocketman_AT_F",                                                  // Autorifleman
    "knd_O_Imperial_ArmyTrooper_Marksman_F",                                                   // Marksman
    "knd_O_Imperial_ArmyTrooper_Medic_F",                                               // Medic
    "knd_O_Imperial_ArmyTrooper_Officer_F"                                                     // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
KPLIB_o_militiaVehicles = [
    "knd_imp_LIU",
    "knd_imp_walker",
    "knd_imp_transport"                                              // Qilin (armed)
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
KPLIB_o_armyVehicles = [
    "knd_imp_LIU",                                                  // Recon Saber
    "knd_imp_transport",                                                  // Recon Saber
    "knd_imp_LIU",                                                  // Recon Saber
    "knd_imp_transport",                                                   // Saber Tank
    "knd_imp_transport",                                        // Saber Tank
    "knd_imp_px10",                                        // Saber Tank
    "knd_imp_hovertank",                                            // Saber GMG
    "knd_imp_hovertank",                                            // Saber GMG
    "knd_imp_LIU",                                            // Saber GMG
    "knd_imp_walker",                                        // Saber Tank                                                  // Recon Saber
    "knd_imp_transport",                                                  // Recon Saber
    "knd_imp_saber",                                                  // Recon Saber
    "knd_imp_transport",                                                   // Saber Tank
    "knd_imp_transport",                                        // Saber Tank
    "knd_imp_px10",                                        // Saber Tank                                       // Saber GMG                                           // Saber GMG
    "knd_imp_walker",                                            // Saber GMG
    "knd_imp_LIU",                                        // Saber Tank
    "knd_imp_saber",                                                 // Recon Saber
    "knd_imp_atte"
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
    "knd_imp_transport",
    "knd_imp_transport",
    "knd_imp_transport",
    "knd_imp_transport",
    "knd_imp_transport",
    "knd_imp_transport",
    "knd_imp_walker",
    "knd_imp_walker",                                              // Recon Saber
    "knd_imp_saber",                                                  // Recon Saber                                          // Argon Transport
    "knd_imp_px10"                                                  // Recon Saber                                          // Argon Transport
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
    "knd_imp_saber",                                                  // Recon Saber  , "knd_imp_walker"
    "knd_imp_transport",                                                  // Recon Saber
    "knd_imp_saber",                                                  // Recon Saber
    "knd_imp_px10",                                                    // Saber Tank
    "knd_imp_transport",                                             // Argon Covered
	"merc_argon_covered",                                             // Argon Covered
    "knd_imp_transport",                                        // Saber Tank
    "knd_imp_px10",                                        // Saber Tank
    "knd_imp_walker",                                            // Saber GMG
    "knd_imp_walker",                                            // Saber GMG
    "knd_imp_px10",                                        // Saber Tank
    "knd_imp_hovertank",
    "knd_imp_px10",                                                  // Recon Saber  , "knd_imp_walker"
    "knd_imp_transport",                                                  // Recon Saber
    "knd_imp_saber",                                                  // Recon Saber
    "knd_imp_px10",                                                    // Saber Tank
    "knd_imp_transport",                                             // Argon Covered                                           // Argon Covered
    "knd_imp_transport",                                        // Saber Tank
    "knd_imp_px10",                                        // Saber Tank
    "knd_imp_walker",                                            // Saber GMG
    "knd_imp_walker",                                            // Saber GMG
    "knd_imp_px10",                                        // Saber Tank
    "knd_imp_hovertank",                                            // Saber GMG
    "knd_imp_atte"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
    "knd_imp_transport",                                                  // Recon Saber
    "knd_imp_walker",                                                  // Recon Saber
    "knd_imp_transport",                                          // Argon Transport                                      // Saber Tank
    "knd_imp_transport"
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
KPLIB_o_troopTransports = [
    "knd_imp_transport",                                             // Argon Covered
    "knd_imp_laat",
    "knd_imp_gozanti"                               // Po-30 Orca (Armed)
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
    "knd_imp_laat",
    "knd_imp_gozanti"                              // Mi-48 Kajman
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [
    "knd_imp_tie_ln",
    "knd_imp_interceptor_boring",
    "knd_imp_z95",
    "knd_imp_z98",
    "knd_imp_gozanti"                                              // To-201 Shikra
];
