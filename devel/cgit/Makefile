# Created by: Florent Thoumie <flz@FreeBSD.org>
# $FreeBSD: devel/cgit/Makefile 321081 2013-06-16 23:14:41Z antoine $

PORTNAME=	cgit
PORTVERSION=	0.9.2
PORTREVISION=	3
CATEGORIES=	devel www
MASTER_SITES=	http://git.zx2c4.com/cgit/snapshot/:cgit \
		GOOGLE_CODE:git
DISTFILES=	cgit-${PORTVERSION}${EXTRACT_SUFX}:cgit \
		git-${GIT_VERSION}.tar.gz:git

MAINTAINER=	kevinz5000@gmail.com
COMMENT=	Fast web frontend for Git repositories

LICENSE=	GPLv2

PROJECTHOST=	git-core
GIT_VERSION=	1.8.2.3
USE_BZIP2=	yes
USE_GMAKE=	yes
USES=		iconv shebangfix
SHEBANG_FILES=	filters/html-converters/resources/markdown.pl
USE_GMAKE=	yes
USE_OPENSSL=	yes
CFLAGS+=	-I${LOCALBASE}/include
MAKE_ARGS+=	CGIT_SCRIPT_PATH=${WWWDIR} \
		CGIT_CONFIG=${PREFIX}/etc/cgitrc NO_GETTEXT=1
LDFLAGS+=	-L${LOCALBASE}/lib
MAKE_JOBS_SAFE=	yes

SUB_FILES=	pkg-message
SUB_LIST+=	PORTNAME=${PORTNAME}
PLIST_SUB+=	PORTNAME=${PORTNAME} WWWOWN=${WWWOWN} WWWGRP=${WWWGRP}

.include <bsd.port.options.mk>

post-extract:
	@${RMDIR} ${WRKSRC}/git
	@${MV} ${WRKDIR}/git-${GIT_VERSION} ${WRKSRC}/git

post-patch:
	@${REINPLACE_CMD} -e '/^CC =/d' -e '/^CFLAGS =/d' \
		-e '/^LDFLAGS =/d' ${WRKSRC}/git/Makefile \
		${WRKSRC}/git/Makefile
	@${REINPLACE_CMD} -e 's,/usr,${PREFIX},g' \
		-e 's,-Igit,-I.,g' ${WRKSRC}/Makefile

post-install:
	@${MKDIR} /var/cache/${PORTNAME}
	@${CHOWN} ${WWWOWN}:${WWWGRP} /var/cache/${PORTNAME}
	@${CAT} ${PKGMESSAGE}
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}rc.5.txt ${DOCSDIR}/
.endif

.include <bsd.port.mk>
