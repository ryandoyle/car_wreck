A set of puppet modules to build an intentionally broken server

# Why would you want to do that?
I was reading about a company that got potential operations candidates to undergo an interactive technical test. The interviewer would present the candidate with a misconfigured server/service and they would need to use their technical and troubleshooting skills to bring the service back online. I thought this was a great idea as it tests both technical ability as well as troubleshooting skills.

I tried to dig up the article that I read but I just couldn't find it. To dig the knife in even deeper, the author of the article had code for configuring a broken system.

Without the code in hand and just the concept, I've knocked together my own technical test.

# What does the working server do?
It runs a very simple PHP webapp that allows users to upload files, like a public FTP or basic megaupload-like site.

This service is deemed working when:
* Users can access the site
* Users can upload and download files

# What is broken?
* Apache is stopped
* Postfix is listening on port 80
* iptables is running and not configured to let port 80 through
* The directory that stores the uploaded files has incorrect permissions 

# How hard is the test?
I don't know. It seems simple but that's because I wrote it :). It has to be hard enough to be effective but not so hard that it cannot be finished by those with good abilities.

I have chosen a basic LAMP (well LAP I guess, no MySQL) that people should be familiar with. I didn't want people to get stuck in the details of the technology/application but test more on the operating system, processes, networking, permissions etc...

# Rules
There are no rules, but I consider bad practices a lack of understanding. 

What would be bad to get the web application working?
* Chmod 777'ing 
* Running apache as root
* Turning off iptables instead of allowing the correct service through

What would get you extra points?
* Fixing postfix to listen on the correct port and not just turning it off

# What the testee needs to know
It's up to you really but I would mention:
* The environment is not misconfigured IE:
** IP address
** VLANs
** Security Groups (if AWS)
* What the working application looks like
* Application code is not misconfigured but may be useful to view for insight
* Files and paths are RedHat defaults
* The web application server is Apache HTTPD

# AWS?

Userdata:
    #!/bin/bash
    yum -y install git
    git clone git://github.com/ryandoyle/car_wreck.git
    cd car_wreck && ./apply.sh
    cd .. && rm -rf car_wreck

