
$FreeBSD: ports/irc/ctrlproxy/files/patch-lib_connection.c,v 1.4 2012/11/17 05:58:28 svnexp Exp $

--- lib/connection.c.orig
+++ lib/connection.c
@@ -676,8 +676,12 @@
 	pid_t pid;
 	int sock[2];
 
+#ifdef __FreeBSD__
+	if (socketpair(PF_LOCAL, SOCK_STREAM, 0, sock) == -1) {
+#else
 	if (socketpair(PF_UNIX, SOCK_STREAM, AF_LOCAL, sock) == -1) {
+#endif
		network_log(LOG_ERROR, s, "socketpair: %s", strerror(errno));
 		return -1;
 	}
 
