
$FreeBSD: net-mgmt/ndpmon/files/patch-parser.c 300897 2012-07-14 14:29:18Z beat $

--- parser.c.orig
+++ parser.c
@@ -77,8 +77,8 @@
 		write_proc("/proc/sys/net/ipv6/conf/all/accept_ra_defrtr",flag);
 		write_proc("/proc/sys/net/ipv6/conf/all/accept_ra_pinfo",flag);
 		write_proc("/proc/sys/net/ipv6/conf/all/accept_redirects",flag);
-	}
 #endif
+	}
 	xmlXPathFreeObject (xmlobject);
 	return;
 }
