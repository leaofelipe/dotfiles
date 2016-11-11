cd "$(dirname "${BASH_SOURCE}")";

# git pull origin master;

syncAll() {
    rsync --exclude ".git/" --exclude "install.sh" --exclude "readme.md" -avh --no-perms . ~;
    source ~/.bash_profile;
}
# unset syncAll;

echo -n "This will overwrite existin files. Are you sure? (y/n): ";
read -n response;

if [ $response =~ ^[Yy]$ ]; then
    syncAll;
fi

unset syncAll;
