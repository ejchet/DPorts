
$FreeBSD: ports/games/rockdodger/files/patch-main.c,v 1.3 2012/11/17 05:57:51 svnexp Exp $

--- main.c.orig
+++ main.c
@@ -206,7 +206,6 @@
 struct bangdots bdot[MAX_BANG_DOTS], *bdotptr=bdot;
 struct spacedot sdot[MAX_SPACE_DOTS];
 
-struct greeble greeb[MAX_GREEBLES];
 struct greeble {
     int active;
     float x,y; // When landed, these represent an offset from the host rock
@@ -214,6 +213,8 @@
     int landed;
     int boredom; // Goes up while landed
 };
+
+struct greeble greeb[MAX_GREEBLES];
 // }}}
 
 void init_greeblies() {
@@ -459,7 +459,7 @@
     else {
 	char s[1024];
 	umask(0177);
-	sprintf(s,"%s/.rockdodger_high",getenv("HOME"));
+	snprintf(s,1024,"%s/.rockdodger_high",getenv("HOME"));
 	if (f=fopen(s,mode)) {
 	    umask(mask);
 	    return f;
@@ -478,7 +478,7 @@
 	for (i=0; i<8; i++) {
 	    char s[1024];
 	    int highscore;
-	    if (fscanf (f, "%d %[^\n]", &highscore, s)!=2)
+	    if (fscanf (f, "%d %1023[^\n]", &highscore, s)!=2)
 		break;
 	    if (high[i].allocated)
 		free(high[i].name);
