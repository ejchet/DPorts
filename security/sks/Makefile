# $FreeBSD: security/sks/Makefile 324689 2013-08-14 08:32:53Z johans $

PORTNAME=	sks
PORTVERSION=	1.1.4
CATEGORIES=	security
MASTER_SITES=	http://cdn.bitbucket.org/skskeyserver/sks-keyserver/downloads/
EXTRACT_SUFX=	.tgz

MAINTAINER=	johans@FreeBSD.org
COMMENT=	Synchronizing Key Server, a fast OpenPGP keyserver

PROJECTHOST=	sks-keyserver

USE_OCAML=	yes
USE_BDB=	5
USES=		perl5
USE_PERL5=	build
MAKE_JOBS_UNSAFE=yes

USE_GMAKE=	yes
MAKE_ENV=	BDBINCLUDE="-I${BDB_INCLUDE_DIR}" \
		BDBLIB="-L${BDB_LIB_DIR}" \
		LIBDB="-l${BDB_LIB_NAME}" \
		MANDIR="${MANPREFIX}/man"

SUB_FILES=	pkg-message
PLIST_FILES=	bin/sks bin/sks_add_mail bin/sks_build.sh
MAN8=		sks.8
MANCOMPRESSED=	yes
PORTDOCS=	BUGS README.md TODO UPGRADING

post-extract:
	@: > ${WRKSRC}/Makefile.local
	@${REINPLACE_CMD} 's/-ccopt -pg //' ${WRKSRC}/Makefile
	@cd ${WRKSRC} && ${RM} -f .depend

pre-build:
	@cd ${WRKSRC} && test -f .depend || ${GMAKE} dep

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
