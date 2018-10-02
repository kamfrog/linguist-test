echo "Local Linguist (linguist for non repos)"
if git status 2> /dev/null > /dev/null; then
  echo "!!! This directory is already a git repository... please use the 'linguist' command instead"
  echo "!!! If this command exits unclean it will leave a git repository behind"
  echo "!!! You can remove the git repository by running 'rm -Rf .git'"
else
  git init 2> /dev/null > /dev/null
  git add --all 2> /dev/null > /dev/null
  git commit -m "local linguist auto commit" 2> /dev/null > /dev/null
  linguist "$@"
  rm -Rf .git 2> /dev/null > /dev/null
fi
