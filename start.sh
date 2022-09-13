if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Akshay-Chand/Akv9.git /Akv9
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Akv9
fi
cd /Akv9
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
