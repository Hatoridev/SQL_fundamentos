# SQL_fundamentos

Repository with small examples of database creation using SQLite, and analyzing how they would be in other tools like MySQL or MariaDB.

## How to Run

### Termux (Android):
1. **Open the Termux app**.
2. **Update and install necessary packages** by running the following commands:
   ```bash
   apt update && apt upgrade
   pkg install sqlite
   pkg install git
   git clone https://github.com/Hatoridev/SQL_fundamentos.git
   cd SQL_fundamentos
   ```

3. **Navigate to the desired lesson directory**:
   ```bash
   cd aula01  # or aula02, aula03, etc.
   ```

4. **Create the database** using the corresponding SQL file:
   ```bash
   sqlite3 your_database.db < create_database.sql
   ```

5. **To view the database**:
   - You can open the resulting `.db` file using the SQL Client app available on Android.

### Windows:
1. **Install Git and SQLite**:
   - Download and install Git: [Git for Windows](https://gitforwindows.org/)
   - Download and install SQLite: [SQLite Download Page](https://www.sqlite.org/download.html)

2. **Clone the repository** and navigate to the directory:
   ```bash
   git clone https://github.com/Hatoridev/SQL_fundamentos.git
   cd SQL_fundamentos
   ```

3. **Navigate to the desired lesson directory**:
   ```bash
   cd aula01  # or aula02, aula03, etc.
   ```

4. **Create the database** using the corresponding SQL file:
   ```bash
   sqlite3.exe your_database.db < create_database.sql
   ```

5. **To view the database**:
   - You can open the resulting `.db` file using any SQLite viewer or SQL client.

### Debian/Linux:
1. **Open the terminal** and execute the following commands to install Git and SQLite:
   ```bash
   sudo apt update && sudo apt upgrade
   sudo apt install sqlite3
   sudo apt install git
   git clone https://github.com/Hatoridev/SQL_fundamentos.git
   cd SQL_fundamentos
   ```

2. **Navigate to the desired lesson directory**:
   ```bash
   cd aula01  # or aula02, aula03, etc.
   ```

3. **Create the database** using the corresponding SQL file:
   ```bash
   sqlite3 your_database.db < create_database.sql
   ```

## Languages

<div align="left">
  <img src="https://cdn-icons-png.flaticon.com/512/5815/5815478.png" height="60" alt="SQL logo" />
</div>

## Library

<div align="left">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/sqlite/sqlite-original.svg" height="60" alt="SQLite logo" />
</div>
