# Hacker Mode

Hacker-mode is an Ubuntu Xenial image which comes pre-loaded with a set of tools
commonly used for ethical hacking. This image is intended for those who do not want
to install these tools onto their systems. The user may add the following to their
`.zshrc` or `.bash_profile`.

`alias hacker-mode="docker run -it hacker-mode"`

Then, the user can enter the container by issuing the command `hacker-mode`.
Inside the image, the can find the follwing:

* Ethical hacking toolkit - a set of programs generally used for ethical hacking (
such as, `nmap`,`gobuster`, etc.)
* Wordlist - found in the `/hacker-mode/wordlists` directory. These are the same as
the ones collected in `https://github.com/kennyn510/wpa2-wordlists/Wordlists`.
