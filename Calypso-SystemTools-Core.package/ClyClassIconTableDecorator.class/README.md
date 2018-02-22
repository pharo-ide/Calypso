I decorate classes with their icons defined by #systemIcon method.

My decoration logic is a bit complex. I am supposed to work in remote browser too. And sending #systemIcon to remote class would be very expensive.
So instead I find same class in my local environment and ask it for the icon.