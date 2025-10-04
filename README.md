# Databases

## 1. Introduction

*"Databases"* is both a book and a course held at [Hefei University](http://www.hfuu.edu.cn/english/) ([合肥大学](http://www.hfuu.edu.cn/)).
We here provide all the resources of this course.

The goal of the course and book is to teach undergraduate and graduate students the topic of databases.
Our focus is a practice-oriented approach to the topic.
This means that each concept that we introduce or discuss is always accompanied by a rich set of examples.
In the course we will use many tools, ranging from

- the [PostgreSQL](https://www.postgresql.org) database management system, over
- [yED](https://yed.yworks.com), a graph editor that can be used for conceptual modeling,
- [LibreOffice Base](https://www.libreoffice.org), which can be used as convenient front end for creating forms and reports for data in a database,
- [Python](https://thomasweise.github.io/programmingWithPython), a programming language which can connect to PostgreSQL by using the [Psycopg](https://www.psycopg.org) module, to the
- [pgModeler](https://pgmodeler.io), a tool with which we can conveniently design logical PostgreSQL database schemas.

After completing the course, you should be able to productively work with databases, at least at a beginner level.
You should be able to realize simple database-based applications.
And you should be able to navigate the huge ecosystem of different database management systems, tools, and paradigms in this field in order to pick the right tool for the right problem.

This is work in progress, as I just began writing this book.


## 2. Resources
The website with up-to-date information about the course is <https://thomasweise.github.io/databases>.


### 2.1. The Book
The book itself can be downloaded as pdf at <https://thomasweise.github.io/databases/databases.pdf>.


### 2.2. Die Slides in Deutsch  &mdash; The Slides in German Language
The slides in German language can be found at <https://thomasweise.github.io/databasesSlidesDE> and are listed here:

1. [Organisation](https://thomasweise.github.io/databasesSlidesDE/01_organisation.pdf)
2. [Einleitung](https://thomasweise.github.io/databasesSlidesDE/02_einleitung.pdf)
3. [Anforderungen an ein Datenbankmanagementsystem](https://thomasweise.github.io/databasesSlidesDE/03_anforderungen.pdf)
4. [Geschichte](https://thomasweise.github.io/databasesSlidesDE/04_geschichte.pdf)
5. [Software und Literatur](https://thomasweise.github.io/databasesSlidesDE/05_software_und_literatur.pdf)
6. [Installation von PostgreSQL](https://thomasweise.github.io/databasesSlidesDE/06_installation_postgresql.pdf)
7. [Beispiele Herunterladen](https://thomasweise.github.io/databasesSlidesDE/07_beispiele_herunterladen.pdf)
8. [Fabrik-Datenbank: Benutzer und Datenbank](https://thomasweise.github.io/databasesSlidesDE/08_fabrik_datenbank_benutzer_und_db.pdf)
9. [Fabrik-Datenbank: Tabelle `product`](https://thomasweise.github.io/databasesSlidesDE/08_fabrik_datenbank_tabelle_product.pdf)
10. [Fabrik-Datenbank: Tabelle `customer`](https://thomasweise.github.io/databasesSlidesDE/10_fabrik_datenbank_tabelle_customer.pdf)
11. [Fabrik-Datenbank: Tabelle `demand`](https://thomasweise.github.io/databasesSlidesDE/11_fabrik_datenbank_tabelle_demand.pdf)
12. [Fabrik-Datenbank: Joins und Views](https://thomasweise.github.io/databasesSlidesDE/12_fabrik_datenbank_joins_und_views.pdf)
13. [Fabrik-Datenbank: Daten ändern und löschen](https://thomasweise.github.io/databasesSlidesDE/13_fabrik_datenbank_daten_ändern_und_löschen.pdf)
14. [Python Installieren](https://thomasweise.github.io/programmingWithPythonSlidesDE/03_python_installieren.pdf) &mdash; Slide-Set&nbsp;03 der Schwestervorlesung "[Programming with Python](https://thomasweise.github.io/programmingWithPython)"
15. [Psycopg Installieren](https://thomasweise.github.io/databasesSlidesDE/15_psycopg_installieren.pdf)
16. [Fabrik-Datenbank: von Python auf PostgreSQL zugreifen](https://thomasweise.github.io/databasesSlidesDE/16_fabrik_datenbank_von_python_auf_postgresql_zugreifen.pdf)
17. [LibreOffice Installieren](https://thomasweise.github.io/databasesSlidesDE/17_libreoffice_installieren.pdf)
18. [Fabrik-Datenbank: LibreOffice Base mit PostgreSQL verbinden](https://thomasweise.github.io/databasesSlidesDE/18_fabrik_datenbank_libreoffice_base_verbinden.pdf)
19. [Fabrik-Datenbank: Tabellen und Sichten in LibreOffice Base](https://thomasweise.github.io/databasesSlidesDE/19_fabrik_datenbank_libreoffice_base_tabellen_und_sichten.pdf)
20. [Fabrik-Datenbank: ERDs in LibreOffice Base](https://thomasweise.github.io/databasesSlidesDE/20_fabrik_datenbank_libreoffice_base_erd.pdf)
21. [Fabrik-Datenbank: Formulare in LibreOffice Base](https://thomasweise.github.io/databasesSlidesDE/21_fabrik_datenbank_libreoffice_base_formulare.pdf)
22. [Fabrik-Datenbank: Berichte in LibreOffice Base](https://thomasweise.github.io/databasesSlidesDE/22_fabrik_datenbank_libreoffice_base_berichte.pdf)
23. [Fabrik-Datenbank: Aufräumen](https://thomasweise.github.io/databasesSlidesDE/23_fabrik_datenbank_aufräumen.pdf)


### 2.3. The Examples
This is a practice-oriented course on databases.
Therefore, we also provide a set of examples.
The examples that we provide are all "real" in the sense that they can actually be executed and their results are actually presented in the book.
All of them are available in the online repository <https://github.com/thomasweise/databasesCode>.


### 2.4. LaTeX Sources, Graphics, Bibliography, etc.
The book is written in LaTeX.
You can find its sources in <https://github.com/thomasWeise/databases>.
You may use these files under the licensing terms provided below.


## 3. License
This repository contains two types of material:
Materials that I (Thomas Weise) have created by myself and such that have been created by others.

The vast majority of the material is teaching material created by me (Thomas Weise).
This and only this material is released under the Attribution-NonCommercial-ShareAlike 4.0 International license (CC&nbsp;BY&#8209;NC&#8209;SA&nbsp;4.0), see [http://creativecommons.org/licenses/by-nc-sa/4.0](http://creativecommons.org/licenses/by-nc-sa/4.0/) for a summary.

However, the repository also includes some images and figures created by others, which are marked explicitly and licensed under their authors' terms.
For example, all logos and trademarks are under the copyright of their respective owners.
The list of files not under the CC&nbsp;BY&#8209;NC&#8209;SA&nbsp;4.0 license but under their individual owner's copyrights includes, but is not limited to:

+ the [LibreOffice](https://www.libreoffice.org) Logo, e.g.,
    - text/main/introduction/software/libreofficeLogo.pdf
    - text/main/introduction/software/libreofficeLogo.svg
+ the [MariaDB](https://mariadb.org) Logo, e.g.,
    - text/main/introduction/software/mariadbLogo.pdf
    - text/main/introduction/software/mariadbLogo.svg
+ the [PgModeler](https://pgmodeler.io) Logo: This logo is under the copyright of Raphael Araújo~e~Silva, e.g.,
    - text/main/introduction/gettingStarted/pgmodelerLogo.pdf
    - text/main/introduction/gettingStarted/pgmodelerLogo.svg
+ the [PostgreSQL](https://www.postgresql.org) Logo, e.g.,
    - text/main/introduction/software/postgresqlLogo.pdf
    - text/main/introduction/software/postgresqlLogo.svg
+ the [Psycopg](https://www.psycopg.org) Logo: Copyright (c) Gabriella Albano and the Psycopg team, e.g.,
    - text/main/gettingStarted/psycopgLogo.pdf
    - text/main/gettingStarted/psycopgLogo.svg
+ the [Python](https://www.python.org) Logo, e.g.,
    - text/main/gettingStarted/pythonLogo.pdf
    - text/main/gettingStarted/pythonLogo.svg
+ the [SQLite](https://sqlite.org) Logo, e.g.,
    - text/main/introduction/software/sqliteLogo.pdf
    - text/main/introduction/software/sqliteLogo.svg
+ the [yEd](https://www.yworks.com/products/yed) Logo: The yEd logo is protected by copyright. yEd is a registered trademark of [yWorks GmbH](https://www.yworks.com). Unauthorized use, reproduction, or distribution is strictly prohibited., e.g.,
    - text/main/introduction/gettingStarted/yEdLogo.pdf
    - text/main/introduction/gettingStarted/yEdLogo.svg

You can download its newest version of the course material from <https://thomasweise.github.io/databases>.
This version may change since this course and book both are work in progress.
You can cite this book as follows:

<pre>@book{databases,<br/>&nbsp;author&nbsp;=&nbsp;{Thomas&nbsp;Weise},<br/>&nbsp;title&nbsp;=&nbsp;{Databases},<br/>&nbsp;year&nbsp;=&nbsp;{2025},<br/>&nbsp;publisher&nbsp;=&nbsp;{Institute&nbsp;of&nbsp;Applied&nbsp;Optimization,<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.hfuu.edu.cn/aibd">School&nbsp;of&nbsp;Artificial&nbsp;Intelligence&nbsp;and&nbsp;Big&nbsp;Data</a>,<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.hfuu.edu.cn/">Hefei&nbsp;University</a>},<br/>&nbsp;address&nbsp;=&nbsp;{Hefei,&nbsp;Anhui,&nbsp;China},<br/>&nbsp;url&nbsp;=&nbsp;{<a href="https://thomasweise.github.io/databases">https://thomasweise.github.io/databases</a>}<br/>}</pre>

**If you have any comments or suggestions regarding the book, or if you spotted an error or typo, please feel free to submit an [issue here](https://github.com/thomasWeise/databases/issues).**
Your feedback would help us to improve the book.

We statically include the [pdfsizeopt](https://github.com/pts/pdfsizeopt) tool in the build process of our book  via the [bookbase repository](https://github.com/thomasWeise/bookbase) and use it during the book compiling and building process to compress the book pdf file.
This tool is excluded from the license mentioned above.
It is under the GNU GENERAL PUBLIC LICENSE Version 2, June 1991 and the copyright belongs to its authors.


## 4. Contact
If you have any questions or suggestions, please contact
Prof. Dr. Thomas Weise (汤卫思教授)
at the Institute of Applied Optimization (应用优化研究所, IAO)
of the School of Artificial Intelligence and Big Data ([人工智能与大数据学院](http://www.hfuu.edu.cn/aibd))
of [Hefei University](http://www.hfuu.edu.cn/english/) ([合肥大学](http://www.hfuu.edu.cn/)),
in Hefei, Anhui, China (中国安徽省合肥市)
via email to [tweise@hfuu.edu.cn](mailto:tweise@hfuu.edu.cn) with CC to [tweise@ustc.edu.cn](mailto:tweise@ustc.edu.cn).
