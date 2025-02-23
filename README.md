# Mossanite Project Proposal

So, activists in particular have a need for highly secure communications and electronic infrastructure. (Collaborative Document Editing, Video Conferencing, Social Media.)

To combat this most communities have moved away from highly insecure platforms like google drive, discord, zoom. And on to more secure e2e encrypted platforms like signal, cryptpad and jitsi. However all of these platforms have some problems:

## Metadata Storage

Despite these platforms being end-to-end encrypted, because the servers on the backend still need to transfer data from one phone/laptop to another. This kind of metadata can be extremely valuable, for example if signal wanted to, it could easily log all the following information and pass it along to law enforcement

1.  Your real phone number. (And with cooperation from your cell provider, the location of the phone whenever it is on)
2.  The identities of all of your signal contacts.
3.  How frequently 2 parties are texting each other.
4.  The exact time of each message being sent. (Somewhat complicated since read messages & reactions count as messages)
5.  The time and duration of all phone calls.

This information presents law enforcement with infinite opportunities to generate probable cause, and depending on how correlated messages are with outside events could easily be used at trial as well. (In fact activists have been looped into RICO cases)

This is one of the main reasons that we use Signal, despite WhatsApp using the same protocol, mainly since so far, signal has only given item (1) over to law enforcement. Where as WhatsApp has much deeper collaborations.

## Censorship Resistance

In the aftermath of the US government shutting down tiktok, largely of their own admission to directly combat leftist narratives around hamas:

https://www.youtube.com/watch?v=-7xTxAilSF0

https://www.kenklippenstein.com/p/tiktok-ban-fueled-by-israel-not-china

And after this I am really concerned with US law enforcement taking similar actions against other platforms to disrupt leftist organizing. Not even to acquire information, but just cause a massive disruption to organizing efforts. At least for me, if signal was instantly banned it would probably take 6 months to re-establish contact on a new platform.

## Threat Model

Fundamentally the big problem with all of these is that relying on strangers to host part of the infrastructure makes the process of threat modeling really hard. Since you always end up diving into the specific protocols to know what information is being leaked, and keep track of each provider to make sure they arent turning over the information to LE.

This leads to a paranoia heavy environment, where there is a ton of justifiable distrust of technology, and figuring out what third party services are good and which ones are bad is largely done through rumor and reputation.

In an ideal world all of these services would be self hosted, and run entirely on computers under the control of your affinity group. Thus when using any service you only need to worry about

1.  Is it possible for LE to compromise your phone/computer.
2.  Is it possible for LE to compromise the server you are running the services on.

Traditionally this is almost never done due to:

## Ease of Use

Normally setting up a self hosted solution would take someone really technical a few weekends, we hope to dramatically reduce this so that

1.  Self hosting a solution is insanely easy (It should take someone non technical 20 minutes + an old laptop to get the server up and running)
2.  All the services you could possibly need come preinstalled with secure defaults.
3.  Documentation and explainers about the services and best practices are included as well.

# The proposal

We were wanting to make a simple image you could put on a usb stick. And once you install it on an old laptop or desktop. It will automagically host all the digital services you would need for common activist work. And after installing a web extension, you could connect to it completely anonymously from anywhere in the world. (While at the same time keeping the location of the server totally secret.)

For an initial MVP we would want to include:

1.  End to End Encrypted Video Conferencing Software
2.  Collaborative Document Editing
3.  Text based comms/Signal Replacement

Depending on what people want, we also could add

1.  Software that could securely transcribe meetings to make note taking easier.
2.  Anonomous self hosted instances of social media platforms (like bluesky/mastodon)
3.  Self hosted Geospatial tools and satellite imagery for planning actions.
4.  Goverment research tools (maybe kessler.xyz)
5.  Secure Self Hosted LLMs ???


# Development VM 

in order to run the development VM run the following command:

```bash
nix run .#nixosConfigurations.mossanite.config.system.build.vm
```

