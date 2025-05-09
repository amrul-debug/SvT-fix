/*
	█▀▀ █░░░█ █▀▀█ ▀▀█▀▀   ▀█░█▀ █▀▀   ▀▀█▀▀ █▀▀ █▀▀█ █▀▀█ █▀▀█ █▀▀█ ░▀░ █▀▀ ▀▀█▀▀ █▀▀
	▀▀█ █▄█▄█ █▄▄█ ░░█░░   ░█▄█░ ▀▀█   ░░█░░ █▀▀ █▄▄▀ █▄▄▀ █░░█ █▄▄▀ ▀█▀ ▀▀█ ░░█░░ ▀▀█
	▀▀▀ ░▀░▀░ ▀░░▀ ░░▀░░   ░░▀░░ ▀▀▀   ░░▀░░ ▀▀▀ ▀░▀▀ ▀░▀▀ ▀▀▀▀ ▀░▀▀ ▀▀▀ ▀▀▀ ░░▀░░ ▀▀▀

	SWAT vs Terrorists is a team death-match SA-MP game-mode script.
	Compatible with SA-MP 0.3.7 and later releases.

	Author: H2O
	Licensed under GNU GPLv3

	(c) 2018-2020 H2O Multiplayer. All rights reserved.
	Website: h2omultiplayer.com
*/

#include <a_samp>

#undef MAX_PLAYERS
#define MAX_PLAYERS 100

#include <crashdetect> // ZeeX

#define MODE_NAME "SvT-TDM"
#include <YSI_Storage\y_svar>

enum e_svtconf {
	max_admin_level,
	kick_bad_nicknames,
	anti_spam,
	anti_swear,
	anti_caps,
	server_open,
	read_admin_cmds,
	disable_chat,
	read_player_cmds,
	anti_adv,
	read_pms,
	max_ping,
	max_ping_kick,
	max_warns,
	max_duel_bets,
	safe_restart,
	server_owner[MAX_PLAYER_NAME]
};
svar svtconf[e_svtconf]; 

main() {
}

#include "server/header.pwn"
#include "server/database.pwn" 
#include "server/init.pwn"
#include "players/header.pwn"
#include "server/tasks.pwn"

#include "coding/hooks.pwn" 
#include "coding/functions.pwn" 

#include "server/server-maps.pwn" 
#include "server/bunker-map.pwn" 

#include "players/admin.pwn"

#include "players/init.pwn"
#include "players/anti-cheat.pwn"
#include "players/ui.pwn"
#include "players/exit.pwn"
#include "players/reset.pwn"
#include "players/sync.pwn"
#include "players/pickups.pwn"
#include "players/vehicles.pwn"
#include "players/update.pwn"
#include "players/states.pwn"
#include "players/damage.pwn"
#include "players/death.pwn"
#include "players/chat.pwn"
#include "players/commands.pwn"

#include "players/auth/email.pwn"
#include "players/auth.pwn" 

#include "players/teams.pwn"
#include "players/classes.pwn"
#include "players/spawn.pwn"
#include "players/inventory.pwn"
#include "players/stats.pwn"
#include "players/events.pwn"
#include "players/pubg.pwn"
#include "players/zones.pwn"
#include "players/toys.pwn"
#include "players/premium.pwn"
#include "players/duels.pwn"
#include "players/crates.pwn"
#include "players/races.pwn"
#include "players/clans.pwn"
#include "players/deathmatch.pwn"
#include "players/discord.pwn"
#include "players/time.pwn"
#include "players/votekick.pwn"
#include "players/airstrike.pwn"
#include "players/ranks.pwn"
#include "players/notifiers.pwn"
#include "players/tasks.pwn"
#include "players/config.pwn"

#include <Knife>

#include "players/miscellaneous.pwn"
