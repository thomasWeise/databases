#!/bin/bash -

# strict error handling
set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   # set -u : exit the script if you try to use an uninitialized variable
set -o errexit   # set -e : exit the script if any statement returns a non-true return value

echo "$(date +'%0Y-%0m-%0d %0R:%0S'): Welcome to the download script."

curDir="$(pwd)"
echo "$(date +'%0Y-%0m-%0d %0R:%0S'): The current directory is '$curDir'."

scriptDir="$(realpath "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/bookbase/scripts")"
echo "$(date +'%0Y-%0m-%0d %0R:%0S'): The script directory is '$scriptDir'."

download="$(realpath "$scriptDir/downloadMulti.sh")"
echo "$(date +'%0Y-%0m-%0d %0R:%0S'): The download script directory is '$download'."

downloadDir="databases_$(date +"%Y%m%d")"
echo "$(date +'%0Y-%0m-%0d %0R:%0S'): We will use the download directory '$downloadDir'."
mkdir -p "$downloadDir"
cd "$downloadDir"

"$download" "databases" "databases.pdf"
"$download" "databasesQuestions" "databasesQuestions.pdf"

mkdir slidesDE
cd slidesDE

"$download" "databasesSlidesDE" "01_organisation.pdf" "02_einleitung.pdf" "03_anforderungen.pdf" "04_geschichte.pdf" "05_software_und_literatur.pdf" "06_postgresql_installieren.pdf" "07_beispiele_herunterladen.pdf" "08_fabrik_datenbank_benutzer_und_db.pdf" "09_fabrik_datenbank_tabelle_product.pdf" "10_fabrik_datenbank_tabelle_customer.pdf" "11_fabrik_datenbank_tabelle_demand.pdf" "12_fabrik_datenbank_joins_und_views.pdf" "13_fabrik_datenbank_daten_ändern_und_löschen.pdf" "15_psycopg_installieren.pdf" "16_fabrik_datenbank_von_python_auf_postgresql_zugreifen.pdf" "17_libreoffice_installieren.pdf" "18_fabrik_datenbank_libreoffice_base_verbinden.pdf" "19_fabrik_datenbank_libreoffice_base_tabellen_und_sichten.pdf" "20_fabrik_datenbank_libreoffice_base_erd.pdf" "21_fabrik_datenbank_libreoffice_base_formulare.pdf" "22_fabrik_datenbank_libreoffice_base_berichte.pdf" "23_fabrik_datenbank_aufräumen.pdf" "24_entwicklung.pdf" "25_anforderungen.pdf" "26_yed_installieren.pdf" "27_konzeptuelles_schema_entitäten_und_attribute.pdf" "28_konzeptuelles_schema_schlüssel.pdf" "29_konzeptuelles_schema_beziehungen.pdf" "30_konzeptuelles_schema_schwache_entitäten.pdf" "31_konzeptuelles_schema_beziehungskardinalität.pdf" "32_konzeptuelles_schema_kompakte_notation.pdf" "33_datenmodell_auswahl.pdf" "34_logisches_schema_relationales_datenmodell.pdf" "35_pgmodeler_installieren.pdf" "36_logisches_schema_entitäten_zu_tabellen.pdf" "37_logisches_schema_beziehungen.pdf" "38_logisches_schema_schwache_entitäten.pdf" "39_logisches_schema_beziehungsattribute.pdf"

"$download" "programmingWithPythonSlidesDE" "03_python_installieren.pdf"
mv "03_python_installieren.pdf" "14_python_installieren_03_python_course.pdf"

cd ..
git clone --depth 1 https://github.com/thomasWeise/databasesCode
mv databasesCode examples
rm -rf examples/.git

echo "$(date +'%0Y-%0m-%0d %0R:%0S'): Done with the download script."
