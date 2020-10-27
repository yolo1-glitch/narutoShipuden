#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <sys/time.h>
#include <mysql/mysql.h>


using namespace std;

int main()
{ 


MYSQL_RES *result;
MYSQL_ROW row;
MYSQL *connection, mysql;

const char* server="127.0.0.1";
const char* user ="****";
const char* password="****";
const char* database="***";

int state;

mysql_init(&mysql);

connection = mysql_real_connect(&mysql,server,user,password,database,0,0,0);

if (connection == NULL)
    {

cout<<mysql_error(&mysql);

return 1;
    }

state = mysql_query(connection, "SELECT * FROM radiation");

if (state !=0)
    {
    cout <<mysql_error(connection);
   return 1;
    }

result = mysql_store_result(connection);


row=mysql_fetch_row(result);
string name;

cout <<"\nGive the name : "<<endl;
cin >>name;

cout << "\nThe halftime for "<<name << " is "<<**row[2]**->here i want to extract the analogous filed <<" hours";
//}



mysql_free_result(result);

mysql_close(connection);


return 0;
}
