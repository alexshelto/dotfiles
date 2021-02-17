PS1=$'\e[0;32malex@zoso\e[0m:\e[0;36m%2d\e[0m\n$ '


mkcd ()
{
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}


alias ls="ls -G"





