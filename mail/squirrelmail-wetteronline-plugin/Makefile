# New ports collection makefile for:		squirrelmail-wetteronline-plugin
# Date created:		10 Feb 2006
# Whom:		Gerrit Beine <gerrit.beine@gmx.de>
#
# $FreeBSD: mail/squirrelmail-wetteronline-plugin/Makefile 324191 2013-08-03 13:44:00Z mat $

PORTNAME=		squirrelmail-${SQUIRREL_PLUGIN_NAME}-plugin
PORTVERSION=		0.1
PORTREVISION=	1
CATEGORIES=		mail www
MASTER_SITES=		http://www.squirrelmail.org/plugins/
DISTNAME=		${SQUIRREL_PLUGIN_NAME}-${PORTVERSION}
DIST_SUBDIR=		squirrelmail

MAINTAINER=		ports@FreeBSD.org
COMMENT=		Plugin for the weather in Germany

RUN_DEPENDS=		${SQUIRRELDIR}/index.php:${PORTSDIR}/mail/squirrelmail \
			${SQUIRRELDIR}/plugins/compatibility:${PORTSDIR}/mail/squirrelmail-compatibility-plugin

SQUIRREL_PLUGIN_NAME=	wetteronline

.ifdef SQUIRRELDIR
PLIST_SUB+=		SQUIRRELDIR=${SQUIRRELDIR}
SUB_LIST+=		"SQUIRRELDIR=${SQUIRRELDIR}"
.else
.	ifndef WITHOUT_WWWDIR
SQUIRRELDIR=		${PREFIX}/www/squirrelmail
PLIST_SUB+=		SQUIRRELDIR=www/squirrelmail
SUB_LIST+=		"SQUIRRELDIR=www/squirrelmail"
.	else
SQUIRRELDIR=		${PREFIX}/squirrelmail
PLIST_SUB+=		SQUIRRELDIR=squirrelmail
SUB_LIST+=		"SQUIRRELDIR=squirrelmail"
.	endif
.endif

USES=			perl5
NO_BUILD=		yes
NO_WRKSUBDIR=		yes
USE_PERL5=		build
USE_PHP=		yes
WANT_PHP_WEB=		yes
IGNORE_WITH_PHP=5 # known incompatibilities with php-5.4, use 5.3 for now
DEFAULT_PHP_VER=53

pre-everything::
	@${ECHO} ""
.ifndef WITHOUT_ACTIVATE
	@${ECHO} "Activating plug-in in SquirrelMail after installation."
	@${ECHO} "If you don't want to automatically activate the plug-in set"
	@${ECHO} "WITHOUT_ACTIVATE=yes"
.else
	@${ECHO} "NOT Activating plug-in in SquirrelMail after installation."
	@${ECHO} "If you want to automatically activate the plug-in unset"
	@${ECHO} "WITHOUT_ACTIVATE"
.endif
	@${ECHO} ""

do-install:
	${CP} -rp ${WRKSRC}/${SQUIRREL_PLUGIN_NAME} ${SQUIRRELDIR}/plugins
	${CHOWN} -R ${WWWOWN}:${WWWGRP} ${SQUIRRELDIR}/plugins/${SQUIRREL_PLUGIN_NAME}

post-install:
.ifndef WITHOUT_ACTIVATE
.if exists( ${SQUIRRELDIR}/config/config.php )
	@${ECHO} "Activating plug-in in SquirrelMail"
	${SQUIRRELDIR}/config/conf.pl --install-plugin ${SQUIRREL_PLUGIN_NAME}
.endif
.else
	@${ECHO} "To activate the plug-in in SquirrelMail use"
	@${ECHO} "${SQUIRRELDIR}/config/conf.pl --install-plugin ${SQUIRREL_PLUGIN_NAME}"
.endif
	@${ECHO} ""

.include <bsd.port.mk>
