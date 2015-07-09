set terminal pdf size 12,8 enhanced
set output 'out.pdf'

set xlabel "Time (s)"

set ylabel "Num. of logins"
set title "Qtalk Statistics: Remote Login"
plot \
    "livestats.data" using 1:6 with linespoints title 'remote logins per second';
pause -1;

set ylabel "Num. of logins"
set y2label "Login duration(ms)"
set y2tics

set title "Qtalk Statistics: Login"
plot \
    "livestats.data" using 1:2 with linespoints title 'locally logged in', \
    "livestats.data" using 1:3 with linespoints title 'remotely logged in', \
    "livestats.data" using 1:4 axis x1y2 with linespoints title 'login duration', \
    "livestats.data" using 1:5 axis x1y2 with linespoints title 'login to contact list duration';
pause -1;

set ylabel "Num. of chats"
set y2label "Chat sending duration(ms)"
set title "Qtalk Statistics: Chat Messages"
plot \
    "livestats.data" using 1:7 with linespoints title 'messages created', \
    "livestats.data" using 1:8 with linespoints title 'messages sent', \
    "livestats.data" using 1:9 with linespoints title 'messages acked by recipient', \
    "livestats.data" using 1:10 with linespoints title 'messages received', \
    "livestats.data" using 1:11 axis x1y2 with linespoints title 'chat sending duration';
pause -1;

set ylabel "Num. of files"
set y2label "File upload duration(ms)"
set title "Qtalk Statistics: File Tranfers"
plot \
    "livestats.data" using 1:12 with linespoints title 'files sent', \
    "livestats.data" using 1:13 with linespoints title 'files uploaded', \
    "livestats.data" using 1:14 with linespoints title 'files downloaded', \
    "livestats.data" using 1:15 axis x1y2 with linespoints title 'file upload duration', \
    "livestats.data" using 1:16 axis x1y2 with linespoints title 'file download duration', \
    "livestats.data" using 1:38 with linespoints title 'failed uploads';
pause -1;

set ylabel "Num. of calls"
set y2label "Call establishment duration(ms)"
set title "Qtalk Statistics: Calls"
plot \
    "livestats.data" using 1:17 with linespoints title 'calls started', \
    "livestats.data" using 1:18 with linespoints title 'calls accepted', \
    "livestats.data" using 1:19 with linespoints title 'calls rejected', \
    "livestats.data" using 1:20 with linespoints title 'ongoing calls', \
    "livestats.data" using 1:26 axis x1y2 with linespoints title 'call start duration', \
    "livestats.data" using 1:($27*1000) axis x1y2 with linespoints title 'average duration of ongoing calls', \
    "livestats.data" using 1:28 with linespoints title 'conference calls started', \
    "livestats.data" using 1:29 with linespoints title 'conference calls accepted';
pause -1;

set ylabel "Num. of calls"
set y2label "Num. of users"
set title "Qtalk Statistics: Ongoing Calls"
plot \
    "livestats.data" using 1:20 with linespoints title 'total ongoing calls', \
    "livestats.data" using 1:21 with linespoints title 'private ongoing calls', \
    "livestats.data" using 1:22 with linespoints title 'conference ongoing calls', \
    "livestats.data" using 1:23 axis x1y2 with linespoints title 'users in total calls', \
    "livestats.data" using 1:24 axis x1y2 with linespoints title 'users in private calls', \
    "livestats.data" using 1:25 axis x1y2 with linespoints title 'users in conference calls';
pause -1;


set yrange [1:3]
set ylabel "Link quality 1-3"
unset y2label
set title "Qtalk Statistics: Call Quality"
plot \
    "livestats.data" using 1:35 with points title 'call link quality';
pause -1;

set autoscale y
set ylabel "Num. of updates"
set title "Qtalk Statistics: Contact (Presence) Updates"
plot \
    "livestats.data" using 1:30 with linespoints title 'contact updates';
pause -1;

set yrange [0:]
set title "Qtalk Statistics: Client Load"
set ylabel "Num. of overloaded threads"
set y2label "Task waiting time (ms)"
plot \
    "livestats.data" using 1:31 with linespoints title 'overloaded threads', \
    "livestats.data" using 1:32 axis x1y2 with linespoints title 'task waiting time';
pause -1;

unset y2label
set ylabel "Memory (MB)"
set title "Qtalk Statistics: Client Memory"
plot \
    "livestats.data" using 1:($39/1048576) with linespoints title 'heap memory (MB)', \
    "livestats.data" using 1:($40/1048576) with linespoints title 'total memory (MB)';
pause -1;

set ylabel "Num. of KA"
set title "Qtalk Statistics: Key Agreements"
plot \
    "livestats.data" using 1:36 with linespoints title 'key agreements started', \
    "livestats.data" using 1:37 with linespoints title 'key agreements finished';
pause -1;
