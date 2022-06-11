g_md_file=${1}
g_md_file_path=$( readlink -f ${g_md_file} )


# Переходим в каталог скрипта
cd $( echo "${0}" | sed 's;\(.*\)\/.*;\1;' )

pandoc ${g_md_file_path} -f markdown -t html -o ../"build/print.html"

firefox ../"build/print.html"
