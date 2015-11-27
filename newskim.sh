PROJS="slx-publisher-stats audience-data-store discover-api slx-merchant-account-api"
PROJS="slx-publisher-stats"
source /usr/local/bin/virtualenvwrapper.sh

for proj in $PROJS
do
    if [ ! -d $proj ]
    then
        git clone git@github.com:skimhub/$proj.git
        cd $proj && mkvirtualenv -p /usr/bin/python $proj && pip install -r requirements.txt || cd -
    fi
done
