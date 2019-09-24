for f in ~/dotfiles/install/*.sh; do  # or wget-*.sh instead of *.sh
  bash "$f" -H
done
