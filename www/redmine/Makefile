# Created by: Bernhard Froehlich <decke@bluelife.at>
# $FreeBSD: www/redmine/Makefile 323610 2013-07-24 16:38:56Z zi $

PORTNAME=	redmine
PORTVERSION=	2.3.2
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_RUBYFORGE}
MASTER_SITE_SUBDIR=	${PORTNAME}

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	A flexible project management web application

RUN_DEPENDS=	rubygem-rubytree>=0:${PORTSDIR}/devel/rubygem-rubytree \
		rubygem-i18n>=0.4.2:${PORTSDIR}/devel/rubygem-i18n \
		rubygem-rake>=0:${PORTSDIR}/devel/rubygem-rake \
		rubygem-bundler>=0:${PORTSDIR}/sysutils/rubygem-bundler \
		rubygem-rails>=3.2.13:${PORTSDIR}/www/rubygem-rails \
		rubygem-rack-openid>=0:${PORTSDIR}/www/rubygem-rack-openid \
		rubygem-coderay>=1.0.9:${PORTSDIR}/textproc/rubygem-coderay \
		rubygem-fastercsv>=1.5.0:${PORTSDIR}/devel/rubygem-fastercsv \
		rubygem-builder>=3.0.0:${PORTSDIR}/devel/rubygem-builder

USE_RUBY=	yes
USE_RUBY_FEATURES=	iconv
USE_RAKE=	yes
NO_BUILD=	yes
SUB_LIST+=	RUBY_NAME=${RUBY_NAME}

OPTIONS_DEFINE=	MYSQL POSTGRESQL RMAGIC WWWSERVER LDAP
OPTIONS_DEFAULT=MYSQL            RMAGIC WWWSERVER THIN
OPTIONS_SINGLE=	WWWSERVER
OPTIONS_SINGLE_WWWSERVER=	THIN PASSENGER
POSTGRESQL_DESC=Enable PostgreSQL support
RMAGIC_DESC=	Enable Gantt charts support
THIN_DESC=	Use Thin WEB server
PASSENGER_DESC=	Use Apache/Nginx WEB server
NO_OPTIONS_SORT=yes

.include <bsd.port.pre.mk>

.if ${PORT_OPTIONS:MMYSQL}
RUN_DEPENDS+=	rubygem-mysql>=2.8.1:${PORTSDIR}/databases/rubygem-mysql
.endif

.if ${PORT_OPTIONS:MPOSTGRESQL}
RUN_DEPENDS+=	rubygem-pg>=0:${PORTSDIR}/databases/rubygem-pg
.endif

.if ${PORT_OPTIONS:MRMAGIC}
RUN_DEPENDS+=	rubygem-rmagick>=2.0.0:${PORTSDIR}/graphics/rubygem-rmagick
.endif

.if ${PORT_OPTIONS:MWWWSERVER}
.if ${PORT_OPTIONS:MTHIN}
USERS=		${WWWOWN}
GROUPS=		${WWWGRP}
RUN_DEPENDS+=	thin:${PORTSDIR}/www/rubygem-thin
USE_RC_SUBR=	redmine
SUB_LIST+=	WWWOWN=${WWWOWN} WWWGRP=${WWWGRP}
.endif

.if ${PORT_OPTIONS:MPASSENGER}
RUN_DEPENDS+=	passenger-config:${PORTSDIR}/www/rubygem-passenger
.endif
.endif

.if ${PORT_OPTIONS:MLDAP}
RUN_DEPENDS+=	rubygem-net-ldap>=0.3.1:${PORTSDIR}/net/rubygem-net-ldap
.endif

post-extract:
	${MV} ${WRKSRC}/config/settings.yml ${WRKSRC}/config/settings.yml-dist

pre-install:
	${MKDIR} ${WRKSRC}/public/plugin_assets

do-install:
	${MKDIR} ${WWWDIR}
	cd ${WRKSRC} && \
	${COPYTREE_SHARE} "*" ${WWWDIR} "! ( -name *\.orig -o -name *\.bak )"
	${FIND} ${WRKSRC}/script -type f -print | ${XARGS} ${CHMOD} 755

post-install:
	if ! [ -r ${WWWDIR}/config/settings.yml ]; then			\
		${INSTALL_DATA} ${WWWDIR}/config/settings.yml-dist	\
			${WWWDIR}/config/settings.yml;			\
	fi
	for subdir in files log tmp public/plugin_assets; do \
		${CHOWN} -R :${WWWGRP} ${WWWDIR}/$$subdir; \
		${CHMOD} -R g+w ${WWWDIR}/$$subdir; \
	done
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>
