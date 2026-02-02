
clear_cache() {
    echo "Cleaning old Pacman packages..."
    sudo pacman -Sc
    sudo pacman -Scc
    paru -Sc
    paru -Scc
}
