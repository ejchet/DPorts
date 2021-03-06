# Created by: Javier Martin Rueda <jmrueda@diatel.upm.es>
# $FreeBSD: www/moodle22/Makefile 322483 2013-07-08 06:10:06Z wen $

PORTNAME=	moodle
PORTVERSION=	2.2.11
CATEGORIES=	www
MASTER_SITES=	SF/moodle/Moodle/stable22/
EXTRACT_SUFX=	.tgz

MAINTAINER=	wen@FreeBSD.org
COMMENT=	Course management system based on social constructionism

BUILD_DEPENDS=	${PHPBASE}/lib/php/${PHP_EXT_DIR}/intl.so:${PORTSDIR}/devel/pecl-intl
RUN_DEPENDS=	${PHPBASE}/lib/php/${PHP_EXT_DIR}/intl.so:${PORTSDIR}/devel/pecl-intl

DEPRECATED=	Unmaintained upstream
EXPIRATION_DATE=2013-08-20

CONFLICTS=	moodle-1.*.* moodle-2.3.* moodle-2.4.* moodle-2.5.*
LATEST_LINK=	moodle22

USE_PHP=	session gd pcre mbstring iconv tokenizer curl xml xmlrpc ctype \
		soap openssl simplexml spl dom json zip zlib
WRKSRC=		${WRKDIR}/moodle

OPTIONS_DEFINE=	MYSQL PGSQL MSSQL LDAP MIMETEX
OPTIONS_DEFAULT=	MYSQL
MIMETEX_DESC=	mimeTeX filter functionality

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MMYSQL}
USE_PHP+=	mysqli
.endif

.if ${PORT_OPTIONS:MPGSQL}
USE_PHP+=	pgsql
.endif

.if ${PORT_OPTIONS:MMSSQL}
USE_PHP+=	mssql
.endif

.if ${PORT_OPTIONS:MLDAP}
USE_PHP+=	ldap
.endif

.if ${PORT_OPTIONS:MMIMETEX}
RUN_DEPENDS+=	${LOCALBASE}/www/mimetex/cgi-bin/mimetex.cgi:${PORTSDIR}/www/mimetex
.endif

NO_BUILD=	yes
PLIST=		${WRKDIR}/plist
SUB_FILES=	pkg-message
SUB_LIST=	MOODLEDIR=${MOODLEDIR} \
		MOODLEDATADIR=${MOODLEDATADIR}

MOODLEDIR?=	www/moodle
MOODLEDATADIR?=	moodledata

pre-install:
	@${FIND} -s -d ${WRKSRC} -type f | ${SED} "s?${WRKSRC}?${MOODLEDIR}?g" >${PLIST}
	@${FIND} -s -d ${WRKSRC} -type d  | ${SED} "s?${WRKSRC}?@dirrm ${MOODLEDIR}?g" >> ${PLIST}
	@${ECHO} @dirrm ${MOODLEDATADIR} >> ${PLIST}

do-install:
	@cd ${WRKSRC} && ${COPYTREE_SHARE} . ${PREFIX}/${MOODLEDIR}
	@${CHOWN} -R ${WWWOWN}:${WWWGRP} ${PREFIX}/${MOODLEDIR}
	@${ECHO_CMD} '@exec ${CHOWN} -R ${WWWOWN}:${WWWGRP} ${PREFIX}/${MOODLEDIR}' \
		>> ${TMPPLIST}
	${CHMOD} -R 755 ${PREFIX}/${MOODLEDIR}
	@${ECHO_CMD} '@exec ${CHMOD} -R 755 ${PREFIX}/${MOODLEDIR}' >> ${TMPPLIST}

	@${INSTALL} -d ${PREFIX}/${MOODLEDATADIR}
	@${CHOWN} -R ${WWWOWN}:${WWWGRP} ${PREFIX}/${MOODLEDATADIR}
	@${ECHO_CMD} '@exec ${CHOWN} -R ${WWWOWN}:${WWWGRP} ${PREFIX}/${MOODLEDATADIR}' \
		>> ${TMPPLIST}
	${CHMOD} 755 ${PREFIX}/${MOODLEDATADIR}
	@${ECHO_CMD} '@exec ${CHMOD} 755 ${PREFIX}/${MOODLEDATADIR}' >> ${TMPPLIST}
.if ${PORT_OPTIONS:MMIMETEX}
	${LN} -sf ${PREFIX}/www/mimetex/cgi-bin/mimetex.cgi ${PREFIX}/${MOODLEDIR}/filter/tex/mimetex.freebsd
.endif

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
