# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: ports/www/mybb/Makefile,v 1.18 2013/02/19 18:15:05 svnexp Exp $

PORTNAME=	mybb
PORTVERSION=	1.6.9
CATEGORIES=	www

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	A PHP-based bulletin board / discussion forum system

USE_GITHUB=	yes
GH_ACCOUNT=	${PORTNAME}
GH_TAGNAME=	${PORTNAME}_1609
GH_COMMIT=	67cf4c0

NO_BUILD=	yes
USE_PHP=	xsl mysql iconv gd xml
USE_MYSQL=	yes
SUB_FILES=	pkg-message
WWWDIR?=	${PREFIX}/www/${PORTNAME}

.include <bsd.port.pre.mk>

do-install:
	@${MKDIR} ${WWWDIR}
	${CP} -R ${WRKSRC}/ ${WWWDIR}
	${TOUCH} ${WWWDIR}/inc/config.php
	@${CHOWN} ${WWWOWN} ${WWWDIR}/inc/config.php ${WWWDIR}/inc/settings.php
	@${CAT} ${PKGMESSAGE}

create-plist:
	@${FIND} -s ${WRKSRC}/${file} -not -type d \
		| ${SED} -e 's,^${WRKSRC},%%WWWDIR%%,' > ${PLIST}
	@${ECHO_CMD} '@exec touch %D/%%WWWDIR%%/inc/config.php;chown ${WWWOWN} %D/%%WWWDIR%%/inc/config.php' >> ${PLIST}
	@${ECHO_CMD} '@unexec if [ ! -s %D/%%WWWDIR%%/inc/config.php ];then rm -f %D/%%WWWDIR%%/inc/config.php;fi' >> ${PLIST}
	@${FIND} -ds ${WRKSRC}/${file} -type d \
	| ${SED} -e 's,^${WRKSRC},@dirrm %%WWWDIR%%,' >> ${PLIST}

.include <bsd.port.post.mk>
