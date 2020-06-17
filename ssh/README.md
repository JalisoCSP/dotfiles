To easily copy SSH keys onto a server, ssh into it for a machine you're allowed to access - or perhaps Digital Ocean! - and copy this command:

```
curl https://raw.githubusercontent.com/JalisoCSP/dotfiles/master/ssh/authorized_keys.pub >> ~/.ssh/authorized_keys
```
