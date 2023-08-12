# Simple Internet Monitor
A super small code snippie for measuring your internet availibilty.
- Ping Test (independent of working DNS server)
- Simple UI for displaying latency
- Anger Management Tool for constantly failing network

![Image]([http://url/to/img.png](https://github.com/TeaTiMe08/Simple_Internet_Monitor/blob/main/Wow_so_much_fancy_UI_picture_look.png?raw=true))
The red bars display failed attempts to ping. (Connection error)

### What you need
- Some Linux server in your local network
- Nginx
- or any other Web Server

### How to install
Login to your server (in my case Raspberry pi).
#### 1. Get the code
<code>sudo su</code><br>
<code>cd></code><br>
<code>git clone https://github.com/TeaTiMe08/Simple_Internet_Monitor</code><br>
#### 2. Ensure you have nginx installed and running
<code>service nginx status</code><br>
#### 3. Run the crontab for pulling
<code>crontab -e</code><br>
Adding the following line executes the script once every minute.<br>
<code>*/1 * * * * /root/Simple_Internet_Monitor/measure.sh /var/www/html/conn.csv</code><br>
Change the out put for if you have a different webroot.
#### 4. Copy the html over to the web directory
<code>cp /root/Simple_Internet_Monitor/netspeed.html /var/www/html/</code>
#### 5. Done. Test the website
Get the ip of your server with <code>hostname -I</code> and test the website from your local network by going to <code>http://<ip_addr>/netspeed.html</code>

### Saying thanks
In this section i wanted to thank my network provider O2 for motivating me for this project.<br>
**Thank you O2**<br>
As a person also working from home, it tastes like magic getting Phone Calls, Remote Sessions and anything disconnected
once every half an hour. After several weeks of they will not message me back and waiting and sitting it out i needed to manage
the anger of the not-working connection to a place where i can let it out once a day. I can do it at the netspeed.html page,
so i get let loose of those intrusive thoughts for the day and come back later for anger relief on how bad my connection really was.
