if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/JstathamTG/sswwssmovie.git /sswwssmovie
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /sswwssmovie
fi
cd /sswwssmovie
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
