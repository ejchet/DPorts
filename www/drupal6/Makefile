# Created by: Nick Hilliard <nick@foobar.org>
# $FreeBSD: www/drupal6/Makefile 320363 2013-06-09 17:44:17Z miwi $

PORTNAME=	drupal6
PORTVERSION=	6.28
CATEGORIES=	www
MASTER_SITES=	http://ftp.drupal.org/files/projects/
DISTNAME=	drupal-${PORTVERSION}
DIST_SUBDIR=	drupal

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	A database driven web content management system (CMS)

USE_DRUPAL=	yes
DRUPAL6_PORT=	yes

USE_PHP=	gd pcre session xml mbstring
WANT_PHP_WEB=	yes

OPTIONS_DEFINE=	MYSQLI MYSQL PGSQL
OPTIONS_DEFAULT=MYSQLI

MYSQLI_DESC=	MySQL Improved Extension database

NO_BUILD=	yes
DOCS=		CHANGELOG.txt INSTALL.txt LICENSE.txt MAINTAINERS.txt \
		UPGRADE.txt INSTALL.mysql.txt INSTALL.pgsql.txt \
		COPYRIGHT.txt
SUB_FILES+=	pkg-message
PKGMESSAGE=	${WRKDIR}/pkg-message

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MMYSQL}
USE_PHP+=	mysql
.endif
.if ${PORT_OPTIONS:MMYSQLI}
USE_PHP+=	mysqli
.endif
.if ${PORT_OPTIONS:MPGSQL}
RUN_DEPENDS+=	${LOCALBASE}/share/pear/DB.php:${PORTSDIR}/databases/pear-DB
USE_PHP+=	pgsql
.endif

do-install:
	${MKDIR} ${DRUPAL_DIR}
	${CP} ${WRKSRC}/.htaccess ${DRUPAL_DIR}
	${CP} ${WRKSRC}/cron.php ${DRUPAL_DIR}
	${CP} -R ${WRKSRC}/includes ${DRUPAL_DIR}
	${CP} ${WRKSRC}/index.php ${DRUPAL_DIR}
	${CP} ${WRKSRC}/install.php ${DRUPAL_DIR}
	${CP} -R ${WRKSRC}/misc ${DRUPAL_DIR}
	${CP} -R ${WRKSRC}/modules ${DRUPAL_DIR}
	${CP} -R ${WRKSRC}/profiles ${DRUPAL_DIR}
	${CP} ${WRKSRC}/robots.txt ${DRUPAL_DIR}
	${CP} -R ${WRKSRC}/scripts ${DRUPAL_DIR}
	${MKDIR} ${DRUPAL_DIR}/sites/all
	${CP} ${WRKSRC}/sites/all/README.txt ${DRUPAL_DIR}/sites/all/
	${MKDIR} ${DRUPAL_DIR}/sites/default
	${CP} ${WRKSRC}/sites/default/default.settings.php ${DRUPAL_DIR}/sites/default/default.settings.php-dist
	@if [ ! -f ${DRUPAL_DIR}/sites/default/default.settings.php ]; then \
		${CP} -p ${DRUPAL_DIR}/sites/default/default.settings.php-dist ${DRUPAL_DIR}/sites/default/default.settings.php ; \
	fi
	${CP} -R ${WRKSRC}/themes ${DRUPAL_DIR}
	${CP} ${WRKSRC}/update.php ${DRUPAL_DIR}
	${CP} ${WRKSRC}/xmlrpc.php ${DRUPAL_DIR}
	${MKDIR} ${DRUPAL_DIR}/sites/all/modules ${DRUPAL_DIR}/sites/all/themes
	${TOUCH} ${DRUPAL_DIR}/sites/all/modules/.keepme ${DRUPAL_DIR}/sites/all/themes/.keepme
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${CP} ${DOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
.endif
	${CHOWN} -R ${WWWOWN}:${WWWGRP} ${DRUPAL_DIR}

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
