/*
Local machine/Production:
*/
#include <YSI_Coding\y_hooks>

// Configuration settings
#define MYSQL_HOST          "localhost"
#define MYSQL_USER          "root"
#define MYSQL_PASSWORD      ""
#define MYSQL_DATABASE      "svt"

hook OnGameModeInit@1() {
    new MySQLOpt: option_id = mysql_init_options();
    mysql_set_option(option_id, AUTO_RECONNECT, true);
    
    Database = mysql_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PASSWORD, MYSQL_DATABASE, option_id);
    
    if (Database == MYSQL_INVALID_HANDLE || mysql_errno(Database) != 0) {
        printf("MySQL connection failed! Error code: %d", mysql_errno(Database));
        printf("Error message: %s", mysql_errno(Database));
        print("Server will restart in 5 seconds...");
        
        SetTimer("DelayedRestart", 5000, false);
        return 0;
    }
    
    print("MySQL connection established successfully!");
    return 1;
}

hook OnGameModeExit() {
    if (Database != MYSQL_INVALID_HANDLE) {
        print("Closing MySQL connection...");
        mysql_close(Database);
    }
    return 1;
}

forward DelayedRestart();
public DelayedRestart() {
    SendRconCommand("gmx");
    return 1;
}