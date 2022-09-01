if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SadKidBGMZ/KR-AUTO-FILTER-BOT.git /KR-AUTO-FILTER-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KR-AUTO-FILTER-BOT
fi
cd /KR-AUTO-FILTER-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
